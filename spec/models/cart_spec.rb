require 'rails_helper'

describe Cart do

  it { should have_one :user }
  it { should have_many :posts }
end
