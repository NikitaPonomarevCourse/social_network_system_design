  Table chats {
	chat_id serial [primary key]
	name varchar(100) [not null]
	created_by integer 
  }

  Table chats_members {
    chat_id serial [ref: > chats.chat_id]
    user_id integer 
    last_read_message_id bigserial [ref: > chats_messages.message_id] 
  }
  
  
  Table chats_messages {
	message_id bigserial [primary key]
	chat_id serial [ref: >  chats.chat_id]
	message string [not null]
	creator_id integer 
	created_at timestamp
  }
  
