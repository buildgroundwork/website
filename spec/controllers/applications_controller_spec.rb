require 'rails_helper'

describe ApplicationsController do
  let(:format) { :html }

  describe "#new" do
    subject { -> { get :new, format: format } }

    it_should_behave_like "an action that returns", :html
    it { should respond_with_template(:new) }
    it { should assign(:application) }
  end
end

