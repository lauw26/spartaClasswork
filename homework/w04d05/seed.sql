DROP TABLE IF EXISTS champion;

CREATE TABLE champion (

  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  position VARCHAR(255),
  cost INTEGER,
  passive VARCHAR(255),
  ability1 VARCHAR(255),
  ability2 VARCHAR(255),
  ability3 VARCHAR(255),
  ultimate VARCHAR(255),
  lore TEXT

);