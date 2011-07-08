module ActiveMerchant #:nodoc:
  module Shipping
      
    class ShipmentEvent
      attr_reader :name, :time, :location, :message, :status
      
      def initialize(name, time, location, status=nil)
        @name, @time, @location, @status = name, time, location, status
      end
      
    end
    
  end
end
