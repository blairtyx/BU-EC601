import tweepy
import re
import numpy as np
import pandas as pd
import twitter_credentials as tc
from google.cloud import language_v1
from google.cloud.language_v1 import enums


# Anuthenticaiton
auth = tweepy.OAuthHandler(tc.CONSUMER_KEY, tc.CONSUMER_SECRET)
auth.set_access_token(tc.ACCESS_TOKEN, tc.ACCESS_TOKON_SECRET)

api = tweepy.API(auth)


# read keywords from shell input
screen_name = input("Whose twitter do you want to analysis? (type the user name e.g. JoeBiden, realDonaldTrump) ")
count = int(input("How many tweets do you need? (range 10-1000) "))
rts = input("Do you need retweets? (type <true> if you do) ")
rpls = not input("Do you need replies? (type <ture> if you do) ")



#################################
#user input test

## username test

## count test

## retweets test

## reply test




#Retreive tweets from twitter
posts = api.user_timeline(screen_name = screen_name, 
                                    count = count, 
                                    lang = "en", 
                                    tweet_mode = "extended",
                                    include_rts = rts,
                                    exclude_replies = rpls )



#create a dataframe with a column called Tweets
df = pd.DataFrame([tweet.full_text for tweet in posts], columns = ['Tweets'])
print (df)



#Format/clean the text of the tweets
def cleanText(text):

  text = re.sub(r'@[A-Za-z0-9:]+', '', text) #remove @mentions
  text = re.sub(r'#', '', text) #remove #
  text = re.sub(r'RT[\s]+', '', text) # remove RT
  text = re.sub(r'https?:\/\/\S+','', text)# remove the link
  return text


# Create a function to get the subjectivity
def analyzeSentiment(text):
    client = language_v1.LanguageServiceClient()
    type_ = enums.Document.Type.PLAIN_TEXT
    language = "en"
    document = {"content": text, "type": type_, "language": language}

    encoding_tpye = enums.EncodingType.UTF8

    response = client.analyze_sentiment(document, encoding_type=encoding_tpye)

    # print()
    # print(u"Document Sentiment Score: {}".format(response.document_sentiment.score))
    # print(u"Document Sentiment magnitude: {}".format(response.document_sentiment.magnitude))
    # score = format(response.document_sentiment.score)
    # mag = format(response.document_sentiment.magnitude)
    # df['Document_Sentiment_Score'].append(score)
    # df['Document_Sentiment_magnitude'].append(mag)
    # for sentence in response.sentences:
    #     print(u"Sentence test: {}".format(sentence.text.content))
    #     print(u"Sentence sentiment score: {}".format(sentence.sentiment.score))
    #     print(u"Sentence sentiment magnitude: {}".format(sentence.sentiment.magnitude))

    # print(u"Language of the text: {}".format(response.language))
    return response






#clean text of tweets 
df['Tweets'] = df['Tweets'].apply(cleanText)
print (df)



#main part
for i in range(0,df.shape[0]):
    #retrive analysis resopnse
    response = analyzeSentiment(df.at[i,'Tweets'])
    
    #format output
    df.at[i,'D_score'] = response.document_sentiment.score
    df.at[i,'D_magnitude'] = response.document_sentiment.magnitude
    df.at[i,'Response'] = response
    


#test part
print()
print()
print()
print("Show the df['D_score'] ")
print (df['D_score'])
print()
print("Show the df['D magnitude'] ")
print (df['D_magnitude'])
print()
print(df)