/* Select the Oldest Album 

Make sure to only return one result from this query, and that you are not returning any albums that do not have a release year.

*/

SELECT * FROM albums
WHERE release_year
ORDER BY release_year DESC
LIMIT 1;