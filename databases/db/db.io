Table users {
	user_id serial [primary key, increment]
	username varchar(50) [not null]
	city varchar(100)
	country varchar(100) 
	email varchar(100) [not null]
	password_hash varchar(200) [not null]
	created_at timestamp
  }
  
  Table subscriptions {
    subscribtion_id bigserial [primary key]
	account_id integer [ref: > users.user_id]
	subscriber_id integer [ref: > users.user_id]
	created_at timestamp
  }
  
  Table chats {
	chat_id serial [primary key]
	name varchar(100) [not null]
	created_at timestamp [ref: > users.user_id]
	users "[]integer" [not null, ref: > users.user_id]
  }
  
  Table chats_messages {
	message_id bigserial [primary key]
	chat_id serial [ref: >  chats.chat_id]
	message string [not null]
	creator_id integer [ref: > users.user_id]
	created_at timestamp
  is_read bool
  }
  
  Table posts {
	post_id serial [primary key]
	name varchar(100) [not null]
	body varchar(5000) 
	coordinates varchar(100) 
	created_by integer [ref: > users.user_id]
	is_private bool
	city varchar(100) [ref: <> places.city]
	country varchar(100) [ref: <> places.country]
	start_date timestamp
	end_date timestamp
  created_at timestamp
  }
  
  Table comments {
    comment_id serial [primary key]
    post_id serial [ref: > posts.post_id]
    text varchar(500) [not null]
    created_by integer [ref: > users.user_id]
    created_at timestamp
  }
  
   Table marks {
    mark_id serial [primary key]
    post_id serial [ref: > posts.post_id]
    mark intsmall
    created_by integer [ref: > users.user_id]
    created_at timestamp
  }

  Table images {
    image_id serial [primary key]
    post_id serial [ref: > posts.post_id]
    url string [not null]
    created_at timestamp
  }
  
  Table places {
    place_id serial [primary key]
    city varchar(100)
	  country varchar(100) 
    name varchar(100) [not null]
    created_at timestamp
  }
  
