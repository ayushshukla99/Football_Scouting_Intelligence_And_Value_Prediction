-- Best performing ML model
SELECT 
    model,
    mae,
    rmse,
    r2_score
FROM model_comparison
ORDER BY r2_score DESC
LIMIT 1;


-- Top undervalued players by scouting score
SELECT
    name,
    age,
    position,
    minutes_played,
    goals,
    assists,
    actual_market_value_eur,
    predicted_market_value_eur,
    value_gap_eur,
    scouting_score
FROM undervalued_players
ORDER BY scouting_score DESC
LIMIT 10;


-- Top model feature importances
SELECT
    feature,
    importance
FROM feature_importance
ORDER BY importance DESC
LIMIT 10;


-- Best young attacking scouting targets
SELECT
    name,
    age,
    position,
    goals,
    assists,
    goal_contributions_per_90,
    actual_market_value_eur,
    predicted_market_value_eur,
    value_gap_eur,
    scouting_score
FROM undervalued_players
WHERE age <= 23
  AND position = 'Attack'
ORDER BY scouting_score DESC
LIMIT 10;