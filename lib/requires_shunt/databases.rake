require 'active_record'

namespace :db do

  task :migrate_requires_shunt? => [:environment, :load_config] do
    pending_migrations = ActiveRecord::Migrator.new(:up, ActiveRecord::Migrator.migrations_paths).pending_migrations
    migrations_requiring_shunt = pending_migrations.select(&:shunt_required?)
  
    if migrations_requiring_shunt.any?
      puts "These pending migrations require shunt:"
      
      migrations_requiring_shunt.each do |pending_migration|
        puts '  %4d %s' % [pending_migration.version, pending_migration.name]
      end
    else
      puts "No pending migrations require shunt."
    end
  end
  
end