name "app_coins"
description "Role to deploy ruby on rails app app_coins"
run_list(
  "recipe[app_coins]"
)
override_attributes(
"passenger" => {
    "install_method" => "package",
    "module_path" => "/usr/lib/apache2/modules/mod_passenger.so",
    "package" => {
        "name" => "libapache2-mod-passenger",
        "version" => "2.2.11debian-2"
    }
}
)
