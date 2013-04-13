name "httpd_tipbot"
description "Role to deploy MySQL database for tip bot"
run_list(
  "recipe[apache2]",
  "recipe[apache2::mod_ssl]",
  "recipe[apache2::mod_php5]",
  "recipe[app_tipbot::httpd]"
)
override_attributes(
)
