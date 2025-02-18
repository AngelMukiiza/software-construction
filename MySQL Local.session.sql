CREATE TABLE users(
    user_id VARCHAR(225) PRIMARY KEY,
    email VARCHAR(225) UNIQUE NOT NULL,
    fname VARCHAR(225) NOT NULL
);
CREATE TABLE symptoms (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id VARCHAR(255),
    date_time DATETIME NOT NULL,
    symptom_description TEXT NOT NULL,
    severity ENUM('low', 'medium', 'high') NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE risk_assessments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id VARCHAR(255),
    risk_level ENUM('low', 'moderate', 'high') NOT NULL,
    recommendations TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

SHOW TABLES;
