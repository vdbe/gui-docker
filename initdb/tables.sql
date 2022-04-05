CREATE TABLE IF NOT EXISTS users (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    name VARCHAR UNIQUE NOT NULL,
    email VARCHAR UNIQUE NOT NULL,
    password VARCHAR NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);
CREATE TABLE IF NOT EXISTS states (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    name VARCHAR UNIQUE NOT NULL,
    description TEXT NOT NULL,
    progress INTEGER UNIQUE NOT NULL
);
CREATE TABLE IF NOT EXISTS tasks (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    nr SERIAL UNIQUE,
    state UUID NOT NULL,
    created_by UUID NOT NULL,
    taken_by UUID,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    taken_at TIMESTAMP,
    completed_at TIMESTAMP,
    title VARCHAR NOT NULL,
    description TEXT NOT NULL,
    CONSTRAINT fk_state FOREIGN KEY(state) REFERENCES states(id),
    CONSTRAINT fk_created_by FOREIGN KEY(created_by) REFERENCES users(id),
    CONSTRAINT fk_taken_by FOREIGN KEY(taken_by) REFERENCES users(id)
);
CREATE TABLE IF NOT EXISTS refreshtokens (
       id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
       token UUID DEFAULT gen_random_uuid() UNIQUE NOT NULL,
       user_id UUID NOT NULL,
       expiry_date TIMESTAMP NOT NULL,
       CONSTRAINT fk_user_id FOREIGN KEY(user_id) REFERENCES users(id)
);
