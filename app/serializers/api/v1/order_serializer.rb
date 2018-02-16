require 'jsonapi-serializers'
module Api
  module V1
    class OrderSerializer < BaseSerializer
      attribute :ord_internalId
      attribute :ord_shortId
      attribute :ord_status

      has_many :specimens
      has_one :issuer
      has_one :objekt

      def id
        object.ord_id.to_s
      end

    end
  end
end
