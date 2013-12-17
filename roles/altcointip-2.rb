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
        :group => 'ixcoin'
      },
      :i0coin => {
        :enabled => true,
        :group => 'i0coin'
      },
      :bbqcoin => {
        :enabled => true,
        :group => 'bbqcoin'
      },
      :digitalcoin => {
        :enabled => true,
        :group => 'digitalcoin'
      },
      :securecoin => {
        :enabled => true,
        :group => 'securecoin'
      },
      :stablecoin => {
        :enabled => false,
        :group => 'stablecoin'
      },
      :infinitecoin => {
        :enabled => true,
        :group => 'infinitecoin'
      },
      :mincoin => {
        :enabled => true,
        :group => 'mincoin'
      },
      :quarkcoin => {
        :enabled => true,
        :group => 'quarkcoin'
      },
      :zetacoin => {
        :enabled => true,
        :group => 'zetacoin'
      },
      :yacoin => {
        :enabled => true,
        :group => 'yacoin'
      }
    }
  }
)

run_list(
  'recipe[altcointip::coins]'
)
