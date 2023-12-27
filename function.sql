-- Функція для додавання нового рейтингу
CREATE OR REPLACE FUNCTION AddRating(
    p_MovieOrShowID INT,
    p_WeekID INT,
    p_CountryID INT,
    p_Rank INT,
    p_Viewership INT,
    p_Duration INT
)
RETURNS VOID AS $$
BEGIN
    INSERT INTO Ratings (MovieOrShowID, WeekID, CountryID, Rank, Viewership, Duration)
    VALUES (p_MovieOrShowID, p_WeekID, p_CountryID, p_Rank, p_Viewership, p_Duration);
END;
$$ LANGUAGE plpgsql;