  SELECT d.batting_team ,SUM(d.total_runs) runs , COUNT(d.player_dismissed) wickets_lost, COUNT(d.batting_team) balls, (SUM(d.total_runs)/count(d.batting_team)) runrate, (count(d.player_dismissed)/COUNT(d.batting_team))*100 out_percent
  FROM deliveries d 
  GROUP BY d.batting_team
  ORDER BY runs DESC, wickets_lost ASC;