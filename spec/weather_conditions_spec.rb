# Include a weather condition using a module.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy, the plane can not take off and must remain in the airport.
    # 
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport

require 'weather_conditions'
require 'airport'

class WeatherConditionsTest; include WeatherConditions; end

    describe WeatherConditionsTest do

      let(:weather) { WeatherConditionsTest.new }
      let(:plane)   { double :plane             }    

    context 'weather conditions' do

      before :each do 
        WeatherConditionsTest.any_instance.stub(:stormy?).and_return true
      end

      it 'a plane cannot take off when there is a storm brewing' do
        weather.god_mode!
        expect{weather.take_off(plane)}.to raise_error
      end
      
      it 'a plane cannot land in the middle of a storm' do
        weather.god_mode!
        expect{weather.land(plane)}.to raise_error
      end

    end
   
end

