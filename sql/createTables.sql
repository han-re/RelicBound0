CREATE TABLE userTable (
    userID INT AUTO_INCREMENT PRIMARY KEY,
    userName VARCHAR(20) NOT NULL UNIQUE,
    pWord VARCHAR(20) NOT NULL,
);

CREATE TABLE gameuserTable (
    gameuserID INT AUTO_INCREMENT PRIMARY KEY,
    userID INT NOT NULL,
);


CREATE TABLE gameTable (
    gameID INT AUTO_INCREMENT PRIMARY KEY,
    power ENUM('Invisibility','Super Strength',
    'Telekinesis') DEFAULT 'Invisibility',
    defeatedBoss INT NOT NULL DEFAULT 0,
    timeUsed TIME NOT NULL DEFAULT '00:00:00',
    lastLevel VARCHAR(100) NOT NULL DEFAULT 1,
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
ADD CONSTRAINT fk_usergame
FOREIGN KEY (gameuserID) 
REFERENCES gameuserTable(gameuserID);

ALTER TABLE user_inventoryTable
ADD CONSTRAINT user_inventoryFK
FOREIGN KEY (userID) 
REFERENCES userTable(userID);

ALTER TABLE inventoryTable
ADD CONSTRAINT 
FOREIGN KEY (userinvID) 
REFERENCES user_inventoryTable(userinvID);

ALTER TABLE inventoryTable
ADD CONSTRAINT inventoryFK1
CFOREIGN KEY (itemID) 
REFERENCES itemsTable(itemID);

ALTER TABLE gameuserTable
ADD CONSTRAINT fk_user20
FOREIGN KEY (userID)
REFERENCES userTable(userID);