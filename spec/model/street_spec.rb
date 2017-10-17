require 'rails_helper'

RSpec.describe Street, :type => :model do

  let!(:street) { build(:street) }

  subject { street }

  it { should be_valid }

  context "validations" do

    it "should not be valid without name" do
      street.name = nil
      expect(street).not_to be_valid
    end

    it "should not be valid without position" do
      street.position = nil
      expect(street).not_to be_valid
    end

  end

end
