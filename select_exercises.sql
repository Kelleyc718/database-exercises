use codeup_test_db;
SELECT 'Albums' AS 'Info', name FROM albums WHERE artist = 'Pink Floyd';\G

SELECT 'Release Date' AS 'Info' FROM albums WHERE name='Sgt. Pepper''s';\G

SELECT 'Genre' AS 'Info', genre, artist from albums WHERE name = 'Nevermind';\G

SELECT 'Albums' AS 'Info', artist, name FROM albums WHERE release_date < 2000 && albums.release_date > 1989;\G

SELECT 'Sales' AS Info, artist, name, sales FROM albums WHERE sales < 20;\G

SELECT  'Rock' AS Info, artist, name, genre FROM albums WHERE genre = 'rock';\G