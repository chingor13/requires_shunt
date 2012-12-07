require 'requires_shunt'
require 'rails'

module RequiresShunt
  class Railtie < Rails::Railtie

    rake_tasks do
      load "requires_shunt/databases.rake"
    end

    initializer "requires_shunt.initialize" do
      ActiveSupport.on_load(:active_record) do
        ActiveRecord::Migration.send(:include, RequiresShunt::Migration)
        ActiveRecord::MigrationProxy.send(:include, RequiresShunt::MigrationProxy)
      end
    end
    
  end
end
