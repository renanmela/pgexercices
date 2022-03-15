-- In our previous exercises, we deleted a specific member who had never made a booking. How can we make that more general, to delete all members who have never made a booking?

delete from cd.members where memid not in (select memid from cd.bookings);      