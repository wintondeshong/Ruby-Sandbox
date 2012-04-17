class Menu < ActiveRecord::Base
  belongs_to :restaurant
  attr_accessible :content, :name
end
