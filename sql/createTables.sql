CREATE TABLE userTable (
    userID INT AUTO_INCREMENT PRIMARY KEY,
    userName VARCHAR(20) NOT NULL UNIQUE,
    pWord VARCHAR(20) NOT NULL,
    power ENUM('Invisibility','Super Strength','Telekinesis') DEFAULT 'Invisibility',
    gameID INT NOT NULL,
);

CREATE TABLE gameTable (
    gameID INT AUTO_INCREMENT PRIMARY KEY,
    timesPlayed INT NOT NULL DEFAULT 1,
    defeatedBoss INT NOT NULL DEFAULT 0,
    timeUsed TIME NOT NULL DEFAULT '00:00:00',
    lastLevel INT NOT NULL DEFAULT 1,
);

CREATE TABLE user_inventoryTable (
    userInvID INT AUTO_INCREMENT PRIMARY KEY,
    userID INT NOT NULL,
);

CREATE TABLE inventoryTable (
    inventoryID INT AUTO_INCREMENT PRIMARY KEY,
    itemID INT NOT NULL,
    userInvID INT NOT NULL,
);

CREATE TABLE itemsTable (
    itemID INT AUTO_INCREMENT PRIMARY KEY,
    userID VARCHAR(50) NOT NULL,
);

ALTER TABLE gameTable
COLUMN gameTable(gameID) REFERENCES userTable(gameID);

ALTER TABLE userTable
COLUMN userTable(userID) REFERENCES user_inventoryTable(userInvID);

ALTER TABLE user_inventoryTable
COLUMN user_inventoryTable(inventoryID) REFERENCES inventoryTable(inventoryID);

ALTER TABLE itemsTable
COLUMN itemsTable(itemID) REFERENCES inventoryTable(itemID);
