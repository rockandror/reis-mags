class User < ActiveRecord::Base
  include UserAdmin

  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  extend Enumerize
  enumerize :role, in: [:user, :admin], scope: true, predicates: true

  validates_presence_of :email

end
