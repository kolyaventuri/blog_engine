require 'rails_helper'

describe Author do
  it { is_expected.to validate_presence_of :name }

  it { is_expected.to have_many :posts }
  xit { is_expected.to have_many :comments }
end
