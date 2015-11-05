require 'rails_helper'

  describe Item do
    it { should validate_presence_of :name }
    it { should validate_presence_of :quantity }
    it { should validate_presence_of :description }
    it { should belong_to :user}
    it { should have_and_belong_to_many :tags }
  end
