###Week 6: Intro to Objective-C
**This week:**
>Introduction to the Objective-C language.

* [Class 1:](class-1/)
  * Create a category method on NSString that takes in itself and returns an array of words
  * Write a method that takes in id type, checks if its NSNumber, NSString, NSArray and performs the following:
    * if number, calculate the square root
    * if string, reverses it
    * if array, checks for object type and calculates how many time specific type is mentioned (if array contains 3 strings, NSLog = contains 3 strings)
  * Declare a simple protocol with optional and required methods. Name it whatever you like
  * Declare a class called Person. Extend (indirectly - subclass) this class. Add appropriate behavior to your subclass (Person -> Employee)
* [Class 2:](class-2/)
  * Create a simple AddressBook app. See Book examples, but make sure to disable ARC.
  * Write your own userDefaults that uses JSON format
  * Manage your memory, create proper setters that retain/copy data when assigned.(don't use @property)
  * **Bonus:**
    * Make a private init to make a true singleton. (5 Points)
* [Class 3:](class-3/)
  * Define and build out the model for our ClassMates app.
    * Define a Student class with these **VARIABLES**: firstName, lastName, email, phone.
      * They are private by default and require setters and getters.
    * Declare a custom initializer that takes in required parameters.
    * Conform Student class to NSCoding protocol and implement required methods.
  * Define and build StudentStore.
    * Make this class a singleton that manages an array of students.
* [Class 4:](class-4/)
  * Build the UI:
    * Embed the ViewController into the NavigationController.
    * Create a new viewController called AddViewController. Define class method identifier:.
      * Add Student property to the AddViewController.
      * Setup AddViewController scene with text fields for each model variable. Add "Save" button.
    * Add UIBarButton to the ViewController & create a segue to the AddViewController.
    * Add a table view to the ViewController.
  * Build the Backup Engine.
    * Create / add a function `studentsFromRecords:completion:` to Student+Addition
    * Create CouldBackupService.
    * Run tests in viewDidLoad: to set for all possible options such as creation, deletion of Student records.
    * Implement creation / deletion of student records into the UI.
    * Update StudentStore to include completions in add:, remove:, removeItIndexPath: methods.
  * [Class 5:](class-5/)
  	* **Potential Guest Speakers:**
      * Professional Development talk
