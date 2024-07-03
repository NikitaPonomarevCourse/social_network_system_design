Table users {
	user_id serial [primary key, increment]
	username varchar(50) [not null]
	city varchar(100)
	country varchar(100) 
	email varchar(100) [not null]
	password_hash varchar(200) [not null]
	created_at timestamp
  }
