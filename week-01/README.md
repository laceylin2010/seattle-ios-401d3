###Week 1: ToDo List
**This week:**
> We will be building A ToDo List application to kick off the course!

  * [Class 1:](class-1/)
  	* Write a function that takes in a string, checks if it can be converted to a number and if possible, returns a number
    * Write a function that takes in a tuple (code, message) and returns a string by using interpolation
    * Write a function that take in a string, and returns a message: “String contains n characters”
    * Write a function that takes in a string and reverses it. Use simple for loop
    * **Code Challenge:**
      *
    * **Bonus:**
      * Declare a variable that’s function. Implement function to take in a string (name) and return greeting message
  * [Class 2:](class-2/)
  	* Write a function that takes in an array of strings, checks if array contains “Earth”, if not, adds it otherwise returns
    * Use **reduce** to create single string from the above array. [“Venus”, “Earth”] would produce “Venus, Earth”
    * Declare and implement a dictionary that can contain as values Strings, Ints, etc
    * Declare a dictionary of string values. Declare a function that takes in a string and searches dictionary for it. Use **filter**
    * Write examples for **union, intersect, subtract, exclusive** Or set operations
    * **Code Challenge:**
      *
    * **Bonus:**
      *
  * [Class 3:](class-3/)
  	* Define ToDo class.
    * Implement NSCoding protocol.
    * Define ToDo protocol.
    * Extend ToDo protocol to provide basic implementation for certain functions.
    * **Code Challenge:**
      *
    * **Bonus:**
      *
  * [Class 4:](class-4/)
    * Download starter project; create individual files for each class / protocol you created yesterday
    * In HomeViewController `tableView:numberOfRowsInSection:` return `Store` number of objects it should display
    * In HomeViewController `configureCell:` implement it by first getting an object from `Store` for `indexPath.row` and set the `cell.textLabel.text` to `item.itemDescription`
    * In HomeViewController `tableView:commitEditingStyle…` Use `Store` to remove object for `indexPath.row`
    * In NewItemViewController `saveButtonSelected:` create item using `description` variable. Add the `item` to the `Store`
    * Create `Additions.swift` file and extend String and NSURL. String: `archivePath -> String`, NSURL: `documentsDirectory -> NSURL` and `archiveURL -> NSURL`
    * Conform your Model class to `NSCoding` protocol and implement required methods
    * Make sure `typealias Object: BaseClass` also enforces `Object` to conform to `NSCoding` protocol
    * Add save function to `ObjectStoreProtocol`. Provide default implementation for simply writing array of objects to the filesystem
    * Modify Store `init{}` method to unarchive first. If `nil`, initialize objects array
* Test your app! 
    * **Code Challenge:**
      *
    * **Bonus:**
      *
  * [Class 5:](class-5/)
  	* **Potential Guest Speakers:**