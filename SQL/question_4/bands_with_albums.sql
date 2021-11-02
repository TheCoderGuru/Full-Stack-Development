/*Get all Bands that have Albums

There are multiple different ways to solve this problem, but they will all involve a join.

Return the band name as Band Name.

*/

SELECT DISTINCT bands.name AS 'Band Name'
FROM bands
JOIN albums on bands.id = albums.band_id;