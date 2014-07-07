require 'rails_helper'

describe HomesController do
  describe "#show" do
    subject { -> { get :show, format: format } }
    let(:format) { :html }

    it_should_behave_like "an action that returns", :html
    it { should respond_with_template(:show) }
  end
end

