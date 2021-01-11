Golden Goals 

Users to the website will create goals that they hope to accomplish. 

Each goal has title, status, feeling/motitvation, description


<% if logged_in? %>
  <% @user = current_user %>
  <%=@user.name%>
  if @user.goals == []
  <You currently have no goals. Let's work on that. You can click the button above to create a new goal. >
  else 

<% @user.goals.each do |goal| 
  goal.title 
  end 

  <% else redirect '/failure' %>


