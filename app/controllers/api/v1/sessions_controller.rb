module Api
  module V1
    class SessionsController < ActionController::Base
      protect_from_forgery with: nil
      respond_to :json

      def create
        respond_with
      end

    end
  end
end