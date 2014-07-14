require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase

	validates :index, :create, :edit, :update, :destroy, :new, :show_valid, :show_invalid
  # test "the truth" do
  #   assert true
  # end
end
