# requires_shunt_

Allows you to flag your migrations as disruptive to production service. Provides a rake task to inspect if any pending migrations require shunt.

### Installation

In your Gemfile, add this line:

    gem "requires_shunt"

### Usage

To mark a migration as requiring shunt:

  class DropColumns < ActiveRecord::Migration
    requires_shunt
    
    def up
      # ...
    end
    
    def down
      # ...
    end
  end

To determine if migrations if any pending migrations require shunt:

  $ rake db:migrate_requires_shunt?
  These pending migrations require shunt:
    20121128212505 DropColumns
    
If a shunt is required, the rake task with exit with code 1.
