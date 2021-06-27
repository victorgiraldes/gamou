require 'rails_helper'

RSpec.describe Users::RegistrationsController, :type => :controller do
  context 'POST #users/create' do
    it 'should create a new user' do
      user = create(:user)
      expect(user.id).to equal(1)
      expect(user.email).to eq('test@user.com')
      expect(user.password).to eq('test123')
    end
  end
end
