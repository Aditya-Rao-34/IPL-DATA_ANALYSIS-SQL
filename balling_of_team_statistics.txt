  SELECT d.bowling_team ,SUM(d.total_runs) runs_given , COUNT(d.player_dismissed) wickets, COUNT(d.bowling_team) balls, 
  (SUM(d.total_runs)/count(d.bowling_team)) runrate,
  (count(d.player_dismissed)/COUNT(d.bowling_team))*100 out_percent, count(d.fielder) fielding
  FROM deliveries d 
  GROUP BY d.bowling_team
  ORDER BY wickets DESC, runs_given ASC;