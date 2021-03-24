/* do not change the following two lines! */
.header on
.mode column
/* do not change the above two lines! */

/*2b(i)  John Smith, Customer ID - GR01932, has asked for a copy of the tax he has paid on flight QH182. The tax for a booking is calculated as follows:

adults pay £5.50
children pay £2.00
concessions pay £1.50 */

 SELECT customer.forename, customer.surname, (COUNT(booking.adultticket) * 5.5) + (COUNT(booking.childticket) * 2) + (COUNT(booking.concessionticket) * 1.5) AS "Tax (pounds)"
FROM customer, booking, flight WHERE customer.customerID = "GR01932" AND customer.customerID = booking.customerID AND flight.flightid = "QH182"; 

/* 2b(ii)  The airline wishes to identify the customer(s) who made a booking with the greatest number of children. */



/*Implement two SQL statements that will find the forename and surname of the customer(s) who made a booking with the greatest number of children. */




 SELECT tab.Forename, tab.Surname 
 FROM (SELECT customer.forename AS "Forename", customer.surname AS "Surname", MAX(booking.childticket) FROM customer, booking WHERE customer.customerID = booking.customerID GROUP BY customer.customerID ORDER BY COUNT(booking.childticket)DESC) AS "tab" ; 



