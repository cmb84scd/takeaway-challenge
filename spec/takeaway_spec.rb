require 'takeaway'

describe Takeaway do
  describe 'view_menu' do
    it 'prints a menu' do
      expect(subject.view_menu).to eq({})
    end
  end
end
