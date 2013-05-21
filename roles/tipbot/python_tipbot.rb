name "python_tipbot"
description "Role to deploy python language for tip bot"
run_list(
  "recipe[python]",
  "recipe[mysql::client]",
  "recipe[app_tipbot::python]"
)
override_attributes(
)
