name 'electrum-server'
description 'Role to set up electrum-server, Reddit altcoin tip bot'

default_attributes(
  :altcointip => {
    # Use this section to control cryptocoin installation
    # as well as add cryptocoins not defined in the cookbook
    # Attributes are defined in altcointip cookbook
    :cryptocoins => {
      :ppcoin => {
        :enabled => true
      }
    }
  }
)

run_list(
  'recipe[altcointip::coins]'
)
