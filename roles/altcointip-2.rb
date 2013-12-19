name 'altcointip-2'
description 'Role to set up additional altcointip host for coin daemons'

default_attributes(
  :altcointip => {
    # Use this section to control cryptocoin installation
    # as well as add cryptocoins not defined in the cookbook
    # Attributes are defined in altcointip cookbook
    :cryptocoins => {
      :ixcoin => {
        :enabled => true,
        :group => 'ixcoin',
        :extra_config => { :rpcallowip => '10.*' }
      },
      :i0coin => {
        :enabled => true,
        :group => 'i0coin',
        :extra_config => { :rpcallowip => '10.*' }
      },
      :bbqcoin => {
        :enabled => true,
        :group => 'bbqcoin',
        :extra_config => { :rpcallowip => '10.*' }
      },
      :digitalcoin => {
        :enabled => true,
        :group => 'digitalcoin',
        :extra_config => { :rpcallowip => '10.*' }
      },
      :securecoin => {
        :enabled => true,
        :group => 'securecoin',
        :extra_config => { :rpcallowip => '10.*' }
      },
      :stablecoin => {
        :enabled => true,
        :group => 'stablecoin',
        :extra_config => { :rpcallowip => '10.*' }
      },
      :infinitecoin => {
        :enabled => true,
        :group => 'infinitecoin',
        :extra_config => { :rpcallowip => '10.*' }
      },
      :mincoin => {
        :enabled => true,
        :group => 'mincoin',
        :extra_config => { :rpcallowip => '10.*' }
      },
      :quarkcoin => {
        :enabled => true,
        :group => 'quarkcoin',
        :extra_config => { :rpcallowip => '10.*' }
      },
      :zetacoin => {
        :enabled => true,
        :group => 'zetacoin',
        :extra_config => { :rpcallowip => '10.*' }
      }
    }
  }
)

run_list(
  'recipe[altcointip::coins]'
)
