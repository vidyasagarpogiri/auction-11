--create script for participant table

CREATE 
    TABLE auction_development.bidders 
    ( 
        id BIGINT NOT NULL AUTO_INCREMENT, 
        first_name VARCHAR(20) NOT NULL, 
        last_name VARCHAR(20) NOT NULL, 
        email VARCHAR(40) NOT NULL, 
        phone_number VARCHAR(15) NOT NULL, 
				state VARCHAR(8) NOT NULL,
        create_date DATETIME NOT NULL, 
        modified_date DATETIME NOT NULL, 
        PRIMARY KEY (id) 
    ) 
    ENGINE= ISAM DEFAULT CHARSET= utf8

--create script for item table

CREATE 
    TABLE auction_development.items 
    ( 
        id BIGINT NOT NULL AUTO_INCREMENT, 
        title VARCHAR(30) NOT NULL, 
        description VARCHAR(1000) NOT NULL, 
        minimum_bid BIGINT, 
				winning_bid BIGINT, 
        donor_id BIGINT NOT NULL, 
				bidder_id BIGINT NOT NULL, 
				state VARCHAR(8) NOT NULL, 
        image_url VARCHAR(100),
        create_date DATETIME NOT NULL, 
        modified_date DATETIME NOT NULL,  
        CONSTRAINT fk1 FOREIGN KEY (donor_id) REFERENCES auction_development.donors (id), 
				CONSTRAINT fk2 FOREIGN KEY (bidder_id) REFERENCES auction_development.bidders (id),
        PRIMARY KEY (id) 
    ) 
    ENGINE= ISAM DEFAULT CHARSET= utf8


