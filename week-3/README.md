###Week 3: Instagram Clone
**This week:**
>We will build an Instagram Clone. We will gain access to the users photo library and camera and we will
apply our own CIFilters to the images. We will also work with collection view's to load thumbnails
of the images with the filters applied.

  * [Class 1:](class-1/)
  	* **SUPER IMPORTANT:** Download Parse's swift starter project and use it for your week 2 app. This comes with Parse's SDKs preinstalled. Here is the link:
		* https://www.parse.com/apps/quickstart#parse_data/mobile/ios/swift/new (Links to an external site.)
	* Layout an Image view in the center of the screen using autolayout. Give it a ratio of 80% the super views width and height.
	* Use the UIImagePickerController and its delegate to use the camera to set the image view’s image. Add a button on top of the UIImageView that brings up ActionController if the device supports Camera and Photo Library, if not, simply present Photo library.
	* **Code Challenge:** 
		* Write a function that determines how many words there are in a sentence
	* **Bonus:** 
		* Post action in the action controller that successfully uploads the current imageview’s image up to your Parse backend.
  * [Class 2:](class-2/)
  	* Make sure you resize the image to something more suitable for a network upload before you post the image (600 * 600 should be okay) and populate imageView.
	* Create an action controller that has 3 - 4 different filters. This action controller should be presented by the tap of a button in the bottom center of the initial view controller.
	* Create FilterService class to generate / give you available filters.
	* Create at least 3 different filter methods on your FilterService class  that filters the imageView’s image with the selected filter.
	* **Code Challenge:** 
		* Write a function that returns all the odd elements of an array
	* **Bonus:**
 		* Add two extra filters 
 		* Build model object to house image and metadata to create Parse object when the user hits publish.
  * [Class 3:](class-3/)
  	* Create a GalleryViewController with a collection view designed to show a bunch of photos.
	* Add a collection view to the interface.
	* Build a simple collection view layout.
	* Build a call to Parse to get all images uploaded yesterday and populate the collection view.
	* Use property observers to set collection view cell's imageviews, when downloaded (lazy load images)
	* **Code Challenge:** 
		* Write a function that computes the list of the first 100 Fibonacci numbers.
  * [Class 4:](class-4/)
 	* Implement collection view on the HomeViewController to display all available filters already pre-applied on a thumbnail.
	* Show / Hide filter collection view in place of ActionSheetController.
	* Selecting a filtered thumbnail applies that filter to the current Image in the primary image view.
	* Add a pinch gesture recognizer to the GalleryViewController, which decreases/increases the item size upon pinching (use the scale property of the recognizer). Change layout interactively.
	* Create a custom protocol and delegate in order to communicate back image selection from GalleryViewController to the HomeViewControllerfor editing.
  * [Class 5:](class-5/)
  	* **Potential Guest Speakers:**