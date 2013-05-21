name "mysql_tipbot"
description "Role to deploy MySQL database for tip bot"

run_list(
  "recipe[mysql::server]",
  "recipe[app_tipbot::firewall]"
)

override_attributes(
  "mysql" => {
    "server_root_password" => "pXEvdTNFstsyuQZb",
    "server_repl_password" => "t7cPKqSjWvAT8mqd",
    "server_debian_password" => "FpcFjQK2EjCWQNtx",
    "tunable" => {
      "wait_timeout" => "3600"
    }
  }
)
