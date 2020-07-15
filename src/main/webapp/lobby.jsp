<!doctype html>
<html lang="en">
	<head>
		<jsp:include page="includes/head.jsp"/>
	</head>
	<body>
		<jsp:include page="includes/navbar.jsp"/>

<div class="container">
    <div class="row">
        <div class="col-md-12">

            <jsp:include page="includes/navtabs.jsp"/>

            <div class="alert alert-primary text-center mt-3 mb-3">
                Check out the latest Sports Gambling updates and register today!
            </div>

        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <img class="card-img-top" src="/public/football1.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Example Promo 1</h5>
                    <p class="card-text">
                        Sign up for this thing and win awesome prizes.
                    </p>
                    <a href="#" class="btn btn-primary">
                        Sign Up
                        <i class="fas fa-angle-double-right"></i>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img class="card-img-top" src="/public/football1.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Example Promo 2</h5>
                    <p class="card-text">
                        Sign up for this thing and win awesome prizes.
                    </p>
                    <a href="#" class="btn btn-primary">
                        Sign Up
                        <i class="fas fa-angle-double-right"></i>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img class="card-img-top" src="/public/football1.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Example Promo 3</h5>
                    <p class="card-text">
                        Sign up for this thing and win awesome prizes.
                    </p>
                    <a href="#" class="btn btn-primary">
                        Sign Up
                        <i class="fas fa-angle-double-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <br>
    <br>

    <div class="row">
        <div class="col-md-4">
            <h1 class="text-right">
                <a href="#">
                    Create a lineup <i class="fas fa-angle-double-right"></i>
                </a>
            </h1>
        </div>
        <div class="col-md-4">
            <h1 class="text-center">
                <a href="#">
                    Create a contest <i class="fas fa-angle-double-right"></i>
                </a>
            </h1>
        </div>
        <div class="col-md-4">
            <h1 class="text-left">
                <a href="#">
                    Refer a friend <i class="fas fa-angle-double-right"></i>
                </a>
            </h1>
        </div>
    </div>

<h3 class="text-center pt-4 pb-1" style="color:white; border-top: 1px solid white;">
    Example Data Table
</h3>
<div class="card p-2 mt-3 mb-3">
    <jsp:include page="includes/demotable.jsp"/>
</div>

    <jsp:include page="includes/footer.jsp"/>

</div>
	</body>
</html>
