require 'rails_helper'

RSpec.describe Edition, :type => :model do

  let!(:edition) { build(:edition) }

  subject { edition }

  it { should be_valid }

  context "validations" do

    it "should not be valid without name" do
      edition.name = nil
      expect(edition).not_to be_valid
    end

  end

end
