name 'altcointip-test'
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
        :enabled => false
      },
      :litecoin => {
        :enabled => false
      },
      :namecoin => {
        :enabled => false
      },
      :ppcoin => {
        :enabled => false
      },
      :primecoin => {
        :enabled => true
      },
      :feathercoin => {
        :enabled => true
      }
    },
    # Use this section to control cron jobs
    # Attributes are defined in altcointip cookbook
    :cron => {
      :stats => {
        :enabled => false
      },
      :backup_config => {
        :enabled => false
      },
      :backup_db => {
        :enabled => false
      },
      :backup_wallets => {
        :enabled => false
      }
    }
  }
)

run_list(
  'recipe[altcointip::default]',
  'recipe[altcointip::database]',
  'recipe[altcointip::phpmyadmin]'
)
