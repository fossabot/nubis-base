#!/bin/bash
set -x

PACKER_VERSION="0.12.1"
NUBIS_BUILDER_VERSION="v1.3.0"
AWSCLI_VERSION="1.11.36"

if [ -z "$AWS_ACCESS_KEY_ID" ] || [ -z "$AWS_SECRET_ACCESS_KEY" ]; then
  echo "Please set AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY"
  exit 1
fi

if [ "$BUNDLE_GEMFILE" == "" ]; then
  BUNDLE_GEMFILE="$(cd "$(dirname "$0")" && pwd)/Gemfile"
  export BUNDLE_GEMFILE
  bundle install --jobs=3 --retry=3 --path="${BUNDLE_PATH:-vendor/bundle}"
fi

export PATH=$PATH:$HOME/.local/bin:$HOME/nubis-builder/bin

if [ "$(aws --version 2>&1 | perl -ne'print $1 if m{aws-cli\/([0-9.]+)}')" != "$AWSCLI_VERSION" ]; then
  pip install --user awscli==$AWSCLI_VERSION
fi

if [ "$(packer --version 2>/dev/null)" != "$PACKER_VERSION" ]; then
  wget -O /tmp/packer.zip "https://releases.hashicorp.com/packer/$PACKER_VERSION/packer_${PACKER_VERSION}_linux_amd64.zip"
  cd "$HOME/bin" && unzip /tmp/packer.zip
fi

if [ ! -d "$HOME/nubis-builder" ]; then
  git clone https://github.com/nubisproject/nubis-builder.git "$HOME/nubis-builder"
fi

if [ "$(git -C "$HOME/nubis-builder" describe)" != "$NUBIS_BUILDER_VERSION" ]; then
  git -C "$HOME/nubis-builder" pull master
  git -C "$HOME/nubis-builder" fetch --tags
  git -C "$HOME/nubis-builder" checkout "$NUBIS_BUILDER_VERSION"
fi

cat <<EOF > "$HOME/nubis-builder/secrets/variables.json"
{
  "variables": {
    "aws_region": "${AWS_REGION:-us-west-2}",
    "ami_regions": "ap-northeast-1,ap-northeast-2,ap-southeast-1,ap-southeast-2,eu-central-1,eu-west-1,sa-east-1,us-east-1,us-west-1,us-west-2"
  }
}
EOF

aws --version
packer --version
nubis-builder --version

#Kick the build
bundle exec nubis-builder build

exit 0
