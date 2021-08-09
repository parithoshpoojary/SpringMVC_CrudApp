<%@page import="com.parithosh.crud.spring.data.classes.*"%>
<%@page import="java.util.List"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Posts</title>
    <style type="text/css">
    .lsp{
    	letter-spacing: 2px;
    }
    .bck{
    	background-color: #fafafa;
    }
    </style>
  </head>
  <body class="bck">
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	  <div class="container-fluid">
	    <a class="navbar-brand lsp ml-3 py-3" href="home.html">Posts</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarNav">
	      <ul class="navbar-nav lsp ml-3">
	        <li class="nav-item">
	          <a class="nav-link mx-2" href="home.html">Home</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link mx-2" href="add.html">Add</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link mx-2" href="delete.html">Delete</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link mx-2" href="update.html">Update</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active mx-2" aria-current="page" href="/view">View</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link mx-2" href="search.html">Search</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
	
	<div class="container mt-4">
		<h4 class="mt-5">Viewing Employee</h4>
		<hr>
		<table class="table table-striped align-middle mt-4">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">First Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Age</th>
					<th scope="col">Salary</th>
				</tr>
			</thead>
			<tbody>
			<% List<Employee> employees = (List<Employee>) request.getAttribute("vemployees"); %>
			<% for(Employee employee: employees){ %>
				<tr>
					<th scope="row"><%= employee.getId() %></th>
					<td><%= employee.getFname() %></td>
					<td><%= employee.getLname() %></td>
					<td><%= employee.getAge() %></td>
					<td><%= employee.getSalary() %></td>
				</tr>
			<% } %>
			</tbody>
		</table>
	</div>
	
  </body>
</html>