//
//  Tweet.swift
//  TwitterClone
//
//  Created by Michael Babiy on 2/8/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class Tweet
{
    let text: String
    let id: String
    let user: User?
    
    init(text: String, id: String, user: User? = nil)
    {
        self.text = text
        self.id = id
        self.user = user
    }
}