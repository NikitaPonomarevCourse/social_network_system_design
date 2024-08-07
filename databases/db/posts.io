  Table posts {
	post_id serial [primary key]
	name varchar(100) [not null]
	body varchar(5000) 
	coordinates varchar(100) [note: "Example: '37°46' N 122°25' W, ISO 6709:2008"]
	created_by integer 
	is_private bool
	city varchar(100) 
	country varchar(100) 
	start_date timestamp
	end_date timestamp
  created_at timestamp
  }
  
  Table comments {
    comment_id serial [primary key]
    post_id serial [ref: > posts.post_id]
    text varchar(500) [not null]
    created_by integer
    repty_to serial 
    created_at timestamp
  }
  
   Table marks {
    mark_id serial [primary key]
    post_id serial [ref: > posts.post_id]
    mark intsmall
    created_by integer 
    created_at timestamp
  }

  Table images {
    image_id serial [primary key]
    post_id serial [ref: > posts.post_id]
    url string [not null]
    created_at timestamp
  }
