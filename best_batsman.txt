  SELECT d.batsman, sum(d.batsman_runs) runs, COUNT(d.batsman) balls, (sum(d.batsman_runs)/COUNT(d.batsman)) runrate, COUNT(d.player_dismissed) out_times, 
  (COUNT(d.player_dismissed)/COUNT(d.batsman))*100 out_percent 
  FROM deliveries d
  GROUP BY d.batsman
  ORDER BY balls DESC,
           out_percent ASC,
           runrate DESC;