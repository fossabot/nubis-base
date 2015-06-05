# Change Log

## [Unreleased](https://github.com/nubisproject/nubis-base/tree/HEAD)

[Full Changelog](https://github.com/nubisproject/nubis-base/compare/v0.165...HEAD)

**Implemented enhancements:**

- Merge nubis-puppet in [\#101](https://github.com/Nubisproject/nubis-base/issues/101)

- Disable the creation of /etc/nubis-release [\#81](https://github.com/Nubisproject/nubis-base/issues/81)

**Fixed bugs:**

- Amazon linux doesn't work [\#84](https://github.com/Nubisproject/nubis-base/issues/84)

**Closed issues:**

- upstart gives up on confd [\#94](https://github.com/Nubisproject/nubis-base/issues/94)

- SPAM [\#91](https://github.com/Nubisproject/nubis-base/issues/91)

- Need to integrate envconsul in the base image [\#66](https://github.com/Nubisproject/nubis-base/issues/66)

- Move our nubis-puppet stuff to /etc/puppet/modules so they are in a default [\#65](https://github.com/Nubisproject/nubis-base/issues/65)

- Make AMIs public by default once we are happy with our state [\#53](https://github.com/Nubisproject/nubis-base/issues/53)

- Build vagrant images for local development in addition to deployable AMIs [\#39](https://github.com/Nubisproject/nubis-base/issues/39)

- We need a tool to drive packer and publish AMIs \(and possibly other outputs\) into Consul [\#32](https://github.com/Nubisproject/nubis-base/issues/32)

- Need to integrate consul-template in the base images [\#11](https://github.com/Nubisproject/nubis-base/issues/11)

**Merged pull requests:**

- Add ElasticSearch [\#108](https://github.com/Nubisproject/nubis-base/pull/108) ([gozer](https://github.com/gozer))

- reorder [\#107](https://github.com/Nubisproject/nubis-base/pull/107) ([gozer](https://github.com/gozer))

- Upgrade puppet modules: \(fixes nubisproject/nubis-puppet \#41\) [\#106](https://github.com/Nubisproject/nubis-base/pull/106) ([gozer](https://github.com/gozer))

- Move nubis-puppet into nubis-base, closes \#101 [\#105](https://github.com/Nubisproject/nubis-base/pull/105) ([gozer](https://github.com/gozer))

- upgrade confd to 0.9.0 for issue \#100 [\#104](https://github.com/Nubisproject/nubis-base/pull/104) ([gozer](https://github.com/gozer))

- Include MIG in the base imge [\#103](https://github.com/Nubisproject/nubis-base/pull/103) ([gozer](https://github.com/gozer))

- Upgrade consul to 0.5.2 [\#102](https://github.com/Nubisproject/nubis-base/pull/102) ([gozer](https://github.com/gozer))

- Fix bootup auto-discovery [\#99](https://github.com/Nubisproject/nubis-base/pull/99) ([gozer](https://github.com/gozer))

- Fix broken logic in bootup NUBIS\_DOMAIN handling, it was always defaulting [\#98](https://github.com/Nubisproject/nubis-base/pull/98) ([gozer](https://github.com/gozer))

- version bump [\#97](https://github.com/Nubisproject/nubis-base/pull/97) ([gozer](https://github.com/gozer))

- Just to be tidy, perform a full Consul nuke and restart after bootstraping it [\#96](https://github.com/Nubisproject/nubis-base/pull/96) ([gozer](https://github.com/gozer))

- Add consul-based auto-discovery-bootstrap juju. [\#95](https://github.com/Nubisproject/nubis-base/pull/95) ([gozer](https://github.com/gozer))

- Addressing https://github.com/Nubisproject/nubis-base/issues/81 [\#93](https://github.com/Nubisproject/nubis-base/pull/93) ([bhourigan](https://github.com/bhourigan))

- include gcc [\#90](https://github.com/Nubisproject/nubis-base/pull/90) ([gozer](https://github.com/gozer))

- Fix ruby-dev name picking on Debian vs RH distros [\#89](https://github.com/Nubisproject/nubis-base/pull/89) ([gozer](https://github.com/gozer))

- Solving issue 84 [\#88](https://github.com/Nubisproject/nubis-base/pull/88) ([bhourigan](https://github.com/bhourigan))

- add ec2-metadata to forwarded logs [\#87](https://github.com/Nubisproject/nubis-base/pull/87) ([gozer](https://github.com/gozer))

- add missing dependency for the EC2 fluentd plugin [\#86](https://github.com/Nubisproject/nubis-base/pull/86) ([gozer](https://github.com/gozer))

- All forwarded fluentd logs need to start with forward. [\#85](https://github.com/Nubisproject/nubis-base/pull/85) ([gozer](https://github.com/gozer))

- one more debgging bit [\#83](https://github.com/Nubisproject/nubis-base/pull/83) ([gozer](https://github.com/gozer))

- more verbose startup [\#82](https://github.com/Nubisproject/nubis-base/pull/82) ([gozer](https://github.com/gozer))

- Revert "Revert "disable amazon-instance-ubuntu for now, ec2-upload-bundle is borked with IAM roles"" [\#80](https://github.com/Nubisproject/nubis-base/pull/80) ([gozer](https://github.com/gozer))

- Datadog integration with Consul [\#79](https://github.com/Nubisproject/nubis-base/pull/79) ([gozer](https://github.com/gozer))

- Revert "disable amazon-instance-ubuntu for now, ec2-upload-bundle is bor... [\#78](https://github.com/Nubisproject/nubis-base/pull/78) ([bhourigan](https://github.com/bhourigan))

- disable amazon-instance-ubuntu for now, ec2-upload-bundle is borked with IAM roles [\#77](https://github.com/Nubisproject/nubis-base/pull/77) ([gozer](https://github.com/gozer))

- After battling the real issue behind the dnsmasq race-conditon, finally fixed it. [\#76](https://github.com/Nubisproject/nubis-base/pull/76) ([gozer](https://github.com/gozer))

- Initial stub install of the datadog agent, still missing the secret bits [\#75](https://github.com/Nubisproject/nubis-base/pull/75) ([gozer](https://github.com/gozer))

- Make Consul more aggressive about trying to join the cluster [\#74](https://github.com/Nubisproject/nubis-base/pull/74) ([gozer](https://github.com/gozer))

- fix shell munging of user-data [\#73](https://github.com/Nubisproject/nubis-base/pull/73) ([gozer](https://github.com/gozer))

- Update to Consul 0.5.0 with support for TLS [\#72](https://github.com/Nubisproject/nubis-base/pull/72) ([gozer](https://github.com/gozer))

- bump [\#70](https://github.com/Nubisproject/nubis-base/pull/70) ([gozer](https://github.com/gozer))

- Fix typo in JSON [\#69](https://github.com/Nubisproject/nubis-base/pull/69) ([gozer](https://github.com/gozer))

- Addressing https://github.com/Nubisproject/nubis-base/issues/65 [\#68](https://github.com/Nubisproject/nubis-base/pull/68) ([bhourigan](https://github.com/bhourigan))

- add support for Consul bootstrap via user-data [\#64](https://github.com/Nubisproject/nubis-base/pull/64) ([gozer](https://github.com/gozer))

- use nubis::discovery::check as a basic liveness check [\#61](https://github.com/Nubisproject/nubis-base/pull/61) ([gozer](https://github.com/gozer))

- Add a simple consul node liveness check, a ping for google.com \(temoprary\) [\#60](https://github.com/Nubisproject/nubis-base/pull/60) ([gozer](https://github.com/gozer))

- Changing nubis/packer to nubis/builder, and fixing instance-store builds [\#59](https://github.com/Nubisproject/nubis-base/pull/59) ([bhourigan](https://github.com/bhourigan))

- updated to 2.26 [\#58](https://github.com/Nubisproject/nubis-base/pull/58) ([gozer](https://github.com/gozer))

- fix ordering issue [\#57](https://github.com/Nubisproject/nubis-base/pull/57) ([gozer](https://github.com/gozer))

- puppet-lint [\#56](https://github.com/Nubisproject/nubis-base/pull/56) ([gozer](https://github.com/gozer))

- Nubis builder converstion [\#55](https://github.com/Nubisproject/nubis-base/pull/55) ([bhourigan](https://github.com/bhourigan))

- Fixing a bug in AMI namespace collision [\#54](https://github.com/Nubisproject/nubis-base/pull/54) ([bhourigan](https://github.com/bhourigan))

- Incorporating improvements as discussed earlier today [\#52](https://github.com/Nubisproject/nubis-base/pull/52) ([bhourigan](https://github.com/bhourigan))

- Numerous bug fixes [\#51](https://github.com/Nubisproject/nubis-base/pull/51) ([bhourigan](https://github.com/bhourigan))

- Added automatic base AMI discovery, changed make target names, augmented README.md [\#50](https://github.com/Nubisproject/nubis-base/pull/50) ([bhourigan](https://github.com/bhourigan))

## [v0.165](https://github.com/nubisproject/nubis-base/tree/v0.165) (2015-02-16)

**Closed issues:**

- Create an /etc/nubis-release file in the base images for release identification [\#45](https://github.com/Nubisproject/nubis-base/issues/45)

- let's be consistent and install librarian-puppet in the base image [\#35](https://github.com/Nubisproject/nubis-base/issues/35)

- Need to look into building a base image from Amazon Linux AMIs as well as Ubuntu. [\#27](https://github.com/Nubisproject/nubis-base/issues/27)

- Integrate jq in the base image [\#14](https://github.com/Nubisproject/nubis-base/issues/14)

- Need to integrate a log forwarder in the base image [\#12](https://github.com/Nubisproject/nubis-base/issues/12)

- Need to get a provisionner working with amazon-instance [\#9](https://github.com/Nubisproject/nubis-base/issues/9)

- Need to cleanly solve the MTA issue in the base image \(sendmail is not great\) [\#3](https://github.com/Nubisproject/nubis-base/issues/3)

- Need to integrate confd in the base image [\#2](https://github.com/Nubisproject/nubis-base/issues/2)

- Need to integrate consul agent in the base images [\#1](https://github.com/Nubisproject/nubis-base/issues/1)

**Merged pull requests:**

- Built Nubis Base 0.165 [\#48](https://github.com/Nubisproject/nubis-base/pull/48) ([gozer](https://github.com/gozer))

- Tyop fix [\#47](https://github.com/Nubisproject/nubis-base/pull/47) ([gozer](https://github.com/gozer))

- Add a /etc/nubis-release file to images. Fixes issue \#45 [\#46](https://github.com/Nubisproject/nubis-base/pull/46) ([gozer](https://github.com/gozer))

- Made 0.163 AMIs [\#44](https://github.com/Nubisproject/nubis-base/pull/44) ([gozer](https://github.com/gozer))

- Instead of dropping a code specific /etc/rc.local, use run-parts to execute [\#43](https://github.com/Nubisproject/nubis-base/pull/43) ([gozer](https://github.com/gozer))

- Docs [\#42](https://github.com/Nubisproject/nubis-base/pull/42) ([gozer](https://github.com/gozer))

- Fixed bug in puppet package pinning and added -dist file for variables.json [\#41](https://github.com/Nubisproject/nubis-base/pull/41) ([bhourigan](https://github.com/bhourigan))

- enable a log forwarded to a Consul DNS discovery server [\#40](https://github.com/Nubisproject/nubis-base/pull/40) ([gozer](https://github.com/gozer))

- dont invoke packer by default [\#38](https://github.com/Nubisproject/nubis-base/pull/38) ([gozer](https://github.com/gozer))

- Bumping release, and changed AMI id for amazon instance store builder [\#37](https://github.com/Nubisproject/nubis-base/pull/37) ([bhourigan](https://github.com/bhourigan))

- Bumping release and removing nubis-hiera from main.json [\#36](https://github.com/Nubisproject/nubis-base/pull/36) ([bhourigan](https://github.com/bhourigan))

- Updating AMI ID to Ubuntu utopic 14.10, released 20141204 [\#34](https://github.com/Nubisproject/nubis-base/pull/34) ([bhourigan](https://github.com/bhourigan))

- switch to release.build in versionning [\#33](https://github.com/Nubisproject/nubis-base/pull/33) ([gozer](https://github.com/gozer))

- Revert "use jq to manage the release.json file" [\#31](https://github.com/Nubisproject/nubis-base/pull/31) ([gozer](https://github.com/gozer))

- Install jq, a cool JSON cli query tool in the base image. [\#30](https://github.com/Nubisproject/nubis-base/pull/30) ([gozer](https://github.com/gozer))

- Silence the tar job a little [\#29](https://github.com/Nubisproject/nubis-base/pull/29) ([gozer](https://github.com/gozer))

- Include DNSMasq in the base image [\#28](https://github.com/Nubisproject/nubis-base/pull/28) ([gozer](https://github.com/gozer))

- bump version [\#26](https://github.com/Nubisproject/nubis-base/pull/26) ([gozer](https://github.com/gozer))

- Just some cleaning ups [\#25](https://github.com/Nubisproject/nubis-base/pull/25) ([gozer](https://github.com/gozer))

- Finish up confd integration. [\#24](https://github.com/Nubisproject/nubis-base/pull/24) ([gozer](https://github.com/gozer))

- move terraform semples under nubis/ [\#23](https://github.com/Nubisproject/nubis-base/pull/23) ([gozer](https://github.com/gozer))

- move base puppet manifests in tree [\#22](https://github.com/Nubisproject/nubis-base/pull/22) ([gozer](https://github.com/gozer))

- use instance-id for node name [\#21](https://github.com/Nubisproject/nubis-base/pull/21) ([gozer](https://github.com/gozer))

- Documenting release.sh [\#20](https://github.com/Nubisproject/nubis-base/pull/20) ([bhourigan](https://github.com/bhourigan))

- add a simple terraform template to just launch one base image with consul lookups [\#19](https://github.com/Nubisproject/nubis-base/pull/19) ([gozer](https://github.com/gozer))

- Add consul auto-discovery in packer template. Needs to move into puppet eventually [\#18](https://github.com/Nubisproject/nubis-base/pull/18) ([gozer](https://github.com/gozer))

- Convert base to use puppet-librarian itself too to pull in nubis-puppet [\#17](https://github.com/Nubisproject/nubis-base/pull/17) ([gozer](https://github.com/gozer))

- Adding back manifest\_file until patch is accepted upstream [\#16](https://github.com/Nubisproject/nubis-base/pull/16) ([bhourigan](https://github.com/bhourigan))

- add support for IAM instance profiles [\#15](https://github.com/Nubisproject/nubis-base/pull/15) ([gozer](https://github.com/gozer))

- see commits [\#13](https://github.com/Nubisproject/nubis-base/pull/13) ([bhourigan](https://github.com/bhourigan))

- Adding MPL2 License [\#8](https://github.com/Nubisproject/nubis-base/pull/8) ([tinnightcap](https://github.com/tinnightcap))

- Initial commit of updated main.json and bootstrap script which installs ... [\#7](https://github.com/Nubisproject/nubis-base/pull/7) ([bhourigan](https://github.com/bhourigan))

- add bare-bones registry [\#6](https://github.com/Nubisproject/nubis-base/pull/6) ([gozer](https://github.com/gozer))

- cleanup and doc [\#5](https://github.com/Nubisproject/nubis-base/pull/5) ([gozer](https://github.com/gozer))

- Base import [\#4](https://github.com/Nubisproject/nubis-base/pull/4) ([gozer](https://github.com/gozer))



\* *This Change Log was automatically generated by [github_changelog_generator](https://github.com/skywinder/Github-Changelog-Generator)*