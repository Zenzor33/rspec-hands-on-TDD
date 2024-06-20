require 'rails_helper'

RSpec.describe Image, type: :model do
  it { should validate_presence_of(:name)}

  # Ensures that the image factory, with no traits applied, is always working
  describe 'has a valid factory' do 
    it { expect(build(:image)).to be_valid }
  end
end
