# frozen_string_literal: true

module ActiveResource
  class Base
    class << self
      def collection_name
        @collection_name ||= element_name
      end
    end

    def update
      run_callbacks :update do
        connection.patch(element_path(prefix_options), encode, self.class.headers).tap do |response|
          load_attributes_from_response(response)
        end
      end
    end
  end
end
