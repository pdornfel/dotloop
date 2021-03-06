require_relative '../../spec_helper'

RSpec.describe Dotloop::Models::Profile do
  let(:profile_id) { 1234 }
  let(:loop_) { double }
  let(:client) { double(Loop: loop_) }
  subject do
    profile = Dotloop::Models::Profile.new(profile_id: profile_id)
    profile.client = client
    profile
  end

  describe '#loops' do
    it 'should return the profiles loops' do
      expect(loop_).to receive(:all).with(profile_id: 1234).and_return(:blah)
      expect(subject.loops).to eq(:blah)
    end
  end
end
