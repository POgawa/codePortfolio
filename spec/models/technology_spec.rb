require 'rails_helper'

describe Technology do
  it {should validate_presence_of :title }
  it {should validate_presence_of :description }
  it {should belong_to :user}
  it {should have_many :projects}
end
