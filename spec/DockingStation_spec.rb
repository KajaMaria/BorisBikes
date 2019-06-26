require 'DockingStation'

describe DockingStation do
  it { should respond_to(:release_bike) }

  it 'release working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

it { is_expected.to respond_to(:dock).with(1).argument }
  # it 'docks bikes' do
  #   bike = subject.docking_bike
  # end
end
