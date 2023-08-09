# Design Twitter: Implement simple Twitter with follow, tweet, and feed
class Twitter
  def initialize
    @users = {}
    @tweets = {}
  end

  def post_tweet(user_id, tweet_id)
    @users[user_id] ||= Set.new
    @tweets[user_id] ||= []
    @tweets[user_id].unshift([tweet_id, Time.now.to_i])
  end

  def get_news_feed(user_id)
    @users[user_id] ||= Set.new
    feed = []
    (@users[user_id] + [user_id]).each do |id|
      (@tweets[id] || []).each { |t| feed << t }
    end
    feed.sort_by { |t| -t[1] }.take(10).map { |t| t[0] }
  end

  def follow(follower_id, followee_id)
    @users[follower_id] ||= Set.new
    @users[follower_id].add(followee_id)
  end

  def unfollow(follower_id, followee_id)
    @users[follower_id] ||= Set.new
    @users[follower_id].delete(followee_id)
  end
end
