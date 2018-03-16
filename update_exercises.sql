USE codeup_test_db;
SELECT 'All Albums' AS 'Info', name, artist FROM albums;\G
UPDATE albums SET sales = (sales * 10);
SELECT * FROM albums;\G

SELECT 'Released in 1980' AS 'Info', name, artist FROM albums WHERE release_date <
                                                                    1980;\G
UPDATE albums SET release_date = 1800 WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1900;\G

SELECT 'Michael Jackson' AS 'Info', name, release_date FROM albums WHERE artist = 'Michael Jackson';\G
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Peter Jackson';\G