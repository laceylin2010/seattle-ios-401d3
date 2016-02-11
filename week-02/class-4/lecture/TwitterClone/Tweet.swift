//
//  Tweet.swift
//  TwitterClone
//
//  Created by Michael Babiy on 2/1/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class Tweet
{
    let text: String
    let id: String
    let user: User?
    
    var originalTweet: Tweet?
    // var originalUser: User?
    
    init(text: String, id: String, user: User? = nil, originalTweet: Tweet? = nil)
    {
        self.text = text
        self.id = id
        self.user = user
        self.originalTweet = originalTweet
        // self.originalUser = originalUser
    }
}