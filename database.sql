CREATE TABLE flashcards (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    frontSide VARCHAR(255) NOT NULL,
    backSide VARCHAR(255) NOT NULL,
    image VARCHAR(255) NULL,
    collectionId FOREIGN KEY (collectionid) REFERENCES collection(ID)
)

CREATE TABLE collection (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
)
