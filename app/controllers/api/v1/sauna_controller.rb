module Api
  module V1
    class SaunaController < ApplicationController
      def index
        @saunas = Sauna.all
      end
    end
  end
end