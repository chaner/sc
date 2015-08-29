require "./lib/json.rb"
require "test/unit"

class TestJson < Test::Unit::TestCase

  def test_caps
    eric_instance = EricJson.new("{\"id\":510424,\"program_id\":1137,\"expires_on\":null,\"parent_id\":1458543,\"parent_type\":\"Persistence::ExternalContentMetadata\",\"cached_title\":\"How Employee Engagement Jumpstarts Employee Advocacy Infographic | SocialChorus\",\"cached_summary\":\"[Infographic] How Employee Engagement Jumpstarts Employee Advocacy — http://t.co/snrq2ZteU8 #EngageU\",\"cached_source_name\":\"@socialchorus\",\"cached_source_image_url\":\"/api/images/icons/profile_twitter_60x60.png\",\"cached_image_url\":\"http://www.socialchorus.com/wp-content/uploads/employee-engagement-jumpstarts-employee-advocacy-1.jpg\",\"cached_content_url\":\"http://t.co/snrq2ZteU8\",\"created_at\":\"2015-08-26T22:29:07.003Z\",\"updated_at\":\"2015-08-26T22:29:07.003Z\",\"cached_content_channel_ids\":[1129],\"cached_featured_at\":null,\"cached_push_notification_title\":\"\",\"cached_can_share\":true,\"cached_published_at\":\"2015-08-26T19:23:00.000Z\",\"cached_source_url\":\"https://twitter.com/socialchorus/status/636619875234918400\",\"cached_source_type\":\"twitter\",\"cached_prepopulated_text\":\"[Infographic] How Employee Engagement Jumpstarts Employee Advocacy — #EngageU\",\"cached_default_hashtag\":\"hotjava9\",\"refreshed_at\":null}")
    assert_equal(510424, eric_instance.id)
    assert_equal(1137, eric_instance.program_id)
    assert_equal(nil, eric_instance.expires_on)
    assert_equal(1458543, eric_instance.parent_id)
  end

end