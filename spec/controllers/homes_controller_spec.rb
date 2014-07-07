require 'rails_helper'

describe HomesController do
  describe "#show" do
    subject { -> { get :show, format: format } }

    context "with a request for HTML" do
      let(:format) { :html }

      it "should render the show template" do
        expect(subject.call).to render_template(:show)
      end
    end

    context "with a request for JSON" do
      let(:format) { :json }

      it "should return 406" do
        subject.call
        expect(response.status).to equal(406)
      end
    end
  end
end

