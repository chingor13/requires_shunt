module RequiresShunt
  module Migration
    extend ActiveSupport::Concern
    
    included do
      class_attribute :shunt_required, :instance_writer => false
      self.shunt_required = false
    end
    
    module ClassMethods
      def requires_shunt
        self.shunt_required = true
      end
    end
  
  end
end