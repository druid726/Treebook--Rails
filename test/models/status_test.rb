require 'test_helper'

class StatusTest < ActiveSupport::TestCase
	test "that a status requires content" do
		status = Status.new
		assert !status.save
		assert !status.errors[:content].empty?
	end

	test "that a status's content is at least 2 letters" do
		status = Status.new
		status.content = "H"
		assert !status.save
		assert !status.errors[:content].empty?
	end
end
