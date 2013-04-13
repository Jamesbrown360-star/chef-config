name "mysql_tipbot"
description "Role to deploy MySQL database for tip bot"
run_list(
  "recipe[mysql::server]"
)
override_attributes(
  "mysql" => {
    "server_root_password" => "12345a",
    "server_repl_password" => "12345b",
    "server_debian_password" => "12345c"
  }
)
