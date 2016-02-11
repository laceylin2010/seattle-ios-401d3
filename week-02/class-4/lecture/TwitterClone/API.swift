//
//  API.swift
//  TwitterClone
//
//  Created by Michael Babiy on 2/1/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation
import Accounts
import Social

class API
{
    
    static let shared = API()
    var account: ACAccount?
    
    func GETTweets(completion: (tweets: [Tweet]?) -> ())
    {
        if let _ = self.account {
            
            self.updateTimeline("https://api.twitter.com/1.1/statuses/home_timeline.json", completion: completion)
            
        } else {
            
            self.login { (account) -> () in
                if let account = account {
                    
                    // Set the account.
                    API.shared.account = account
                    
                    // Make the tweets call.
                    self.updateTimeline("https://api.twitter.com/1.1/statuses/home_timeline.json", completion: completion)
                    
                } else { print("Account is nil.") }
            }
            
        }
    }
    
    func GETUserTweets(username: String, completion: (tweets: [Tweet]?) -> ())
    {
        self.updateTimeline("https://api.twitter.com/1.1/statuses/user_timeline.json?screent_name=\(username)", completion: completion)
    }
    
    func GETImage(urlString: String, completion: (image: UIImage) -> ())
    {
        NSOperationQueue().addOperationWithBlock { () -> Void in
            guard let url = NSURL(string: urlString) else { return }
            guard let data = NSData(contentsOfURL: url) else { return }
            guard let image = UIImage(data: data) else { return }
            
            NSOperationQueue.mainQueue().addOperationWithBlock({ () -> Void in
                completion(image: image)
            })
        }
    }
    
    private func updateTimeline(urlString: String, completion: (tweets: [Tweet]?) -> ())
    {
        let request = SLRequest(
            forServiceType: SLServiceTypeTwitter,
            requestMethod: .GET,
            URL: NSURL(string: urlString),
            parameters: nil)
        
        request.account = self.account
        request.performRequestWithHandler { (data, response, error) -> Void in
            
            if let _ = error {
                print("ERROR: SLRequest type GET for /1.1/statuses/home_timeline.json could not be completed.")
                completion(tweets: nil)
                return
            }
            
            switch response.statusCode {
                
            case 200...299:
                
                JSONParser.tweetJSONFrom(data, completion: { (success, tweets) -> () in
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                        completion(tweets: tweets)
                    })
                })
                
            case 400...499:
                
                print("ERROR: SLRequest type GET for /1.1/statuses/home_timeline.json returned status code \(response.statusCode) [user input error].")
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    completion(tweets: nil)
                })
                
            case 500...599:
                
                print("ERROR: SLRequest type GET for /1.1/statuses/home_timeline.json returned status code \(response.statusCode) [server side error].")
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    completion(tweets: nil)
                })
                
            default:
                
                print("ERROR: SLRequest type GET for /1.1/statuses/home_timeline.json returned status code \(response.statusCode) [unknown error].")
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    completion(tweets: nil)
                })
                
            }
        }
    }
    
    private func login(completion: (account: ACAccount?) -> ())
    {
        // Set up Account Store.
        let accountStore = ACAccountStore()
        
        // Give Account Store an account type (Twitter).
        let accountType = accountStore.accountTypeWithAccountTypeIdentifier(ACAccountTypeIdentifierTwitter)
        
        accountStore.requestAccessToAccountsWithType(accountType, options: nil, completion: { (granted, error) -> Void in
            
            if let _ = error {
                print("ERROR: Request access to accounts returned an error.")
                completion(account: nil)
                return
            }
            
            if granted {
                if let account = accountStore.accountsWithAccountType(accountType).first as? ACAccount {
                    completion(account: account)
                    return
                }
                
                // If no account was found.
                print("ERROR: No twitter accounts were found on this device.")
                completion(account: nil)
                return
            }
            
            // If user did not grant access to Account Store for Twitter accounts.
            print("Error: This app requires access to the Twitter Accounts.")
            completion(account: nil)
            return
        })
        
    }
    
    private func GETOAuthUser(completion: (user: User?) -> ())
    {
        let request = SLRequest(
            forServiceType: SLServiceTypeTwitter,
            requestMethod: SLRequestMethod.GET,
            URL: NSURL(string: "https://api.twitter.com/1.1/account/verify_credentials.json"),
            parameters: nil)
        
            request.account = self.account
            request.performRequestWithHandler { (data, response, error) -> Void in
                
            if let _ = error {
                print("ERROR: SLRequest type GET for /1.1/account/verify_credentials.json could not be completed.")
                completion(user: nil)
                return
            }
                
            switch response.statusCode {
            case 200...299:
                do {
                    
                    if let userJSON = try NSJSONSerialization.JSONObjectWithData(data, options: .MutableContainers) as? [String : AnyObject] {
                        completion(user: JSONParser.userFromJSON(userJSON))
                    }
                    
                } catch {
                        
                    print("ERROR: NSJSONSerialization.JSONObjectWithData was unable to de-serialize JSON object.")
                    completion(user: nil)
                    
                }
                
            case 400...499:
                    
                print("ERROR: SLRequest type GET for /1.1/account/verify_credentials.json returned status code \(response.statusCode) [user input error].")
                completion(user: nil)
            
            case 500...599:
                    
                print("ERROR: SLRequest type GET for /1.1/account/verify_credentials.json returned status code \(response.statusCode) [server side error].")
                completion(user: nil)
                
            default:
                    
                print("ERROR: SLRequest type GET for /1.1/account/verify_credentials.json returned status code \(response.statusCode) [unknown error].")
                completion(user: nil)
            }
        }

    }
    
}