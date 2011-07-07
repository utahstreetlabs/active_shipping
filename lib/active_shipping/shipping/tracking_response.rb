module ActiveMerchant #:nodoc:
  module Shipping
    
    class TrackingResponse < Response
      attr_reader :tracking_number # string
      attr_reader :shipment_events # array of ShipmentEvents in chronological order
      attr_reader :origin, :destination
      attr_reader :status
      attr_reader :estimated_delivery
      
      def initialize(success, message, params = {}, options = {})
        @tracking_number = options[:tracking_number]
        @shipment_events = Array(options[:shipment_events])
        @origin, @destination = options[:origin], options[:destination]
        @status = options[:status]
        @estimated_delivery = options[:estimated_delivery]
        super
      end
      
      def latest_event
        @shipment_events.last
      end
    end
    
  end
end
