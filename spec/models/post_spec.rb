require 'rails_helper'

describe Post, type: :model do
  it { is_expected.to validate_presence_of :title }
  xit { is_expected.to validate_presence_of :author }

  xit { is_expected.to have_one :author }
  xit { is_expected.to have_many :comments}
end
