name "ruby_tipbot"
description "Role to deploy ruby language and gems for tip bot"
run_list(
  "recipe[ruby]",
  "recipe[app_tipbot::ruby]"
)
override_attributes(
  :languages => {
    :ruby => {
      :default_version => "1.9.1"
    }
  }
)
