class TweetJob < ApplicationJob
  queue_as :default

  def perform(tweet)
    return if tweet.published?

    # Someone rescheduled a tweet for the future
    return if tweet.publish_at > Time.current

    # Do something later
    tweet.publish_to_twitter!
  end
end
