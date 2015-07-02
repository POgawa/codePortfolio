class Message < ActiveRecord::Base

  validates_presence_of :body
  validates_presence_of :phone
  belongs_to :user
  belongs_to :comment


end
