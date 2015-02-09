# == Schema Information
#
# Table name: posts
#
#  id              :integer          not null, primary key
#  title           :text
#  submission_date :date
#  created_at      :datetime
#  updated_at      :datetime
#  period          :string
#  client_id       :integer
#  user_id         :integer
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
