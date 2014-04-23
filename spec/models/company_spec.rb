require 'spec_helper'

describe Company do
  it { should have_many :accounts }
  it { should have_many :users }
  it { should validate_presence_of :name }
end
