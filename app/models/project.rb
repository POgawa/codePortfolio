class Project < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  belongs_to :user
  belongs_to :technology
end
