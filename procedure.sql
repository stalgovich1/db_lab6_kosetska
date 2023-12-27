-- Процедура для отримання інформації про рейтинг
CREATE OR REPLACE PROCEDURE GetRatingInfo(
    p_MovieOrShowID INT,
    p_WeekID INT,
    p_CountryID INT
)
AS $$
BEGIN
    -- Отримання інформації про рейтинг за заданими параметрами
    SELECT *
    FROM Ratings
    WHERE MovieOrShowID = p_MovieOrShowID
        AND WeekID = p_WeekID
        AND CountryID = p_CountryID;
END;
$$ LANGUAGE plpgsql;
