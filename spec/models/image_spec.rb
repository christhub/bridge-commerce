require 'rails_helper'

describe Image do
  it { should belong_to :post }
end
