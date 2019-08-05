require 'dockingstation'

# describe DockingStation do
#   it 'can release bike' do
#     dockingstation = DockingStation.new
#     expect(dockingstation.release_bike).to respond_to (release_bike)
#   end
# on-liner syntzx
describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

end
