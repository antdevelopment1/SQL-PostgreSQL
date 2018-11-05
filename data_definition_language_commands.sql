-- =========================================
-- SQL for creating tables with constraints
-- ========================================

CREATE TABLE table_name (  
    column_name1 data_type constraints,
    column_name2 data_type constraints,
    column_name3 data_type constraints
);
Example: 
CREATE TABLE producers (
    id SERIAL PRIMARY KEY,
     name VARCHAR(30) NOT NULL,
     age INT NOT NULL,
     nationality VARCHAR(20)
);  


-- =========================================
-- SQL FOR CREATING TABLES WITH FORIEGN KEYS
-- =========================================
CREATE TABLE table_name2 (  
      column_name1 data_type constraints,
      column_name2 data_type constraints,
      column_name3 data_type REFERENCES table_name1(column_name1)
);
Example: 

CREATE TABLE movies (
      id SERIAL PRIMARY KEY,
      name VARCHAR(30) UNIQUE NOT NULL, 
      producer_id INT REFERENCES producers(id)
);
