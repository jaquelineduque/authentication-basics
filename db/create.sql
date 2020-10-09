CREATE DATABASE authentication;

CREATE TABLE IF NOT EXISTS thirdPartyPlataforms(
		id SERIAL, 
    	CONSTRAINT PK_thirdPartyPlataforms_id PRIMARY KEY (id),
    	name varchar(70)
);

CREATE TABLE IF NOT EXISTS users(
		id SERIAL, 
    	CONSTRAINT PK_users_id PRIMARY KEY (id),
    	email varchar(200) NOT null,
    	password varchar(30)
);

CREATE TABLE IF NOT EXISTS thirdPartyAuth(
		id SERIAL, 
    	CONSTRAINT PK_thirdPartyAuths_id PRIMARY KEY (id),
    	userId INT NOT NULL,
		CONSTRAINT FK_thirdPartyAuths_userId FOREIGN KEY (userId)
			REFERENCES users(id),
		plataformId INT NOT NULL,
		CONSTRAINT FK_thirdPartyAuths_plataformId FOREIGN KEY (plataformId)
			REFERENCES thirdPartyPlataforms(id),
		plataformUserId INT NOT NULL
);