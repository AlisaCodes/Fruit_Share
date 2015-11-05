require 'rails_helper'

describe User do
  it { should validate_presence_of :email }
  it { should have_many :preferences }
  it { should have_many :tags }
  it { should have_many :items}
  it { should have_many :posts }
  it { should have_many :comments }
end
