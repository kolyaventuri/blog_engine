require 'rails_helper'

describe 'As a user visiting the new posts page' do
  scenario 'can create a new post' do
    binding.pry
    mock_auth_hash
    visit new_post_path

    fill_in 'post[title]', with: 'Test'
    fill_in 'post[body]', with: 'Body'

    click_on 'Create Post'


    expect(Post.count).to be(1)
    expect(Post.first.title).to eq('Test')
    expect(Post.first.body).to eq('Body')

    expect(current_path).to eq(post_path(1))
  end
end
