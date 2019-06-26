require 'DockingStation'

describe DockingStation do
  it { should respond_to(:release_bike) }

  it 'release working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

it 'returns docked bike' do
  bike = Bike.new
  subject.dock(bike)
  expect(subject.bike).to eq bike
end

  # it 'docks bikes' do
  #   bike = subject.docking_bike
  # end
end
