class User < ActiveRecord::Base
  include UserAdmin

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  extend Enumerize
  enumerize :role, in: [:owner, :admin], scope: true, predicates: true       

  validates_presence_of :email

end
