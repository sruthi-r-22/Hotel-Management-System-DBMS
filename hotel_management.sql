mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| college            |
| companydb          |
| hotelmanagementdb  |
| information_schema |
| mysql              |
| office             |
| performance_schema |
| relational         |
| school             |
| student            |
| student_details    |
| sys                |
+--------------------+
12 rows in set (0.07 sec)

mysql> use hotelmanagementdb;
Database changed
mysql> show tables;
+-----------------------------+
| Tables_in_hotelmanagementdb |
+-----------------------------+
| bills                       |
| guests                      |
| inventory                   |
| reservations                |
| rooms                       |
| staff                       |
+-----------------------------+
6 rows in set (0.02 sec)

mysql> select * from bills;
+---------+----------------+----------+----------------+----------------+------------+
| bill_id | reservation_id | amount   | payment_method | payment_status | bill_date  |
+---------+----------------+----------+----------------+----------------+------------+
|       1 |              1 |  5000.00 | UPI            | Paid           | 2026-10-10 |
|       2 |              2 | 12000.00 | Card           | Paid           | 2026-10-11 |
|       3 |              3 |  3000.00 | Cash           | Paid           | 2026-10-03 |
|       4 |              4 | 13000.00 | Online         | Pending        | 2026-10-15 |
|       5 |              5 |  8400.00 | UPI            | Paid           | 2026-09-22 |
+---------+----------------+----------+----------------+----------------+------------+
5 rows in set (0.03 sec)

mysql> select * from guests;
+----------+--------------+------------+--------------------+------------+
| guest_id | full_name    | phone      | email              | city       |
+----------+--------------+------------+--------------------+------------+
|        1 | Aarav Sharma | 9876500001 | aarav@example.com  | Hyderabad  |
|        2 | Priya Reddy  | 9876500002 | priya@example.com  | Vijayawada |
|        3 | Rahul Kumar  | 9876500003 | rahul@example.com  | Warangal   |
|        4 | Sneha Rao    | 9876500004 | sneha@example.com  | Hyderabad  |
|        5 | Arjun Patel  | 9876500005 | arjun@example.com  | Chennai    |
|       10 | Jash         | 9876510005 | jash@example.com   | Hyderabad  |
|       12 | Sruthi       | 9876510006 | sruthi@example.com | Andhra     |
+----------+--------------+------------+--------------------+------------+
7 rows in set (0.02 sec)

mysql> select * from inventory;
+---------+-----------------+----------+---------+---------------+
| item_id | item_name       | quantity | unit    | reorder_level |
+---------+-----------------+----------+---------+---------------+
|       1 | Bath Towels     |       25 | pieces  |            10 |
|       2 | Soap Bars       |        8 | pieces  |            10 |
|       3 | Shampoo Bottles |       15 | bottles |             5 |
|       4 | Bed Sheets      |        6 | pieces  |             8 |
|       5 | Water Bottles   |       50 | bottles |            20 |
+---------+-----------------+----------+---------+---------------+
5 rows in set (0.01 sec)

mysql> select * from reservations;
+----------------+----------+---------+----------+------------+------------+----------------+--------------+---------------+----------------+
| reservation_id | guest_id | room_id | staff_id | check_in   | check_out  | booking_status | guest_name   | check_in_time | check_out_time |
+----------------+----------+---------+----------+------------+------------+----------------+--------------+---------------+----------------+
|              1 |        1 |       2 |        2 | 2026-10-10 | 2026-10-12 | Checked-In     | Aarav Sharma | 14:00:00      | 11:00:00       |
|              2 |        2 |       3 |        1 | 2026-10-11 | 2026-10-14 | Booked         | Priya Reddy  | 12:30:00      | 10:30:00       |
|              3 |        3 |       1 |        2 | 2026-10-01 | 2026-10-03 | Checked-Out    | Rahul Kumar  | 15:45:00      | 12:00:00       |
|              4 |        4 |       4 |        1 | 2026-10-15 | 2026-10-17 | Booked         | Sneha Rao    | 11:00:00      | 09:30:00       |
|              5 |        5 |       6 |        2 | 2026-09-20 | 2026-09-22 | Checked-Out    | Arjun Patel  | 16:15:00      | 13:00:00       |
+----------------+----------+---------+----------+------------+------------+----------------+--------------+---------------+----------------+
5 rows in set (0.01 sec)

mysql> select * from rooms;
+---------+-------------+-----------+-----------------+-------------+
| room_id | room_number | room_type | price_per_night | room_status |
+---------+-------------+-----------+-----------------+-------------+
|       1 | 101         | Single    |         1500.00 | Available   |
|       2 | 102         | Double    |         2500.00 | Available   |
|       3 | 201         | Deluxe    |         4000.00 | Occupied    |
|       4 | 202         | Suite     |         6500.00 | Available   |
|       5 | 301         | Double    |         2800.00 | Available   |
|       6 | 302         | Deluxe    |         4200.00 | Available   |
+---------+-------------+-----------+-----------------+-------------+
6 rows in set (0.01 sec)

mysql> select * from staff;
+----------+--------------+--------------+------------+----------+
| staff_id | staff_name   | job_role     | phone      | salary   |
+----------+--------------+--------------+------------+----------+
|        1 | Kiran Rao    | Housekeeping | 9000000001 | 45000.00 |
|        2 | Meena Das    | Housekeeping | 9000000002 | 25000.00 |
|        3 | Vikram Singh | Housekeeping | 9000000003 | 20000.00 |
|        4 | Anjali Verma | Housekeeping | 9000000004 | 30000.00 |
+----------+--------------+--------------+------------+----------+
4 rows in set (0.01 sec)

mysql> SELECT room_number, room_type, price_per_night FROM Rooms WHERE room_status='Available';
+-------------+-----------+-----------------+
| room_number | room_type | price_per_night |
+-------------+-----------+-----------------+
| 101         | Single    |         1500.00 |
| 102         | Double    |         2500.00 |
| 202         | Suite     |         6500.00 |
| 301         | Double    |         2800.00 |
| 302         | Deluxe    |         4200.00 |
+-------------+-----------+-----------------+
5 rows in set (0.00 sec)

mysql> SELECT room_number, room_type, price_per_night FROM Rooms WHERE price_per_night > 3000 ORDER BY price_per_night DESC;
+-------------+-----------+-----------------+
| room_number | room_type | price_per_night |
+-------------+-----------+-----------------+
| 202         | Suite     |         6500.00 |
| 302         | Deluxe    |         4200.00 |
| 201         | Deluxe    |         4000.00 |
+-------------+-----------+-----------------+
3 rows in set (0.00 sec)

mysql> UPDATE Rooms SET room_status='Occupied' WHERE room_number='102';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT r.reservation_id, g.full_name, rm.room_number, r.check_in, r.check_out, r.booking_status FROM Reservations r JOIN Guests g ON r.guest_id=g.guest_id JOIN Rooms rm ON r.room_id=rm.room_id ORDER BY r.reservation_id;
+----------------+--------------+-------------+------------+------------+----------------+
| reservation_id | full_name    | room_number | check_in   | check_out  | booking_status |
+----------------+--------------+-------------+------------+------------+----------------+
|              1 | Aarav Sharma | 102         | 2026-10-10 | 2026-10-12 | Checked-In     |
|              2 | Priya Reddy  | 201         | 2026-10-11 | 2026-10-14 | Booked         |
|              3 | Rahul Kumar  | 101         | 2026-10-01 | 2026-10-03 | Checked-Out    |
|              4 | Sneha Rao    | 202         | 2026-10-15 | 2026-10-17 | Booked         |
|              5 | Arjun Patel  | 302         | 2026-09-20 | 2026-09-22 | Checked-Out    |
+----------------+--------------+-------------+------------+------------+----------------+
5 rows in set (0.00 sec)

mysql> SELECT r.reservation_id, g.full_name, b.amount, b.payment_status FROM Reservations r JOIN Guests g ON r.guest_id=g.guest_id LEFT JOIN Bills b ON r.reservation_id=b.reservation_id ORDER BY r.reservation_id;
+----------------+--------------+----------+----------------+
| reservation_id | full_name    | amount   | payment_status |
+----------------+--------------+----------+----------------+
|              1 | Aarav Sharma |  5000.00 | Paid           |
|              2 | Priya Reddy  | 12000.00 | Paid           |
|              3 | Rahul Kumar  |  3000.00 | Paid           |
|              4 | Sneha Rao    | 13000.00 | Pending        |
|              5 | Arjun Patel  |  8400.00 | Paid           |
+----------------+--------------+----------+----------------+
5 rows in set (0.00 sec)

mysql> SELECT booking_status, COUNT(*) AS total_reservations FROM Reservations GROUP BY booking_status ORDER BY booking_status;
+----------------+--------------------+
| booking_status | total_reservations |
+----------------+--------------------+
| Booked         |                  2 |
| Checked-In     |                  1 |
| Checked-Out    |                  2 |
+----------------+--------------------+
3 rows in set (0.01 sec)

mysql> SELECT SUM(amount) AS total_paid_revenue FROM Bills WHERE payment_status='Paid';
+--------------------+
| total_paid_revenue |
+--------------------+
|           28400.00 |
+--------------------+
1 row in set (0.00 sec)

mysql> SELECT ROUND(AVG(price_per_night),2) AS average_room_price FROM Rooms;
+--------------------+
| average_room_price |
+--------------------+
|            3583.33 |
+--------------------+
1 row in set (0.00 sec)

mysql> SELECT DISTINCT g.guest_id, g.full_name, g.city FROM Guests g JOIN Reservations r ON g.guest_id=r.guest_id ORDER BY g.guest_id;
+----------+--------------+------------+
| guest_id | full_name    | city       |
+----------+--------------+------------+
|        1 | Aarav Sharma | Hyderabad  |
|        2 | Priya Reddy  | Vijayawada |
|        3 | Rahul Kumar  | Warangal   |
|        4 | Sneha Rao    | Hyderabad  |
|        5 | Arjun Patel  | Chennai    |
+----------+--------------+------------+
5 rows in set (0.00 sec)

mysql> SELECT r.reservation_id, g.full_name, b.amount, b.payment_status FROM Bills b JOIN Reservations r ON b.reservation_id=r.reservation_id JOIN Guests g ON r.guest_id=g.guest_id WHERE b.payment_status='Pending';
+----------------+-----------+----------+----------------+
| reservation_id | full_name | amount   | payment_status |
+----------------+-----------+----------+----------------+
|              4 | Sneha Rao | 13000.00 | Pending        |
+----------------+-----------+----------+----------------+
1 row in set (0.00 sec)

mysql> SELECT item_name, quantity, reorder_level FROM Inventory WHERE quantity <= reorder_level;
+------------+----------+---------------+
| item_name  | quantity | reorder_level |
+------------+----------+---------------+
| Soap Bars  |        8 |            10 |
| Bed Sheets |        6 |             8 |
+------------+----------+---------------+
2 rows in set (0.00 sec)

mysql> SELECT staff_name, job_role, salary FROM Staff WHERE salary > 25000 ORDER BY salary DESC;
+--------------+--------------+----------+
| staff_name   | job_role     | salary   |
+--------------+--------------+----------+
| Kiran Rao    | Housekeeping | 45000.00 |
| Anjali Verma | Housekeeping | 30000.00 |
+--------------+--------------+----------+
2 rows in set (0.00 sec)

mysql> SELECT reservation_id, DATEDIFF(check_out,check_in) AS nights FROM Reservations ORDER BY reservation_id;
+----------------+--------+
| reservation_id | nights |
+----------------+--------+
|              1 |      2 |
|              2 |      3 |
|              3 |      2 |
|              4 |      2 |
|              5 |      2 |
+----------------+--------+
5 rows in set (0.01 sec)

mysql> SELECT room_number, room_type, price_per_night FROM Rooms WHERE price_per_night=(SELECT MAX(price_per_night) FROM Rooms);
+-------------+-----------+-----------------+
| room_number | room_type | price_per_night |
+-------------+-----------+-----------------+
| 202         | Suite     |         6500.00 |
+-------------+-----------+-----------------+
1 row in set (0.01 sec)

mysql> UPDATE Bills SET payment_status='Paid' WHERE bill_id=2;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql> DELETE FROM Guests WHERE email='isha@example.com';
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT unit, SUM(quantity) AS total_quantity FROM Inventory GROUP BY unit;
+---------+----------------+
| unit    | total_quantity |
+---------+----------------+
| pieces  |             39 |
| bottles |             65 |
+---------+----------------+
2 rows in set (0.00 sec)

mysql> SELECT g.full_name, r.reservation_id, b.amount FROM Guests g JOIN Reservations r ON g.guest_id=r.guest_id JOIN Bills b ON r.reservation_id=b.reservation_id WHERE b.amount > 5000 ORDER BY b.amount DESC;
+-------------+----------------+----------+
| full_name   | reservation_id | amount   |
+-------------+----------------+----------+
| Sneha Rao   |              4 | 13000.00 |
| Priya Reddy |              2 | 12000.00 |
| Arjun Patel |              5 |  8400.00 |
+-------------+----------------+----------+
3 rows in set (0.00 sec)

mysql>