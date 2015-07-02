require 'rails_helper'

describe Message do
  it {should validate_presence_of :body }
  it {should validate_presence_of :phone }
  it {should belong_to :user}
  it {should belong_to :comment}
end
