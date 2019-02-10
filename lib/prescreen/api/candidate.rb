# frozen_string_literal: true

module Prescreen
  module Api
    class Candidate < Base
      def applications
        Prescreen::Api::Application.find(:all, params: { candidate_id: id })
      end

      class << self
        def find_by(opts = {})
          find(:all, params: opts)
        end
      end
    end
  end
end
