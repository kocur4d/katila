require 'rails_helper'

describe EventHandler do
  let(:event) { double('Event') }
  let(:eh) { EventHandler.new(event) }

  subject { eh }

  describe 'interface' do
    it { is_expected.to respond_to(:add_meeting) }
    it { is_expected.to respond_to(:add_invitation) }
    it { is_expected.to respond_to(:confirm_event) }
    it { is_expected.to respond_to(:confirmed?) }
    it { is_expected.to respond_to(:meetings) }
    it { is_expected.to respond_to(:invitations) }
  end

  describe '#add_meeting' do
    let(:params) { {} }
    it 'is expected to create new meeting for an event' do
      meetings_double = double('Meetings')
      allow(event).to receive(:meetings).and_return(meetings_double)
      expect(meetings_double).to receive(:create).with(params)
      subject.add_meeting(params)
    end
  end

  describe '#add_invitation' do
    let(:params) { {} }
    it 'is expected to create new invitation for an event' do
      invitations_double = double('Invitations')
      allow(event).to receive(:invitations).and_return(invitations_double)
      expect(invitations_double).to receive(:create).with(params)
      subject.add_invitation(params)
    end
  end

  describe '#confirm_meeting' do
    it 'is expected confirm an event' do
      allow(event).to receive(:confirmed?).and_return true
      subject.confirm_event
      expect(subject.confirmed?).to eql true
    end
  end
end