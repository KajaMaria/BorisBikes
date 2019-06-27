require 'DockingStation'

describe DockingStation do
  it { should respond_to(:release_bike) }

  describe '#release_bike' do
    it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end

      it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
      end
    end

    describe '#dock' do
      it 'raises an error when the dock station is full' do
        expect { subject.dock(:bike) }.to raise_error 'Docking Station is full!'
      end
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
