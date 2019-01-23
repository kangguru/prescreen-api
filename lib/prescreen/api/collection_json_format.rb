# frozen_string_literal: true

module Prescreen
  module Api
    module CollectionJsonFormat
      include ActiveResource::Formats::JsonFormat

      extend self

      def decode(json)
        decoded_json = ActiveSupport::JSON.decode(json)
        decoded_json['data'].presence || decoded_json
      end
    end
  end
end
