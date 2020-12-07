create table users(user_id Serial not null primary key, name varchar(20) not null, email varchar(50) not null,
				  password varchar(120) not null);
select * from users;
create table login_history( login_id serial primary key not null, 
						   user_id INT,
						   login_date TIMESTAMPTZ DEFAULT Now()  NOT NULL,
						   FOREIGN KEY(user_id) REFERENCES users(user_id)
						  );