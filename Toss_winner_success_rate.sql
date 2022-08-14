SELECT m.toss_winner ,COUNT(m.toss_winner), SUM(COUNT(m.toss_winner)) FROM matches m 
WHERE m.toss_winner = m.winner 
GROUP BY m.toss_winner;