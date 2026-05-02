-- SQLite table schema reference for Football Scouting Intelligence project

CREATE TABLE IF NOT EXISTS players_model_data (
    player_id INTEGER,
    name TEXT,
    age INTEGER,
    position TEXT,
    current_club_id INTEGER,
    minutes_played INTEGER,
    goals INTEGER,
    assists INTEGER,
    goals_per_90 REAL,
    assists_per_90 REAL,
    goal_contributions_per_90 REAL,
    market_value_in_eur REAL,
    log_market_value REAL,
    club_avg_market_value REAL,
    log_club_avg_market_value REAL
);

CREATE TABLE IF NOT EXISTS model_predictions (
    player_id INTEGER,
    name TEXT,
    age INTEGER,
    position TEXT,
    current_club_id INTEGER,
    minutes_played INTEGER,
    goals INTEGER,
    assists INTEGER,
    goals_per_90 REAL,
    assists_per_90 REAL,
    goal_contributions_per_90 REAL,
    market_value_in_eur REAL,
    log_market_value REAL,
    club_avg_market_value REAL,
    log_club_avg_market_value REAL,
    predicted_log_market_value REAL,
    predicted_market_value_eur REAL,
    actual_market_value_eur REAL,
    value_gap_eur REAL
);

CREATE TABLE IF NOT EXISTS undervalued_players (
    player_id INTEGER,
    name TEXT,
    age INTEGER,
    position TEXT,
    current_club_id INTEGER,
    minutes_played INTEGER,
    goals INTEGER,
    assists INTEGER,
    goals_per_90 REAL,
    assists_per_90 REAL,
    goal_contributions_per_90 REAL,
    market_value_in_eur REAL,
    log_market_value REAL,
    club_avg_market_value REAL,
    log_club_avg_market_value REAL,
    predicted_log_market_value REAL,
    predicted_market_value_eur REAL,
    actual_market_value_eur REAL,
    value_gap_eur REAL,
    scouting_score REAL
);

CREATE TABLE IF NOT EXISTS feature_importance (
    feature TEXT,
    importance REAL
);

CREATE TABLE IF NOT EXISTS model_comparison (
    model TEXT,
    mae REAL,
    rmse REAL,
    r2_score REAL
);