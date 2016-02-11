//
//  JSONParser.swift
//  TwitterClone
//
//  Created by Michael Babiy on 2/1/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

typealias JSONParserCompletion = (success: Bool, tweets: [Tweet]?) -> ()

class JSONParser
{
    class func tweetJSONFrom(data: NSData, completion: JSONParserCompletion)
    {
        do {
            if let rootObject = try NSJSONSerialization.JSONObjectWithData(data, options: .MutableContainers) as? [[String : AnyObject]] {
                var tweets = [Tweet]()
                
                for tweetJSON in rootObject {
                    guard let tweet = self.tweetFromJSON(tweetJSON) else { return }
                        
                    // Check if current tweet is a retweet assign original tweet and user.
                    if let originalTweet = self.originalTweet(tweetJSON) {
                        tweet.originalTweet = originalTweet
                    }
                    
                    // Append tweet.
                    tweets.append(tweet)
                }
                
                // Completion
                completion(success: true, tweets: tweets)
            }
        } catch _ { completion(success: false, tweets: nil) }
    }
    
    // MARK: Helper Functions
    
    class func userFromJSON(userJSON: [String : AnyObject]) -> User
    {
        guard let name = userJSON["name"] as? String else { fatalError("Failed to parse the name. Something wrong with JSON?") }
        guard let profileImageURL = userJSON["profile_image_url"] as? String else { fatalError("Failed to parse the profile image url. Something wrong with JSON?") }
        guard let location = userJSON["location"] as? String else { fatalError("Failed to parse the location. Something wrong with JSON?") }
        guard let screenName = userJSON["screen_name"] as? String else { fatalError("Failed to parse the screen name. Something wrong with JSON?") }
        
        // Everythig is OK. Create user.
        return User(name: name, profileImageUrl: profileImageURL, location: location, screenName: screenName)
    }
    
    class func tweetFromJSON(tweetJSON: [String : AnyObject]) -> Tweet?
    {
        guard let text = tweetJSON["text"] as? String else { return nil }
        guard let id = tweetJSON["id_str"] as? String else { return nil }
        guard let userJSON = tweetJSON["user"] as? [String : AnyObject] else { return nil }
        
        // Create and return a new tweet.
        return Tweet(text: text, id: id, user: self.userFromJSON(userJSON))
    }
    
    class func originalTweet(tweetObject: [String : AnyObject]) -> Tweet?
    {
        guard let retweetObject = tweetObject["retweeted_status"] as? [String : AnyObject] else { return nil }
        guard let tweet = self.tweetFromJSON(retweetObject) else { return nil }
        return tweet
    }
}