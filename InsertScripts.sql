-- Sample entries for Theatre
INSERT INTO Theatre (TheatreID, TheatreName, Location, Capacity) VALUES
(1, 'ABC Theatre', 'City Center', 200),
(2, 'XYZ Cinema', 'Downtown', 150);

-- Sample entries for Movie
INSERT INTO Movie (MovieID, MovieName, Genre, Language, Duration) VALUES
(101, 'Inception', 'Sci-Fi', 'English', 150),
(102, 'The Dark Knight', 'Action', 'English', 180);

-- Sample entries for Show
INSERT INTO Show (ShowID, TheatreID, MovieID, Date, StartTime, EndTime) VALUES
(1001, 1, 101, '2024-02-24', '15:00:00', '17:30:00'),
(1002, 2, 102, '2024-02-24', '18:00:00', '21:00:00');

-- Sample entries for Booking
INSERT INTO Booking (BookingID, ShowID, SeatNumber, UserID, BookingTime) VALUES
(5001, 1001, 'A1', 100, '2024-02-23 12:30:00'),
(5002, 1002, 'B3', 101, '2024-02-23 15:45:00');

-- Sample entries for TicketPrice
INSERT INTO TicketPrice (ticketPriceId, showId, category, price) VALUES
(1, 1001, 'Regular', 10.00),
(2, 1001, 'VIP', 20.00),
(3, 1002, 'Regular', 12.00),
(4, 1002, 'VIP', 25.00);

-- Sample entries for TheatreAddress
INSERT INTO TheatreAddress (addressId, theatreId, street, city, state, zipcode) VALUES
(1, 1, '123 Main St', 'City Center', 'State1', '12345'),
(2, 2, '456 Broadway', 'Downtown', 'State2', '67890');

