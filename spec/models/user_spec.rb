require 'rails_helper'

describe User do
  it {should validate_presence_of :email }
  it {should have_many :technologies}
  it {should have_many :comments}
  it {should have_many :projects}
end
