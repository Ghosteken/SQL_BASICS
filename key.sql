CREATE TABLE example_table (
    surrogate_key INT PRIMARY KEY,
    other_column VARCHAR(255),
    another_column INT
);

CREATE TABLE example_table (
    surrogate_key INT AUTO_INCREMENT PRIMARY KEY,
    other_column VARCHAR(255),
    another_column INT
);

CREATE TABLE example_table (
    surrogate_key INT IDENTITY(1,1) PRIMARY KEY,
    other_column VARCHAR(255),
    another_column INT
);
