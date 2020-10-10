module Api
  module V1
    class IslandController < ApplicationController
      def index
        @islands = Island.all
      end
    end
  end
end