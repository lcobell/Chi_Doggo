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


<table class="table table-hover table-striped table-info table-bordered">
  <thead>
    <tr>
      <th>Name</th>
      <th>Size</th>
      <th>About</th>
      <th>Image</th>
      <th>Owner</th>
      <th>Sunday morning</th>
      <th>Sunday afternoon</th>
      <th>Sunday night</th>
      <th>Monday morning</th>
      <th>Monday afternoon</th>
      <th>Monday night</th>
      <th>Tuesday morning</th>
      <th>Tuesday afternoon</th>
      <th>Tuesday night</th>
      <th>Wednesday morning</th>
      <th>Wednesday afternoon</th>
      <th>Wednesday night</th>
      <th>Thursday morning</th>
      <th>Thursday afternoon</th>
      <th>Thursday night</th>
      <th>Friday morning</th>
      <th>Friday afternoon</th>
      <th>Friday night</th>
      <th>Saturday morning</th>
      <th>Saturday afternoon</th>
      <th>Saturday night</th>
      <th>Neighborhood</th>
      <th>Walks count</th>
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
    <% @dogs.each do |dog| %>
      <tr>
        <td><%= dog.name %></td>
        <td><%= dog.size %></td>
        <td><%= dog.about %></td>
        <td><%= dog.image %></td>
        <td><%= dog.owner.username %></td>
        <td><%= dog.sunday_morning %></td>
        <td><%= dog.sunday_afternoon %></td>
        <td><%= dog.sunday_night %></td>
        <td><%= dog.monday_morning %></td>
        <td><%= dog.monday_afternoon %></td>
        <td><%= dog.monday_night %></td>
        <td><%= dog.tuesday_morning %></td>
        <td><%= dog.tuesday_afternoon %></td>
        <td><%= dog.tuesday_night %></td>
        <td><%= dog.wednesday_morning %></td>
        <td><%= dog.wednesday_afternoon %></td>
        <td><%= dog.wednesday_night %></td>
        <td><%= dog.thursday_morning %></td>
        <td><%= dog.thursday_afternoon %></td>
        <td><%= dog.thursday_night %></td>
        <td><%= dog.friday_morning %></td>
        <td><%= dog.friday_afternoon %></td>
        <td><%= dog.friday_night %></td>
        <td><%= dog.saturday_morning %></td>
        <td><%= dog.saturday_afternoon %></td>
        <td><%= dog.saturday_night %></td>
        <td><%= dog.neighborhood %></td>
        <td><%= dog.walks_count %></td>
        <td><%= link_to 'Show', dog %></td>
        <td><%= link_to 'Edit', edit_dog_path(dog) %></td>
        <td><%= link_to 'Destroy', dog, method: :delete, data: { confirm: 'Are you sure?' } %></td>
      </tr>
    <% end %>
  </tbody>
</table>
