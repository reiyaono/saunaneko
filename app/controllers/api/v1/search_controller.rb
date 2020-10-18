module Api
  module V1
    class SearchController < ApplicationController
      CONDITIONS = ['hotter', 'aufguss', 'islands', 'near', 'sightseeing', 'food']

      def result
        resource = Prefecture.joins(:saunas, :islands)
        ## boolではなく0, 1で返したほうがいいかも
        CONDITIONS.each do |condition|
          next unless params[condition] == 'true'
          resource = send(condition, resource)
        end
        @resource = resource
      end

      private

      def hotter(resource)
        resource.merge(Sauna.where('room_temperature > ?', Sauna::HOT_BORDER))
      end

      def aufguss(resource)
        resource.merge(Sauna.where(has_aufguss: true))
      end

      def islands(resource)
        resource.merge(Prefecture.joins(:islands).group('islands.prefecture_id').having('count(islands.prefecture_id) >2'))
      end

      def near(resource)
        resource.merge(Island.where(is_near_from_city: true))
      end

      def sightseeing(resource)
        resource.merge(Prefecture.where(has_sightseeing: true))
      end

      def food(resource)
        resource.merge(Prefecture.where(has_food: true))
      end
    end
  end
end