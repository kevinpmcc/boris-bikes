require "bike"

describe Bike do
  
  describe '#working' do 
    it { is_expected.to respond_to :working }
 

   it 'when a bike is broken it returns false' do
     subject.broken
     expect(subject.working).to eq false
   end
  end
end
