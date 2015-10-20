require 'rails_helper'

describe Tag do
  it { should validate_presence_of :title }
  it { should have_and_belong_to_many :posts }
end
