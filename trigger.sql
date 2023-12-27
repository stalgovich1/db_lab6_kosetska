-- Тригер для оновлення кількості переглядів перед вставкою нового рейтингу
CREATE OR REPLACE FUNCTION UpdateViewershipBeforeInsert()
RETURNS TRIGGER AS $$
BEGIN
    NEW.Viewership := NEW.Viewership * 2;  -- Наприклад, подвоїмо кількість переглядів перед вставкою

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Створення тригера BEFORE INSERT
CREATE TRIGGER BeforeInsertRating
BEFORE INSERT ON Ratings
FOR EACH ROW
EXECUTE FUNCTION UpdateViewershipBeforeInsert();
