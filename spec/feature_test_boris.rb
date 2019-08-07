require './lib/dockingstation.rb'
dockingstation = DockingStation.new

20.times { dockingstation.dock(Bike.new) }

dockingstation.full?
