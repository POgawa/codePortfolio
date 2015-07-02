class Technology < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  belongs_to :user
  has_many :projects
end
