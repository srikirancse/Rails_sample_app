require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to validate_presence_of(:email) }
  describe 'validators' do
    subject(:user) do
      User.new(
        name: name,
        email: email,
        password: 'foobar',
        password_confirmation: 'foobar'
      )
    end

    context 'when user name is in-valid' do
      let(:name) { ' ' }
      let(:email) { 'srikiran@xyz.com' }

      it { is_expected.not_to be_valid }
    end

    context 'when email is in-valid' do
      let(:name) { 'srikiran' }
      let(:email) { 'srikiran@xyz.' }

      it { is_expected.not_to be_valid }
    end
  end
end
