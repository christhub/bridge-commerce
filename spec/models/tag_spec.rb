require 'rails_helper'

describe Tag do
  it { should validate_presence_of :title }
  it { should belong_to :post }
end
