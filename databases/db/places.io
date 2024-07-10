 Table places {
    place_id serial [primary key]
    city varchar(100)
	  country varchar(100) 
    name varchar(100) [not null]
    created_at timestamp
    coordinates varchar(100) [note: "Example: '37°46' N 122°25' W, ISO 6709:2008"]
  }
  
