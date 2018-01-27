require 'test/unit'
require './config/photo'

class PhotoTest < Test::Unit::TestCase
  def test_photo_url
    assert_match(/https?:\/\/[\S]+/, photo.photo_url)
  end

  def test_profile_name
    assert_equal(String, photo.profile_name.class)
  end

  def test_profile_url
    assert_match(/https?:\/\/[\S]+/, photo.profile_url)
  end

private

  def photo
    @_photo ||= Photo.new
  end
end