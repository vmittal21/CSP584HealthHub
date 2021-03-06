<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Health Hub Homepage</title>
    <!-- Link to font awesome CDN -->
    <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">
    <!-- Link to bootstrap CDN -->
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet" />
    <!-- Import font awesome CDN -->
    <script src="https://use.fontawesome.com/6373855059.js"></script>
    <!-- Link to bootstrap CDN -->
    <script
      src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
      integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"
    ></script>
  </head>

  <body>
    <!-- Header-->
    <header class="navbar navbar-expand fixed-top justify-content-between">
      <a class="navbar-brand text-light">Health Hub</a>
      <form id="search-form" class="form-inline">
        <input
          id="search-input"
          class="form-control form-control-sm mr-sm-2"
          type="search"
          placeholder="Search"
          aria-label="Search"
        />
        <button id="search-btn" class="btn btn-sm my-sm-0" type="submit"><i class="fas fa-search"></i></button>
      </form>
      <ul class="navbar-nav flex-row">
        <li class="nav-item dropdown mr-3">
          <a
            class="nav-link dropdown-toggle text-light"
            href="#"
            id="navbarDropdownMenuLink"
            data-toggle="dropdown"
            aria-haspopup="true"
            aria-expanded="false"
          >
          <%
          	String username = (String)request.getSession().getAttribute("username");
          	if(username != null){
          		out.println("<i class='far fa-user'>" + username + "</i></a>");
          		out.println("<div class='dropdown-menu' aria-labelledby='navbarDropdownMenuLink'>"
          	            +"<a class='dropdown-item' href='logout.jsp'>Log out</a>"
          	            +"<a class='dropdown-item' href='viewSchedule.jsp'>View Schedule</a>"
          	            +"<a class='dropdown-item' href='viewOrder.jsp'>View Order</a>"
          	          	+"</div>");
          	}else{
          		out.println("<i class='far fa-user'> Account</i></a>");
          		out.println("<div class='dropdown-menu' aria-labelledby='navbarDropdownMenuLink'>"
          	            +"<a class='dropdown-item' href='login.jsp'>Sign in</a>"
          	            +"<a class='dropdown-item' href='register.jsp'>Create account</a>"
          	            +"<a class='dropdown-item' href='admin.jsp'>Admin</a>"
          	          	+"</div>");
          	}
          %>
        </li>
        <li class="nav-item ml-3">
          <a class="nav-link text-light" href="#"><i class="fas fa-shopping-cart"></i></a>
        </li>
      </ul>
    </header>
    
    <!-- Navigation -->
    <nav
      class="navbar justify-content-center navbar-light fixed-top fixed-top-2"
    >
      <ul class="nav">
        <li class="nav-item px-3">
          <a class="nav-link active" href="#"><i class="fas fa-home"></i> Home</a>
        </li>
        <li class="nav-item px-3">
          <a class="nav-link active" href="#"><i class="fas fa-calendar-alt"></i> Schedule an Appointment</a>
        </li>
        <li class="nav-item px-3">
          <a class="nav-link" href="#"><i class="fas fa-stethoscope"></i> Find a Doctor</a>
        </li>
        <li class="nav-item px-3">
          <a class="nav-link" href="#"><i class="far fa-compass"></i> Find a Location</a>
        </li>
        <li class="nav-item dropdown px-3">
          <a
            class="nav-link dropdown-toggle"
            href="#"
            id="navbarDropdownMenuLink"
            data-toggle="dropdown"
            aria-haspopup="true"
            aria-expanded="false"
          ><i class="fas fa-shopping-bag"></i> 
            Product
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="#">Category#1</a>
            <a class="dropdown-item" href="#">Category#2</a>
            <a class="dropdown-item" href="#">Category#3</a>
          </div>
        </li>
      </ul>
    </nav>

    <!-- Page Content -->
    <div class="container">
      <!-- <div class="row">
        <div class="col-lg-3">
          <div class="list-group my-4">
            <a href="#" class="list-group-item">Appointments</a>
            <a href="#" class="list-group-item">Doctor</a>
            <a href="#" class="list-group-item">Health Hubs</a>
            <a href="#" class="list-group-item">Insurances</a>
            <a href="#" class="list-group-item">Products</a>
          </div>
        </div> -->
        <!-- /.col-lg-3 -->
        <div class="col-lg-9 mx-auto">
          <div
            id="carouselExampleIndicators"
            class="carousel slide my-4"
            data-ride="carousel"
          >
            <ol class="carousel-indicators">
              <li
                data-target="#carouselExampleIndicators"
                data-slide-to="0"
                class="active"
              ></li>
              <li
                data-target="#carouselExampleIndicators"
                data-slide-to="1"
              ></li>
              <li
                data-target="#carouselExampleIndicators"
                data-slide-to="2"
              ></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img
                  class="d-block img-fluid"
                  src="./image/event01.jpg"
                  alt="First slide"
                  style="width: 900px; height: 350px"
                />
              </div>
              <div class="carousel-item">
                <img
                  class="d-block img-fluid"
                  src="http://placehold.it/900x350"
                  alt="Second slide"
                />
              </div>
              <div class="carousel-item">
                <img
                  class="d-block img-fluid"
                  src="http://placehold.it/900x350"
                  alt="Third slide"
                />
              </div>
            </div>
            <a
              class="carousel-control-prev"
              href="#carouselExampleIndicators"
              role="button"
              data-slide="prev"
            >
              <span
                class="carousel-control-prev-icon"
                aria-hidden="true"
              ></span>
              <span class="sr-only">Previous</span>
            </a>
            <a
              class="carousel-control-next"
              href="#carouselExampleIndicators"
              role="button"
              data-slide="next"
            >
              <span
                class="carousel-control-next-icon"
                aria-hidden="true"
              ></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

          <h4 class="my-4">Recommended products for you</h4>
          
          <div class="row">
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"
                  ><img
                    class="card-img-top"
                    src="./image/pic01.jpg"
                    style="height: 200px"
                    alt=""
                /></a>
                <div class="card-body">
                  <h5 class="card-title">
                    <a href="#"
                      >Melatonin 1 mg Fast Dissolve Tablets Strawberry</a
                    >
                  </h5>
                  <p>$6.99</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted"
                    >&#9733; &#9733; &#9733; &#9733; &#9734;</small
                  >
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"
                  ><img
                    class="card-img-top"
                    src="./image/pic02.jpg"
                    style="height: 200px"
                    alt=""
                /></a>
                <div class="card-body">
                  <h5 class="card-title">
                    <a href="#">Power Extending Formula Male Enhancement</a>
                  </h5>
                  <p>$12.99</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted"
                    >&#9733; &#9733; &#9733; &#9733; &#9734;</small
                  >
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"
                  ><img
                    class="card-img-top"
                    src="./image/pic03.jpg"
                    style="height: 200px"
                    alt=""
                /></a>
                <div class="card-body">
                  <h5 class="card-title">
                    <a href="#">Melatonin Quick Dissolve 3 mg Cherry</a>
                  </h5>
                  <p>$6.99</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted"
                    >&#9733; &#9733; &#9733; &#9733; &#9734;</small
                  >
                </div>
              </div>
            </div>
          </div>
          <!-- /.row -->
        </div>
        <!-- /.col-lg-9 -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container -->
    <!-- Footer -->
    <footer class="py-4">
      <div class="container">
        <p class="m-0 text-center text-white">
          Copyright &copy; Health Hub 2020
        </p>
      </div>
      <!-- /.container -->
    </footer>
  </body>
</html>
