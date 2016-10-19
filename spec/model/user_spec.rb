require 'rails_helper'

RSpec.describe User, :type => :model do

  let!(:user) { build(:user) }

  subject { user }

  it { should be_valid }

  it { should enumerize(:role).in(:owner, :admin).with_predicates(true) }  

  context "validations" do

    it "should not be valid without email" do
      user.email = nil
      expect(user).not_to be_valid
    end 

  end

end