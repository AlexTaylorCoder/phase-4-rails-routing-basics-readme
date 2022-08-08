class CheeseController < ApplicationController
    def index
        cheeses = Cheese.all 
        render json: cheeses
      end
      def summary
        "#{self.name}: $#{self.price}"
      end
      def self.expensive_cheese
        self.maximum(:price)
      end
end
