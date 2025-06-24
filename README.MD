# Movie Discovery App

A full-featured web application for discovering movies and TV shows. The platform enables users to search for titles, access in-depth details, curate personal watchlists, and explore trending entertainment content.

### project file structure

    movie-discovery-app/
    │
    ├── backend/
    │   ├── main.go                # Entry point
    │   ├── api/
    │   │   ├── tmdb.go            # TMDB API integration
    │   │   ├── omdb.go            # OMDB API integration
    │   │   ├── watchlist.go       # Handlers for watchlist (CRUD)
    │   ├── db/
    │   │   ├── database.go        # SQLite DB connection
    │   │   └── schema.sql         # SQL schema for tables
    │   ├── models/
    │   │   ├── movie.go           # Movie struct and helper methods
    │   │   └── watchlist.go       # Watchlist struct
    │   └── .env                   # API keys (loaded using a Go env lib)
    │
    ├── frontend/
    │   ├── index.html             # Entry HTML
    │   ├── style.css              # Styling
    │   ├── js/
    │   │   ├── main.js            # Main entry
    │   │   ├── api.js             # Fetch to Go endpoints
    │   │   ├── ui.js              # DOM manipulation
    │   │   ├── debounce.js        # Debounce helper
    │   │   └── watchlist.js       # Watchlist functions (add/remove)
    │
    ├── static/                    # Served assets
    │   └── images/
    │
    ├── go.mod
    ├── go.sum
    ├── .gitignore
    └── README.md



