-- Виклик функції AddRating для додавання нового рейтингу
SELECT AddRating(1, 1, 1, 1, 1000000, 120);

-- Виклик функції GetRatingInfo та отримання результату в PostgreSQL
SELECT * FROM GetRatingInfo(1, 1, 1);

-- Додавання нового рейтингу, що спричинить виклик тригера BeforeInsertRating
INSERT INTO Ratings (MovieOrShowID, WeekID, CountryID, Rank, Viewership, Duration)
VALUES (2, 1, 1, 2, 500000, 90)
RETURNING *; -- Додано RETURNING для отримання результатів вставки

-- Виклик процедури GetRatingInfo для отримання інформації про новий рейтинг
SELECT * FROM GetRatingInfo(2, 1, 1);
