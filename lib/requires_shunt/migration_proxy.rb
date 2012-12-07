module RequiresShunt
  module MigrationProxy
    extend ActiveSupport::Concern
    
    included do
      delegate :shunt_required?, :to => :migration
    end
    
  end
end
