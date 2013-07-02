require "test_helper"
require 'carrierwave/test/matchers'

describe AvatarUploader do
  include CarrierWave::Test::Matchers

  # before do
  #   AvatarUploader.enable_processing = true
  #   @uploader = AvatarUploader.new(@user, :avatar)
  #   @uploader.store!(File.open(path_to_file))
  # end

  # after do
  #   AvatarUploader.enable_processing = false
  #   @uploader.remove!
  # end

  # describe 'the small version' do
  #   it "should scale down a landscape image to be exactly 50 by 50 pixels" do
  #     # @uploader.small.should have_dimensions(50, 50)
  #     skip
  #   end
  # end

  # describe 'the medium version' do
  #   it "should scale down a landscape image to fit within 75 by 75 pixels" do
  #     # @uploader.medium.should be_no_larger_than(75, 75)
  #     skip
  #   end
  # end

end