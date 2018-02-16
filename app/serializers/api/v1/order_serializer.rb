require 'jsonapi-serializers'
module Api
  module V1
    class OrderSerializer < BaseSerializer
      attribute :ord_internalId
      attribute :ord_shortId
      attribute :ord_status

      def id
        object.ord_id.to_s
      end

    end
  end
end
