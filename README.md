# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

rails generate devise user username:string sunday_morning:boolean sunday_afternoon:boolean sunday_night:boolean monday_morning:boolean monday_afternoon:boolean monday_night:boolean tuesday_morning:boolean tuesday_afternoon:boolean tuesday_night:boolean wednesday_morning:boolean wednesday_afternoon:boolean wednesday_night:boolean thursday_morning:boolean thursday_afternoon:boolean thursday_night:boolean friday_morning:boolean friday_afternoon:boolean friday_night:boolean saturday_morning:boolean saturday_afternoon:boolean saturday_night:boolean bio:text image:string neighborhood:string walks_count:integer

rails generate scaffold dog name:string size:string about:text image:string owner:references sunday_morning:boolean sunday_afternoon:boolean sunday_night:boolean monday_morning:boolean monday_afternoon:boolean monday_night:boolean tuesday_morning:boolean tuesday_afternoon:boolean tuesday_night:boolean wednesday_morning:boolean wednesday_afternoon:boolean wednesday_night:boolean thursday_morning:boolean thursday_afternoon:boolean thursday_night:boolean friday_morning:boolean friday_afternoon:boolean friday_night:boolean saturday_morning:boolean saturday_afternoon:boolean saturday_night:boolean neighborhood:string walks_count:integer

  rails generate scaffold walk dog:references walker:references complete:boolean


rails generate scaffold message sender:references recipient:references content:text walk:references
