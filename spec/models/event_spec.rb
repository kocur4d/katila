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
end