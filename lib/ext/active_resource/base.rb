# frozen_string_literal: true

module ActiveResource
  class Base
    class << self
      def collection_name
        @collection_name ||= element_name
      end
    end
  end
end
