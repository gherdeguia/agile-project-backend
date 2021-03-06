create sequence seat_sequence start 1;

CREATE TABLE if NOT EXISTS Seat(
  seat_id         BIGINT GENERATED BY DEFAULT AS IDENTITY,
  seat_num        varchar(10),
  is_available    boolean,
  screening_id    int
--  payment_id      int,
--  FOREIGN KEY (payment_id) REFERENCES Payment(id)
);
INSERT INTO Screening (id, available_seats, start_time, end_time, movie_date) values (2, 3, null, null, null);
INSERT INTO Seat (seat_id, seat_num, is_available, screening_id) values ( 1, '1A', false, 1);
INSERT INTO Seat (seat_id, seat_num, is_available, screening_id) values ( 2, '1B', true, 1);

ALTER TABLE Screening ADD COLUMN movie_id int;
ALTER TABLE Screening ADD COLUMN cinema_id int;




