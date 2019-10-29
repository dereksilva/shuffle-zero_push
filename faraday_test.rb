require 'test/unit'
require "zero_push"


class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  def test_fail
    ZeroPush.auth_token = "w381y5FZJ1hVzUXrkKpa"
    # client = ZeroPush::client("8BCj3Xzf4FirPz3r6Xi1")
    ZeroPush.register("99bbc34f28c0e74467d22200a15a837ae739e9fa05720b980ff215f5a03ab4c5")
    # client = ZeroPush.Client.register

    device_tokens=["99bbc34f28c0e74467d22200a15a837ae739e9fa05720b980ff215f5a03ab4c5"]

    notification = {
        device_tokens: device_tokens,
        alert: "test message",
        sound: "default",
        badge: "+1",
        category:  ""
    }

    # notification[:info] = data.to_json unless data.nil?
    ZeroPush.auth_token = "w381y5FZJ1hVzUXrkKpa"
    ZeroPush.notify(notification)
  end
end