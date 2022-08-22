  SELECT d.bowler, sum(d.total_runs) total_runs_given , COUNT(d.player_dismissed) wickets, COUNT(d.bowler) balls 
  FROM deliveries d 
  GROUP BY d.bowler
  ORDER BY wickets DESC,
           total_runs_given ASC;