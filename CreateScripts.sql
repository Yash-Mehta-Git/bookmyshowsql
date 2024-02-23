CREATE TABLE Theatre (
    TheatreID INT PRIMARY KEY,
    TheatreName VARCHAR(255),
    addressId INT,
    Capacity INT,
    FOREIGN KEY (addressId) REFERENCES TheatreAddress(addressId)
);

CREATE TABLE TheatreAddress (
    addressId INT PRIMARY KEY,
    theatreId INT,
    street VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    zipcode VARCHAR(20),
    FOREIGN KEY (theatreId) REFERENCES Theatre(theatreId)
);

CREATE TABLE Movie (
    MovieID INT PRIMARY KEY,
    MovieName VARCHAR(255),
    Genre VARCHAR(255),
    Language VARCHAR(50),
    Duration INT
);

CREATE TABLE Show (
    ShowID INT PRIMARY KEY,
    TheatreID INT,
    MovieID INT,
    Date DATE,
    StartTime TIME,
    EndTime TIME,
    FOREIGN KEY (TheatreID) REFERENCES Theatre(TheatreID),
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID),
    INDEX idx_startTime (startTime),
    INDEX idx_endTime (endTime)
);

CREATE TABLE TicketPrice (
    ticketPriceId INT PRIMARY KEY,
    showId INT,
    category VARCHAR(50),
    price DECIMAL(10, 2),
    FOREIGN KEY (showId) REFERENCES Show(showId)
);

CREATE TABLE Booking (
    BookingID INT PRIMARY KEY,
    ShowID INT,
    SeatNumber VARCHAR(10),
    UserID INT,
    BookingTime TIMESTAMP,
    FOREIGN KEY (ShowID) REFERENCES Show(ShowID)
);
