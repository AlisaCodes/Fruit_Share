require 'rails_helper'

  describe Comment do
    it { should validate_presence_of :body }
    it { should have_and_belong_to_many :posts }
  end
