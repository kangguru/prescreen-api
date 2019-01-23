require 'activeresource'
require 'ext/active_resource/base'

module Prescreen
  module Api
    class << self
      attr_writer :configuration

      def configuration
        @configuration ||= Configuration.new
      end
      alias config configuration

      def reset
        @configuration = Configuration.new
      end

      def configure
        yield(configuration)
        Prescreen::Api::Base.configure!
      end
    end
  end
end

require 'prescreen/api/version'
require 'prescreen/api/configuration'
require 'prescreen/api/collection_json_format'
require 'prescreen/api/base'
require 'prescreen/api/application'
require 'prescreen/api/candidate'
require 'prescreen/api/job'
