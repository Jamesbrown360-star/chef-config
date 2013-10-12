name 'nodejs-test'
description 'Role to install nodejs and stuff'

default_attributes(
'nodejs' => {
  'version' => '0.10.15'
}
)

run_list(
  'recipe[nodejs]',
  'recipe[nodejs::npm]'
)
