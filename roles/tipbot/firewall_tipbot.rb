name "firewall_tipbot"
description "Role to deploy firewall rules for tip bot"
run_list(
  "recipe[firewall]",
  "recipe[app_tipbot::firewall]"
)
override_attributes(
)
