CREATE TABLE app_data_19(
app_name VARCHAR ,
category VARCHAR, 
rating  VARCHAR  ,
reviews VARCHAR ,
app_size VARCHAR ,
installs VARCHAR ,
content_rating VARCHAR ,
last_updated VARCHAR ,
PRIMARY KEY (app_name)
); 

CREATE TABLE app_data_20(
app_name VARCHAR ,
genre VARCHAR ,
rating  VARCHAR  ,
reviews VARCHAR ,
updated VARCHAR ,
app_size VARCHAR ,
installs VARCHAR ,
content_rating VARCHAR ,
PRIMARY KEY (app_name)
); 

DROP TABLE app_data_19;
DROP TABLE app_data_20;

SELECT * from app_data_19;

SELECT  d_19.app_name,
        d_19.category,
        d_19.rating,
        d_19.reviews,
        d_19.app_size,
        d_19.installs,
        d_19.content_rating,
		d_19.last_updated
FROM app_data_19 as d_19
LEFT JOIN app_data_20 as d_20
ON (d_19.app_name = d_20.app_name);

