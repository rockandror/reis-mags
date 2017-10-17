require 'rails_helper'

RSpec.describe Gift, :type => :model do

  let!(:gift) { build(:gift) }

  subject { gift }

  it { should be_valid }

  context "validations" do

    it "should not be valid without name" do
      gift.name = nil
      expect(gift).not_to be_valid
    end

    it "should not be valid without street_number" do
      gift.street_number = nil
      expect(gift).not_to be_valid
    end

    it "should not be valid without street_id" do
      gift.street_id = nil
      expect(gift).not_to be_valid
    end


  end

end
