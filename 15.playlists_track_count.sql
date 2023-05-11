SELECT
    p.name AS Playlist_Name,
    COUNT(pt.playlistId) AS Number_of_Tracks
FROM Playlist p 
JOIN PlaylistTrack pt ON p.playlistId = pt.playlistId
GROUP BY p.playlistId