require 'airport'
 
# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport and how that is impermented.
#
# If the airport is full then no planes can land

describe Airport do
  let(:airport) { Airport.new   }
  let(:plane)   { double (:plane), :take_off! => nil, :land! => nil  }
  
  
  context 'taking off and landing' do

    it 'a plane can land' do
      airport.land(plane)
    end
    
    it 'a plane can take off' do
      airport.take_off(plane)
    end
  
  end
  
  
    def fill(airport)
      6.times { airport.land(plane) }
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
      fill(airport)
      expect(airport).to be_full
      expect{ (airport.land(plane)) }.to raise_error(RuntimeError)
    end

  end

        # grand final
    # Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
    # Be careful of the weather, it could be stormy!
    # Check when all the planes have landed that they have the right status "landed"
    # Once all the planes are in the air again, check that they have the status of flying!
    describe "The grand finale (last spec)" do

      before :each do
      Airport.any_instance.stub(:stormy?).and_return false
      plane.stub(:flying?).and_return false
      
      it 'all planes can land and all planes can take off' do
        6.times { airport.land(plane) }
        expect(planes.each { |plane| plane.flying? }).to eq false
        plane.stub(:flying?).and_return false
        6.times { airport.take_off(plane) }
        expect(flying_planes.each { |plane| plane.flying? }).to eq true
      end

    end

  end
end




