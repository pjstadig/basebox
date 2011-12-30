require File.dirname(__FILE__) + "/../.common/session.rb"

UBUNTU_SESSION =
  COMMON_SESSION.merge({ :boot_cmd_sequence =>
                         [
                          "<Esc>",
                          "<Esc>",
                          "<Enter>",
                          "/install/vmlinuz" ,
                          " auto",
                          " console-setup/ask_detect=false",
                          " console-setup/layoutcode=us",
                          " console-setup/variantcode=dvorak",
                          " console-setup/modelcode=pc105",
                          # Ubuntu 11.10 changed the below configs to
                          # keyboard-configuration, it is harmless to keep both
                          # sets of params
                          " keyboard-configuration/layoutcode=us",
                          " keyboard-configuration/variantcode=dvorak",
                          " keyboard-configuration/modelcode=pc105",
                          " debconf/frontend=noninteractive",
                          " debian-installer=en_US",
                          " fb=false",
                          " initrd=/install/initrd.gz",
                          " kbd-chooser/method=us",
                          " locale=en_US",
                          " netcfg/get_domain=stadig.name",
                          " netcfg/get_hostname=vagrant",
                          " noapic" ,
                          " preseed/url=http://%IP%:%PORT%/preseed.cfg",
                          " -- ",
                          "<Enter>"
                         ],
                         :os_type_id => 'Ubuntu_64',
                         :postinstall_files => [ "update.sh",
                                                 "vagrant.sh",
                                                 "networking.sh",
                                                 "sudoers.sh",
                                                 "cleanup.sh",
                                                 "minimize.sh" ],
                         :kickstart_file => "preseed.cfg",
                         :shutdown_cmd => "shutdown -P now" })
