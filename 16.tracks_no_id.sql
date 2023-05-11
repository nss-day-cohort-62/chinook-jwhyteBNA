SELECT
    t.name AS 'Track Name',
    al.title AS 'Album Title',
    mt.name AS 'Media Type',
    g.name AS 'Genre'
FROM Track t
JOIN Album al ON t.albumId = al.albumId
JOIN MediaType mt ON t.mediaTypeId = mt.mediaTypeId
JOIN Genre g ON t.genreId = g.genreId