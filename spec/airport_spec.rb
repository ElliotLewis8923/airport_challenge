require 'airport'
 
# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport and how that is impermented.
#
# If the airport is full then no planes can land

describe Airport do
  let(:airport) { Airport.new   }
  let(:plane)   { double :plane }
  
  
  context 'taking off and landing' do

    it 'a plane can land' do
      allow(plane).to receive(:land!)
      airport.land(plane)
    end
    
    it 'a plane can take off' do
      allow(plane).to receive(:take_off!)
      plane.take_off!
      airport.take_off(plane)
    end
  
  end
  
  
    def fill(airport)
      10.times { airport.land(:plane) }
    end

    it 'can be full' do
      fill(airport)
      expect(airport).to be_full
    end

    it 'will not be full if a plane takes off' do
      fill(airport)
      expect(airport).to be_full
      airport.take_off(plane)
      expect(airport).not_to be_full
    end

    it 'can be empty' do
      expect(airport).to be_empty
    end

    it 'will not be empty if a plane is landed' do
      airport.land(plane)
      expect(airport).not_to be_empty
    end


  context 'traffic control' do
    
    it 'a plane cannot land if the airport is full' do
      plane = double (:plane)
      allow(plane).to receive(:land)
      fill(airport)
      expect(airport).to be_full
      expect{ (airport.land(plane)) }.to raise_error(RuntimeError)
    end
  
  end

end
