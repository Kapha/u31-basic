class User < ActiveRecord::Base
  attr_accessible :firstname, :email, :sirname

  validates :firstname, presence: true
  validates :sirname, presence: true
  validates :email, presence: true
end
