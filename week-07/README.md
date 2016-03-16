###Week 7: Location Reminders
####This week:
>We will build a Reminders app that uses locations to create reminders. This
application will utilize CoreLocation and MapKit.

  * [Class 1:](class-1/)
    * Get all Screenshots setup for app submission.
    * Download Parse Documentation to Dash.
    * Get your project setup in Objective-C.
    * Create a single view controller, that has a map view that takes up most the screen, and 3 buttons below it.
    * The 3 buttons should set the region on the map view to 3 cool locations, you pick the locations.
    * **Code Challenge:**
    	* Implement Stack and Queue in Objective-C. You can implement them in the same project as your map app is in, since Objective-C does not support playgrounds.

  * [Class 2:](class-2/)
  	* Using core location, display the users location on the map
  	* Add a long press gesture to the map view
  	* On long press,  add an annotation onto the map view, which has a callout with an accessory button
  	* Upon pressing the accessory button, segue to a AddReminderDetailViewController
	* **Code Challenge:**
		* Write a method that detects if two strings are anagrams.
	* **Bonus:**
		*

  * [Class 3:](class-3/)
    * Modify your LocationController to monitor regions  
  	* Add the ability to sign up and login to your app
    * Add a model class for your reminder by subclassing PFObject.
  	* Add a visual map annotation wherever a reminder is added.
      * use MKCircle to present a map overlay.
	* **Code Challenge:**
		* Given a string, return the sum of the digits 0-9 that appear in the string, ignoring all other characters. Return 0 if there are no digits in the string.

  * [Class 4:](class-4/)
    * Use Region monitoring and schedule a location based reminder in the AddReminderDetailViewController
   	* Add local notifications when the user enters a region
    * Upon creation of your reminder, upload to ParseServer.
    * On first launch, your app should fetch all reminders and display on the mapView.
	* **Code Challenge:**
		* Implement a linked list
	* **Bonus:**
		*

  * [Class 5:](class-5/)
  	* **Potential Guest Speakers:**

#####Weekly Bonus:
* Implement a WatchOS version of your app. This should just show a list view of all of your currently monitored regions.
* Implement a UISlider on the AddRegion controller that modifies the radius of the region
* When the user receives a local notification for crossing the region, show which region they entered in the notification
* When they open the app via that notification, take them to a region detail view controller that shows them the details of the region.
