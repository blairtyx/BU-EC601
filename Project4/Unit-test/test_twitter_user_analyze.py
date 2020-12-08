from twitter_user_analyze import *
import pytest

def test_api_authu():
    api = authu()
    assert isinstance(api, tweepy.API)

badinput_collect = [
    ['Twitter','5', 'False', 'False'],
    ['a c ', '10', 'False', 'False'],
    ['123', '10000', 'False', 'False'],
    ['abc', '2', 'a', 'False'],
    ['abc', '123', 'F', 'False'],
    ['abc', '123', 'T', 'False'],
    ['abc', '123', 'T', '2'],
    ['abc', '123', 'T', '.'],
 ]
def test_user_input():
    for col in badinput_collect:
        with pytest.raises(SystemExit) as e:
            user_input_info(col[0], col[1], col[2], col[3])
        assert e.type == SystemExit




def test_twitter_receive_data_shape():
    parm = ['Twitter','10', 'False', 'False']
    api = authu()
    posts = tweets_retreiving(parm, api)
    for tweet in posts:
        assert isinstance(tweet.full_text, str)
    df = tweets_storing(posts)
    assert df.shape[0] == 9

def test_sentiment():
    text = "YOU ARE BAD!!!"
    result = analyzeSentiment(text)
    print(result)
    assert result.document_sentiment.magnitude > 0.5
    assert result.document_sentiment.score < 0

def test_nlp_result_shape():
    parm = ['Twitter','10', 'False', 'False']
    api = authu()
    posts = tweets_retreiving(parm, api)
    df = tweets_storing(posts)
    google_nlp(df)
    assert df.shape[1] == 4