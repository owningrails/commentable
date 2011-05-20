ENV["RAILS_ENV"] = "test"

# We're cheating a little by requiring loading our Rails app environment here.
# Normally, you'd include a Rails app in your test dir here and load it.
require File.expand_path('../../../owning/test/test_helper', __FILE__)
