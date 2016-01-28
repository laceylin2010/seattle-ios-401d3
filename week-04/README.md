###Week 4: GitHub Client
**This week:**
>We will build our own GitHub Client that will.
We will utilize OAuth, our AppDelegate, and UISearchBar to navigate the GitHub API. 

  * [Class 1:](class-1/)
  	* Implement an OAuth workflow in your app that successfully lets the user authenticate with your app.
	* Implement the NSUserDefaults to store the authorization token, so it only does the OAuth process once.
	* Create a github service and implement a method that fetches repositories based on a search term.
	* **Code Challenge:**
		* Given an array of ints of odd length, return a new array length 3 containing the elements from the middle of the array. The array length will be at least 3. 
  * [Class 2:](class-2/)
  	* Create / implement login screen. App should check to see if token exists before displaying / making a call to Github. If token does not exist, present login screen.
	* Implement the ability to create new repositories using POST request. NOTE: Please make sure you include "repo" in your initial scope when requesting a token.
	* Create a model for repository, user and owner.
	* Create a HomeViewController and parse through the JSON returned from the server into models. No UI needed at this point, just print the information into the console.
	* **Code Challenge:**
		* Write a function that takes in an array of numbers, and returns the lowest and highest numbers as a tuple
  * [Class 3:](class-3/)
  	* Create a table view in HomeViewController and populate it with repositories.
	* Create ProfileViewController that will display User information. Build the UI similar to how it looks on Github.
	* Implement a UISearchBar on your repo search view controller and modify your repo search fetch method on your network controller to use the search bar’s text. Be sure to only be making authenticated network calls using your oath token!
	* **Code Challenge:**
		* Given a non-negative number "num", return true if num is within 2 of a multiple of 10. Note: `(a % b)` is the remainder of dividing a by b, so `(7 % 5)` is 2
  * [Class 4:](class-4/)
  	*  Create a UserSearchViewController that searches for users, similar to how we are already searching for repositories. Instead of a table view, use a collection view to display the users avatar image.
	* Upon clicking on a cell, implement a custom transition, and transition the image clicked on to a UserDetailViewController page that has their picture, name, and whatever other info you want pulled from their API.
	* Implementent Regex in your app. Use it to validate the characters the user types into the search bar. Extend String with this functionality.
	* Implement UIWebView in your app. When a user clicks on a repo, show their repo's web page with UIWebView.
	* **Code Challenge:**
		* Given a string, return a string where for every char in the original, there are two chars. 
			* Example: doubleChar("The") → "TThhee"
  * [Class 5:](class-5/)
  	* **Potential Guest Speakers:**