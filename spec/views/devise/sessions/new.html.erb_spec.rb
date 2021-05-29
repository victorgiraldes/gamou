require 'rails_helper'
include DeviseHelpers

describe 'devise/sessions/new' do
  before { render }
  it 'should sign_in id to be in the document ' do
    expect(rendered).to match /id="sign_in"/
  end
  it 'should have a form' do
    expect(rendered).to match /form/
  end
  it 'should have a email field' do
    expect(rendered).to match /type="email"/
  end
  it 'should have a password field' do
    expect(rendered).to match /type="password"/
  end
  it 'should have a submit field' do
    expect(rendered).to match /type="submit"/
  end
  it 'should a login link for existing users' do
    expect(rendered).to have_link('Log in')
  end
end
