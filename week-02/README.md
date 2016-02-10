###Week 2: Twitter Clone
**This week:**
>We will build a Twitter Clone. Our Twitter clone will 
utilize the Twitter API, Parse the returning JSON, and create the appropriate 
Model objects. We will diplay the Tweets to the user.

  * [Class 1:](class-1/)
  	* Create your MVC groups
	* Create your Tweet class 
	* Create your User class
	* Create your TweetJSONParser class
	* Add text & id properties to your Tweet class
	* Add properties for the username, and profileImageURL(all string types) to your User class
	* Parse the json file into tweets, make sure all properties on each tweet are being set. All parsing should be done in your TweetJSONParser class.
	* Display those tweet objects in the table view, just the text for the tweet is fine today
	* CODING CHALLENGE: Write a function that reverses an array
  * [Class 2:](class-2/)
	* Use the Accounts framework to access the user's twitter account on their iOS device
	* Use the Social framework to make a request to twitter for the users home timeline
	* Use the Social framework to make a request to twitter for logged in user and create your model User object
	* Use a ranged switch statement to make sure the status code of the response is good
	* Reload the table view on the main thread (aka main queue) once you are done parsing the JSON data from the response
	* Show the downloaded tweets on your table view
	* In your JSONParser, make sure to create each Tweet on a different Queue.
	* **Code Challenge:** 
		* 
	* **Bonus:**
		* Write your code to be able to handle multiple twitter accounts.(10 Points!!)
  * [Class 3:](class-3/)
  	* Setup your cells with autolayout so you can see the entire tweets text. If you get any .... at the end that is probably twitters API being stupid
	* Create a 2nd view controller that shows an individual tweet in detail
	* Upon clicking a tweet, your interface should push (which means you need a navigation controller) to the 2nd view controller and display the tweet selected, but with a few caveats:
	* If the tweet that was selected is a retweet, show the original tweet and the original user
	* All of this information is available in the original JSON, you just have to go digging for it, and then add properties to your Tweet class accordingly.
	* Create a ProfileViewController that when presented, shows the logged in user's profile information. Utilize the NavigationBar to add a button to present this new viewController.
  * [Class 4:](class-4/)
	* Lazily download the user profile images for each tweet you display.
	* Implement a Simple Cache to check and see if an image you are about to download is already downloaded before doing a network call
	* In your single tweet view controller:
		* Have an imageView that shows the user's profile image, if the tweet is a retweet, show the **original** User's profile image.
		* upon clicking on the person's image the app should push a 3rd view controller onto the stack
	* This 3rd view controller will show that user's timeline (the api url is "https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name" but you will need to add a parameter to this url.
	* Convert your table view cells to use a Nib, so you can share the same cell for both the home time line VC and the user Timeline VC.
  * [Class 5:](class-5/)
  	* **Guest Speakers:**