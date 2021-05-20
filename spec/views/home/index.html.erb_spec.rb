require 'rails_helper'

RSpec.describe 'home/index.html.erb', type: :view do
  it 'Gamification heading should be in the document' do
    render

    expect(rendered).to match /Gamification.../
  end
end
