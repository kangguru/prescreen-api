# frozen_string_literal: true

module Prescreen
  module Api
    class Base < ActiveResource::Base
      self.include_format_in_path = false
      self.format = CollectionJsonFormat

      class << self
        def configure!
          self.site = Prescreen::Api.config.end_point
          self.descendants.each do |subclass|
            subclass.headers['apikey'] = Prescreen::Api.config.api_key    
          end
        end
      end
    end
  end
end
