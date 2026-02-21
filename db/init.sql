CREATE TABLE IF NOT EXISTS jobs (
    id SERIAL PRIMARY KEY,
    company TEXT,
    title TEXT,
    location TEXT,
    url TEXT UNIQUE,
    description TEXT,
    posted_at TIMESTAMP,
    score INTEGER,
    visa_flag BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_jobs_score ON jobs(score);
CREATE INDEX IF NOT EXISTS idx_jobs_posted ON jobs(posted_at);
