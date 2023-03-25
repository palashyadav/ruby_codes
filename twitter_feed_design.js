// Design Twitter Feed using heap and BFS

class Twitter {
    constructor() {
        this.users = new Map();
        this.tweets = new Map();
        this.timestamp = 0;
    }
    
    postTweet(userId, tweetId) {
        if (!this.users.has(userId)) {
            this.users.set(userId, new Set());
        }
        if (!this.tweets.has(userId)) {
            this.tweets.set(userId, []);
        }
        this.tweets.get(userId).push([this.timestamp++, tweetId]);
    }
    
    getNewsFeed(userId) {
        const feed = [];
        const heap = [];
        
        const following = this.users.get(userId) || new Set();
        [userId, ...following].forEach(uid => {
            const tweets = this.tweets.get(uid) || [];
            if (tweets.length > 0) {
                const idx = tweets.length - 1;
                heap.push([tweets[idx][0], tweets[idx][1], uid, idx - 1]);
            }
        });
        
        heap.sort((a, b) => b[0] - a[0]);
        
        while (heap.length > 0 && feed.length < 10) {
            const [time, tweetId, uid, idx] = heap.shift();
            feed.push(tweetId);
            
            if (idx >= 0) {
                const tweets = this.tweets.get(uid);
                heap.push([tweets[idx][0], tweets[idx][1], uid, idx - 1]);
                heap.sort((a, b) => b[0] - a[0]);
            }
        }
        
        return feed;
    }
    
    follow(followerId, followeeId) {
        if (!this.users.has(followerId)) {
            this.users.set(followerId, new Set());
        }
        this.users.get(followerId).add(followeeId);
    }
    
    unfollow(followerId, followeeId) {
        if (this.users.has(followerId)) {
            this.users.get(followerId).delete(followeeId);
        }
    }
}

const twitter = new Twitter();
twitter.postTweet(1, 5);
twitter.postTweet(1, 3);
twitter.follow(1, 2);
twitter.postTweet(2, 6);
console.log(twitter.getNewsFeed(1));
