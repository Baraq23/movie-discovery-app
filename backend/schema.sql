CREATE TABLE IF NOT EXISTS users (
    id TEXT PRIMARY KEY,
    email TEXT UNIQUE NOT NULL,
    password_hash TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS watchlist (
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    user_id TEXT NOT NULL,                          -- Foreign key to users.id
    tmdb_id INTEGER NOT NULL,
    title TEXT NOT NULL,
    watch_type TEXT NOT NULL,                       -- "movie" or "tv"
    added_at DATETIME DEFAULT CURRENT_TIMESTAMP,

    UNIQUE(user_id, tmdb_id),                       -- Prevent same user from saving same movie twice
    FOREIGN KEY(user_id) REFERENCES users(id)       -- Foreign key constraint
);


BEGIN TRANSACTION;

INSERT OR IGNORE INTO users (id, email, password_hash) VALUES
  ('user-001', 'alice@example.com', 'hashed_password_1'),
  ('user-002', 'bob@example.com', 'hashed_password_2'),
  ('user-003', 'charlie@example.com', 'hashed_password_3'),
  ('user-004', 'diana@example.com', 'hashed_password_4'),
  ('user-005', 'eric@example.com', 'hashed_password_5');


INSERT OR IGNORE INTO watchlist (user_id, tmdb_id, title, watch_type) VALUES
  ('user-001', 603692, 'John Wick: Chapter 4', 'movie'),
  ('user-002', 1399, 'Game of Thrones', 'tv'),
  ('user-003', 634649, 'Spider-Man: No Way Home', 'movie'),
  ('user-004', 82856, 'The Mandalorian', 'tv'),
  ('user-005', 385687, 'Fast & Furious 9', 'movie');


COMMIT;