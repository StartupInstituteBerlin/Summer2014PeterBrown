require 'spec_helper'

describe Owner do
  before { @owner = Owner.new(email: "Owner@example.com") }

  subject { @owner }
	
	it { should respond_to(:email) }

end

