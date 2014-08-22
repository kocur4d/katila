require 'rails_helper'

describe Event do
  let(:event) { Event.new }

  subject { event }

  describe 'interface' do
    it { is_expected.to respond_to(:confirmed?) }
    it { is_expected.to respond_to(:title) }
    it { is_expected.to respond_to(:description) }
    it { is_expected.to respond_to(:invitations) }
    it { is_expected.to respond_to(:meetings) }
  end

  describe 'validations' do
    it "is invalid without the title" do
      subject.title = ""
      is_expected.not_to be_valid
    end
    it "is invalid without the description" do
      subject.description = ""
      is_expected.not_to be_valid
    end
  end
end