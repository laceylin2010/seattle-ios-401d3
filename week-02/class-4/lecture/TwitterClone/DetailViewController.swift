//
//  DetailViewController.swift
//  TwitterClone
//
//  Created by Michael Babiy on 2/2/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{
    var tweet: Tweet?
    
    @IBOutlet weak var tweetLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.setupAppearance()
        self.setupDetailViewController()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func setupDetailViewController()
    {
        if let tweet = self.tweet, user = tweet.user {
            if let originalTweet = tweet.originalTweet, originalUser = originalTweet.user {
                self.navigationItem.title = "Retweet"
                self.tweetLabel.text = originalTweet.text
                self.userLabel.text = "Author: \(originalUser.name)"
                self.profileImage(originalUser.profileImageUrl, completion: { (image) -> () in
                    self.profileImageView.image = image
                })
            } else {
                self.navigationItem.title = "Tweet"
                self.tweetLabel.text = tweet.text
                self.userLabel.text = "Author: \(user.name)"
                self.profileImage(user.profileImageUrl, completion: { (image) -> () in
                    self.profileImageView.image = image
                })
            }
        }
    }
    
    func profileImage(key: String, completion: (image: UIImage) -> ())
    {
        if let image = SimpleCache.shared.image(key) {
            completion(image: image)
            return
        }
        
        API.shared.GETImage(key) { (image) -> () in
            completion(image: image)
        }
    }
    
    func setupAppearance()
    {
        self.profileImageView.layer.cornerRadius = 30.0
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "UserTimelineViewController" {
            let userTimelineViewController = segue.destinationViewController as! UserTimelineViewController
            userTimelineViewController.tweet = self.tweet
        }
    }
}

extension DetailViewController
{
    class func identifier() -> String
    {
        return "DetailViewController"
    }
}