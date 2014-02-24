name 'altcointip-home'
description 'Role to set up altcointip, Reddit altcoin tip bot'

default_attributes(
  # Use this section to control MySQL installation
  # Attributes are defined in mysql cookbook
  :mysql => {
    :bind_address => '127.0.0.1',
    :tunable => {
      :wait_timeout => 3600
    }
  },
  # Use this section to control phpMyAdmin installation
  # Attributes are defined in phpmyadmin cookbook
  :phpmyadmin => {
    :fpm => false,
    :version => '4.0.7',
    :checksum => ''
  },
  :altcointip => {
    # Use this section to control cryptocoin installation
    # as well as add cryptocoins not defined in the cookbook
    # Attributes are defined in altcointip cookbook
    :cryptocoins => {
      :bitcoin => {
        :enabled => true,
#        :group => 'bitcoin'
      },
      :litecoin => {
        :enabled => true,
#        :group => 'litecoin'
      },
      :namecoin => {
        :enabled => true,
#        :group => 'namecoin'
      },
      :ppcoin => {
        :enabled => true,
#        :group => 'ppcoin'
      },
      :primecoin => {
        :enabled => true,
#        :group => 'primecoin'
      },
      :megacoin => {
        :enabled => true,
#        :group => 'megacoin'
      },
      :ixcoin => {
        :enabled => true,
#        :group => 'ixcoin'
      },
      :bbqcoin => {
        :enabled => true,
#        :group => 'bbqcoin'
      },
      :digitalcoin => {
        :enabled => true,
#        :group => 'digitalcoin'
      },
      :stablecoin => {
        :enabled => true,
#        :group => 'stablecoin'
      },
      :infinitecoin => {
        :enabled => true,
#        :group => 'infinitecoin'
      },
      :mincoin => {
        :enabled => true,
#        :group => 'mincoin'
      },
      :quarkcoin => {
        :enabled => true,
#        :group => 'quarkcoin'
      },
      :zetacoin => {
        :enabled => true,
#        :group => 'zetacoin'
      }
    },
    # Use this section to control cron jobs
    # Attributes are defined in altcointip cookbook
    :cron => {
      :stats => {
        :enabled => true
      },
      :backup_config => {
        :enabled => true
      },
      :backup_db => {
        :enabled => true
      },
      :backup_wallets => {
        :enabled => true
      }
    }
  }
)

run_list(
  'recipe[altcointip::default]',
  'recipe[altcointip::coins]',
  'recipe[altcointip::database]',
  'recipe[altcointip::phpmyadmin]'
)
