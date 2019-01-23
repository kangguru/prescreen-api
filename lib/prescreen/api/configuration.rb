# frozen_string_literal: true

module Prescreen
  module Api
    class Configuration
      attr_accessor :api_key

      def end_point
        "https://api.prescreenapp.io/v1/"
      end
    end
  end
end
