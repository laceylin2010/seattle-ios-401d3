###Week 8: CoreData Hotel Service
####This week:
>Students will be creating a Hotel Service, allowing them to book hotel rooms, see different hotels, etc.

  * [Class 1:](class-1/)
  	* Setup your MOM with entities for Hotel >> Room >> Reservation > Guest
    * Seed your database with a few hotels and rooms.
    * Create a table view based hotel list view controller. This should show a list of hotels
    * Upon selecting a hotel, segue to a RoomsViewController, which shows all the rooms of that hotel in another table view.
	* **Code Challenge:** 
		* 
	* **Bonus:** 
		* 

  * [Class 2:](class-2/)
  	* Seed your data base with the JSON payload provided
    * Implement Book functionality. Guests should be able to set both, the start and end reservation dates, specify the room they want and finally book it (guest name is required... feel free to add more requirements). 
	* **Code Challenge:** 
		* 
	* **Bonus:**
		* Setup an application flow that allows you to query for room availability from a fromDate and toDate range. Users should be able to book a reservation based on the availability.


  * [Class 3:](class-3/)
  	* Create a ReservationService class that should abstract away your business logic (booking reservations, checking availability, etc)
    * Add UnitTests to your project. Write a couple of tests for your model.
    * Implement search by guest name - Lookup view controller.
    * Implement NSFetchedResultsController in (at least) one of your view controllers.
	* **Code Challenge:** 
		* 
	* **Bonus:** 
		* Separate your core data setup into a separate CoreDataStack Class. 

  * [Class 4:](class-4/)
   	* Write unit tests for your Model objects.
    * Implement analytics into your app.
    * Migrate your existing model into a new model with at least one new attribute.
	* **Code Challenge:** 
		* 
	* **Bonus:** 
		* Localize your app for another language (your pick).


  * [Class 5:](class-5/)
  	* **Potential Guest Speakers:**

#####Weekly Bonus:
* Implement an NSFetchedResultsController in one of your VC's that uses a table view to show core data objects
* Have your Hash Table dynamically resize itself
* Implement a Hash Table in Objective-C.