SELECT matches.home_team_goal + matches.away_team_goal as total_goals, matches.season,
	(SELECT team_long_name 
	FROM teams
	WHERE teams.team_api_id = matches.home_team_api_id) as home_team,
	matches.home_team_goal,
	
	(SELECT team_long_name 
	FROM teams
	WHERE teams.team_api_id = matches.away_team_api_id)as away_team,
	matches.away_team_goal

FROM matches
ORDER BY total_goals DESC
LIMIT 10;

