require 'plane'

# When we create a new plane, it should have a "flying" status, thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane in question should have its status changed to "landed"
#
# When the plane takes of from the airport, the plane's status should become "flying"


describe Plane do
 
  let(:plane) { Plane.new }

  it 'is flying when created' do
  	expect(plane).to be_flying
  end

  it 'can take off' do
  	allow(plane).to receive(:take_off!)
  	plane.take_off!
  end
  
  it 'has a flying status after taking off' do
  	allow(plane).to receive(:take_off!)
  	plane.take_off!
  	expect(plane).to be_flying
	end
  
  xit 'changes its status to flying after taking of' do
  end
end
 
# grand final
# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!
describe "The grand finale (last spec)" do
  xit 'all planes can land and all planes can take off' do
  end
end