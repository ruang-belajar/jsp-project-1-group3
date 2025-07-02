<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="id">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Project Group 1 - Message Wall</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
        <style>
            body { font-family: 'Poppins', sans-serif; background-color: #f8f9fa; }
            .card-img-top { width: 100%; height: 250px; object-fit: cover; }
            .card { transition: transform .2s; }
            .card:hover { transform: scale(1.05); }
        </style>
    </head>
    <body>
        <div class="container my-5">
            <div class="text-center mb-5">
                <h1 class="display-4 fw-bold">Project Message Wall</h1>
                <p class="lead text-muted">Dibuat oleh Group 3</p>
            </div>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-4">
                <div class="col">
                    <div class="card h-100 shadow-sm">
                        <img src="raffi.webp" class="card-img-top" alt="Foto Raffi">
                        <div class="card-body text-center"><h5 class="card-title">Raffi</h5>
                            <a href="raffi.messageboard.jsp" class="btn btn-primary mt-2">Lihat Message Board</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100 shadow-sm">
                        <img src="kevin.webp" class="card-img-top" alt="Foto Kevin">
                        <div class="card-body text-center">
                            <h5 class="card-title">Kevin</h5>
                            <a href="kevin.messageboard.jsp" class="btn btn-primary mt-2">Lihat Message Board</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100 shadow-sm">
                        <img src="ridwan.webp" class="card-img-top" alt="Foto Ridwan">
                        <div class="card-body text-center"><h5 class="card-title">Ridwan</h5>
                            <a href="ridwan.messageboard.jsp" class="btn btn-primary mt-2">Lihat Message Board</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100 shadow-sm">
                        <img src="tasya.webp" class="card-img-top" alt="Foto Tasya">
                        <div class="card-body text-center">
                            <h5 class="card-title">Tasya</h5>
                            <a href="tasya.messageboard.jsp" class="btn btn-primary mt-2">Lihat Message Board</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>