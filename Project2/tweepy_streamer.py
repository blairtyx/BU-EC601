from tweepy import API
from tweepy import Cursor


from tweepy.streaming import StreamListener
from tweepy import OAuthHandler
from tweepy import Stream
import twitter_credentials as twc



class TwitterClient():
    def __init__(self):
        self.auth = TwitterAuthenticator().authentication_twitter_app()
        self.twitter_client = API(self.auth)

    def get_tweets(self, num_tweets):
        tweets = []
        for tweet in Cursor(self.twitter_client.user_timeline).items(num_tweets):
            tweets.append(tweet)

        return tweets



class TwitterAuthenticator():
    def authentication_twitter_app(self):
        #authentication 
        auth = OAuthHandler(twc.CONSUMER_KEY,twc.CONSUMER_SECRET)
        auth.set_access_token(twc.ACCESS_TOKEN,twc.ACCESS_TOKON_SECRET)
        return auth



class Twitterlistener(StreamListener):
    """
    Basic listener class that just prints received tweets to stdout.

    """

    def __init__(self, fetched_tweets_filename):
        self.fetched_tweets_filename = fetched_tweets_filename


    def on_data(self, data):
        try: 
            print(data)
            with open(self.fetched_tweets_filename, 'a') as tf:
                tf.write(data)
            return True
        except BaseException as e:
            print("Error on_data: %s" % str(e))
        return True

    def on_error(self, status):
        if status ==420:
            # return False on_data method incase rate limit occurs.
            return False
        print(status)
        

class TwitterStreamer():
    """
    Class for streaming and processing live tweets
    """


    def __init__(self):
        self.twitter_authenticator = TwitterAuthenticator()


    def stream_tweets(self, fetched_tweets_filename, hash_tag_list):
        #This handles Twitter authentication and the connection to the Twitter API
        listener = Twitterlistener(fetched_tweets_filename)

        auth = self.twitter_authenticator.authentication_twitter_app()
        
        stream = Stream(auth, listener)

        stream.filter(track=hash_tag_list)






if __name__ == "__main__":
    
    hash_tag_list = ["donald trump", "barack obama"]
    fetched_tweets_filename = "tweets.json"

    twitter_client = TwitterClient()
    print(twitter_client.get_tweets(1))



    # twitter_streamer = TwitterStreamer()
    # twitter_streamer.stream_tweets(fetched_tweets_filename, hash_tag_list)


    listener = Twitterlistener(fetched_tweets_filename)
    
    #authentication 
    auth = OAuthHandler(twc.CONSUMER_KEY,twc.CONSUMER_SECRET)
    auth.set_access_token(twc.ACCESS_TOKEN,twc.ACCESS_TOKON_SECRET)
    
    stream = Stream(auth, listener)

    stream.filter(track=['China', 'obama', 'trump'])


