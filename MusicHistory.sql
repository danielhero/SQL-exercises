--SELECT
--Id,
--[Label]
--FROM Genre;


--SELECT
--Id,
--ArtistName,
--YearEstablished
--FROM Artist
--ORDER BY ArtistName;


--SELECT
--song.Title,
--artist.ArtistName
--FROM Song song
--JOIN Artist artist ON song.ArtistId = artist.Id;


--SELECT
--artist.ArtistName,
--genre.[Label]
--FROM Album album
--JOIN Artist artist ON album.ArtistId = artist.Id
--JOIN Genre genre ON album.GenreId = genre.Id
--WHERE genre.[Label] = 'Pop'  


--SELECT
--artist.ArtistName,
--genre.[Label]
--FROM Album album
--JOIN Artist artist ON album.ArtistId = artist.Id
--JOIN Genre genre ON album.GenreId = genre.Id
--WHERE genre.[Label] = 'Rock' OR genre.[Label] = 'Jazz'
--GROUP BY genre.[Label], artist.ArtistName;


--SELECT
--album.Title AS 'Album Title',
--song.Title AS 'Song Title'
--FROM Song song
--RIGHT JOIN Album album ON song.AlbumId = album.Id
--WHERE song.AlbumId IS NULL;


--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Billy Joel', 1971);


--INSERT INTO Album (Title, ReleaseDate, AlbumLength, [Label], ArtistId, GenreId) VALUES ('The Stranger', '9/29/1977', 1502, 'Columbia', 28, 2);


--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Scenes From an Italian Restaurant', 7, '9/29/1977', 2, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Movin''Out (Anthony''s Song)', 3, '9/29/1977', 2, 28, 23);


--SELECT
--artist.ArtistName,
--album.Title,
--song.Title
--FROM Song song
--JOIN Artist artist ON song.ArtistId = artist.Id
--JOIN Album album ON song.AlbumId = album.Id
--WHERE artist.Id = 28;


--SELECT 
--album.Title,
--COUNT(song.Id) AS 'Song Count'
--FROM Song song 
--RIGHT JOIN Album album ON song.AlbumId = album.Id
--GROUP BY (album.Title);


--SELECT 
--artist.ArtistName,
--COUNT(song.Id) AS 'Song Count'
--FROM Song song 
--Right Join Artist artist ON song.ArtistId = artist.Id
--GROUP BY (artist.ArtistName);


--SELECT genre.[Label], 
--COUNT(song.Id) AS 'Song Count' 
--FROM Genre genre
--LEFT JOIN Song song ON song.GenreId = genre.Id
--GROUP BY (genre.[Label])


--SELECT
--artist.ArtistName,
--COUNT (DISTINCT album.[Label]) RecordLabel
--FROM Artist artist
--JOIN Album album on album.ArtistId = artist.Id
--GROUP BY artist.ArtistName
--HAVING COUNT (DISTINCT album.[Label]) > 1;


--SELECT 
--Title,
--AlbumLength
--FROM Album
--WHERE AlbumLength = 
--	(SELECT MAX(AlbumLength)
--	FROM Album);


--SELECT 
--Title,
--SongLength
--FROM Song
--WHERE SongLength = 
--	(SELECT MAX(SongLength)
--	FROM Song);


--SELECT 
--album.Title,
--song.Title,
--song.SongLength
--FROM Song song
--JOIN Album album ON song.AlbumId = album.Id
--WHERE SongLength = 
--	(SELECT MAX(SongLength)
--	FROM Song);
 