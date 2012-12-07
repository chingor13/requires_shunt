module RequiresShunt
end

require 'requires_shunt/migration'
require 'requires_shunt/migration_proxy'

require 'requires_shunt/railtie' if defined?(Rails)
