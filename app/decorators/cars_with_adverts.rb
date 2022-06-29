class CarsWithAdverts
  def initialize(cars, strategy = AdvertStrategies::EveryThird)
    @cars = cars
    @strategy = strategy
  end

  def each(&block)
    return to_enum unless block_given?

    cars    = @cars.each
    adverts = advert_client.cars.each

    strategy.new(cars, adverts).run(&block)
  end

  def advert_client
    @client ||= Adverts::Client.new
  end
end

module AdvertStrategies
  class EveryThird
    def initialize(cars, adverts)
      @cars    = cars
      @adverts = adverts
      @order   = [:car, :car, :advert].cycle
    end

    def run
      car_or_advert = proc do
        case @order.next
        when :car then @cars.next
        else @adverts.next
        end
      rescue
        car_or_advert = -> { @cars.next }
        @cars.next
      end

      loop { yield car_or_advert }
    end
  end
end
