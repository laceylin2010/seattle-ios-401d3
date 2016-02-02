#Week 2 - Class 4
##Homework
* Lazily download the user profile images for each tweet you display.
* In your single tweet view controller, upon clicking on the person's image (hint: change the image view to a button, buttons can have images) the app should push a 3rd view controller onto the stack
* This 3rd view controller will show that user's timeline (the api url is "https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name" but you will need to add a parameter to this url.
* Use a table view header view to mimic Twitter's layout of that screen (show their profile background image, their picture, their name, their location)
* Convert your table view cells to use a Nib, so you can share the same cell for both the home time line VC and the user Timeline VC
* Implement a Simple Cache to check and see if an image you are about to download is already downloaded before doing a network call
* **Code Challenge:** 
	* 
* **Bonus:**
	* 

##Other Resources
* [Reading Assignments](../../Resources/ra-grading-standard/)
* [Grading Rubrics](../../Resources/)
* [Lecture Resources](lecture/)
* [Lecture Slides](https://www.icloud.com/keynote/000Vp4p_nQHtU4YfNPbXlHGig#Week2-Class4)