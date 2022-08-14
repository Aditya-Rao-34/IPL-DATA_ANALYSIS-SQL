SELECT m.player_of_match, COUNT(m.player_of_match) motm 
FROM matches m 
GROUP BY m.player_of_match 
ORDER BY motm DESC;
