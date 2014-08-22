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
  end

  describe '#add_meeting' do
    it 'is expected to create new meeting for an event' do
      expect(event).to receive(:add_meeting)
      subject.add_meeting
    end
  end

  describe '#add_invitation' do
    it 'is expected to create new invitation for an event' do
      expect(event).to receive(:add_invitation)
      subject.add_invitation
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