require 'rails_helper'

describe HomesController do
  describe "#show" do
    subject { -> { get :show, format: format } }
    let(:format) { :html }

    it "should render the show template" do
      expect(subject.call).to render_template(:show)
    end
  end
end

