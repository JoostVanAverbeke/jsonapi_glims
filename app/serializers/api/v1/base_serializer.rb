module Api
  module V1
    class BaseSerializer
      include JSONAPI::Serializer

      def base_url
        "#{super}/api/v1"
      end
    end
  end
end
