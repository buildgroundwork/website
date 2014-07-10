require 'rails_helper'

describe ApplicationsController do
  let(:format) { :html }

  describe "#new" do
    subject { -> { get :new, format: format } }

    it_should_behave_like "an action that returns", :html
    it { should respond_with_template(:new) }
    it { should assign(:application) }
  end

  describe "#create" do
    subject { -> { post :create, application: params, format: format } }
    let(:params) { { name: "Masha", email: "masha@example.com" } }

    it_should_behave_like "an action that returns", :html

    context "with valid parameters" do
      it { should change(Application, :count).by(+1) }
      it { should respond_with_redirect_to(home_path) }
    end

    context "with invalid parameters" do
      let(:params) { { foo: "bar" } }
      it { should_not change(Application, :count) }
      it { should respond_with_template(:new) }
      it { should assign(:application) }
    end
  end
end

