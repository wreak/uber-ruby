module Uber
  module Partner

    class Vehicles < Base
      attr_accessor :count, :limit, :offset, :vehicles

      def vehicles=(values)
        @vehicles = values.map { |value| Uber::Partner::Vehicle.new value }
      end
    end

    class Vehicle < Base
      attr_accessor :vehicle_id, :vin, :license_plate, :make, :model, :year, :picture_url
    end

  end
end