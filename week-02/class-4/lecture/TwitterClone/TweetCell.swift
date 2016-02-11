//
//  TweetCell.swift
//  TwitterClone
//
//  Created by Michael Babiy on 2/11/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell
{
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var tweetLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    
    var tweet: Tweet! {
        didSet {
            
            self.tweetLabel.text = self.tweet.text
            self.userLabel.text = self.tweet.user?.name
            
            if let user = self.tweet.user {
                
                if let image = SimpleCache.shared.image(user.profileImageUrl)  {
                    self.imgView.image = image
                    return
                }
                
                API.shared.GETImage(user.profileImageUrl, completion: { (image) -> () in
                    SimpleCache.shared.setImage(image, key: user.profileImageUrl)
                    self.imgView.image = image
                })
            }
            
        }
    }
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        self.setupTweetCell()
    }

    override func setSelected(selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }
    
    func setupTweetCell()
    {
        self.imgView.clipsToBounds = true
        self.imgView.layer.cornerRadius = 20
        self.preservesSuperviewLayoutMargins = false
        self.separatorInset = UIEdgeInsets(top: 0.0, left: 10.0, bottom: 0.0, right: 10.0)
        self.layoutMargins = UIEdgeInsetsZero
    }

}
