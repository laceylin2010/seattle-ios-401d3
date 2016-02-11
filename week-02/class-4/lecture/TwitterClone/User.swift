//
//  User.swift
//  TwitterClone
//
//  Created by Michael Babiy on 2/1/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class User
{
    let name: String
    let profileImageUrl: String
    let location: String
    let screenName: String
    
    init(name: String, profileImageUrl: String, location: String, screenName: String)
    {
        self.name = name
        self.profileImageUrl = profileImageUrl
        self.location = location
        self.screenName = screenName
    }
}