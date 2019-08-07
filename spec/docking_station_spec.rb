require 'dockingstation'
# In spec/docking_station_spec.rb
describe DockingStation do
  # it 'should respond to :release_bike' do
  #   expect(subject).to respond_to(:release_bike)
  # end
  it {is_expected.to respond_to :release_bike }

  it 'release working bikes' do
    bike = Bike.new
    subject.dock(bike)
    bike = subject.release_bike
    expect(bike). to be_working
  end

  it 'can dock bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject).to respond_to(:dock)
  end

  it 'can store the bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to include(bike)
  end
  it 'wont release a bike if there is not one available' do
    expect { subject.release_bike }.to raise_error("There are no bikes available")
  end
  # it 'wont accept more than one bike to dock' do
  #   subject.dock(Bike.new)
  #   expect { subject.dock(Bike.new) }.to raise_error("No more room")
  # end

  it 'wont accept more than 20 bikes' do
    20.times {subject.dock(Bike.new)}
    expect { subject.dock(Bike.new) }. to raise_error("No more room")
  end
end
