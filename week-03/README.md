###Week 3: Instagram Clone
**This week:**
>We will build an Instagram Clone. We will gain access to the users photo library and camera and we will
apply our own CIFilters to the images. We will also work with collection view's to load thumbnails
of the images with the filters applied.

  * [Class 1:](class-1/)
  	* Setup a new project, disable landscape.
	* Layout an Image view in the center of the screen using autolayout. 
		* Layout: centerX, centerY + 10, width 0.94, height 0.82
	* Use the UIImagePickerController and its delegate to use the camera to set the image view’s image. 
	* Add a toolbar with "+" button to your navigation controller that brings up ActionController if the device supports Camera and Photo Library, if not, simply present Photo library.
	* **Code Challenge:** 
		* Write a function that determines how many words there are in a sentence
	* **Bonus:** 
		* Post action in the action controller that successfully uploads the current imageview’s image up to your Parse backend.
  * [Class 2:](class-2/)
  	* Create an extension on UIImage that resizes an image to specified (passed in) parameters.
	* Create Filters class and implement at least 3 filters. 
		* To find out what filters are available, use this:
			`for name in CIFilter.filterNamesInCategories(nil){            
			print(name)
			}`
	* Create the ability to reset applied filter to the default image.
	* Implement Save image to the Library (edited image).
	* Implement upload of an image to CloudKit.
	* **Code Challenge:** 
		* Write a function that returns all the odd elements of an array
	* **Bonus:**
 		* Add two extra filters 
 		* Build model object to house image and metadata to create Parse object when the user hits publish.
  * [Class 3:](class-3/)
  	* Create a GalleryViewController with a collection view designed to show a bunch of photos.
	* Add a collection view to the interface.
	* Build a simple collection view layout.
	* Build a call to CloudKit to get all images uploaded yesterday and populate the collection view.
	* Use property observers to set collection view cell's imageviews, when downloaded (lazy load images)
	* **Code Challenge:** 
		* Write a function that computes the list of the first 100 Fibonacci numbers.
  * [Class 4:](class-4/)
 	* Implement collection view on the HomeViewController to display all available filters already pre-applied on a thumbnail.
	* Show / Hide filter collection view in place of ActionSheetController. 
		* Use modal presentation.
	* Selecting a filtered thumbnail applies that filter to the current Image in the primary image view.
	* Add a pinch gesture recognizer to the GalleryViewController, which decreases/increases the item size upon pinching (use the scale property of the recognizer). 
		* Change layout interactively.
	* Create a custom protocol and delegate in order to communicate back image selection from GalleryViewController to the HomeViewControllerfor editing.
  * [Class 5:](class-5/)
  	* **Potential Guest Speakers:**