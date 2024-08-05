CREATE TABLE IF NOT EXISTS app_user (
    id BIGSERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    oauth2_sub VARCHAR(255) UNIQUE NOT NULL,
);

CREATE TABLE IF NOT EXISTS task (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    is_done BOOLEAN,
    user_id BIGINT,
    FOREIGN KEY (user_id) REFERENCES app_user(id) ON DELETE CASCADE
);