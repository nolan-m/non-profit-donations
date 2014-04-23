require 'spec_helper'

describe Account do
  it { should belong_to :user }
  it { should belong_to :company }
  it { should validate_presence_of :donation_amt }




end
