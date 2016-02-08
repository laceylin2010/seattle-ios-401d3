//
//  ViewController.swift
//  TwitterClone
//
//  Created by Michael Babiy on 2/8/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource
{
    
    @IBOutlet weak var tableView: UITableView!
    
    var datasource = [Tweet]() {
        didSet {
            //
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.setupTableView()
    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        self.update()
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func setupTableView()
    {
        self.tableView.dataSource = self
    }
    
    func update()
    {
        JSONParser.tweetJSONFrom(JSONParser.JSONData()) { (success, tweets) -> () in
            if success {
                if let tweets = tweets {
                    self.datasource = tweets
                }
            }
        }
    }
}

extension HomeViewController
{
    func configureCellForIndexPath(indexPath: NSIndexPath) -> UITableViewCell
    {
        let tweetCell = self.tableView.dequeueReusableCellWithIdentifier("tweetCell", forIndexPath: indexPath)
        let tweet = self.datasource[indexPath.row]
        tweetCell.textLabel?.text = tweet.text
        
        // Return cell.
        return tweetCell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.datasource.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        return self.configureCellForIndexPath(indexPath)
    }
}

