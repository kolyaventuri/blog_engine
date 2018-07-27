require 'rails_helper'

describe Comment do
  it { is_expected.to validate_presence_of :body }

  it { is_expected.to belong_to(:post) }
  it { is_expected.to belong_to(:author) }
end
