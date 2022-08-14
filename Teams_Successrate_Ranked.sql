  SELECT winner.winner, winner.number_of_wins, winner.win_by_runs, (team1.team1_app + team2.team2_app) total_matches_played, ((winner.number_of_wins/(team1.team1_app + team2.team2_app))*100) win_percentage 
  FROM (
    SELECT m.winner winner ,COUNT(m.winner) AS number_of_wins, SUM(m.win_by_runs) AS win_by_runs, SUM(m.win_by_wickets) AS win_by_wickets FROM matches m 
    GROUP BY m.winner) AS winner 
    JOIN (    
      SELECT m1.team1 team1,COUNT(m1.team1) AS team1_app FROM matches m1 
      GROUP BY m1.team1) AS team1 ON winner.winner = team1.team1 
    JOIN (
      SELECT m2.team2 team2,COUNT(m2.team2) AS team2_app 
      FROM matches m2 GROUP BY m2.team2) AS team2 ON winner.winner = team2.team2
    WHERE (team1.team1_app+team2.team2_app)>50
    ORDER BY win_percentage DESC
  ; 