require 'rails_helper'

describe Application do
  let(:application) { Application.new }

  describe "validations" do
    subject { application }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
  end
end

