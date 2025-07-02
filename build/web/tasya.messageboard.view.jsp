<%-- 
    Document   : kevin.messageboard.view
    Created on : 2 Jul 2025, 10.01.08
    Author     : Lenovo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="id">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Message Board - ${pemilik}</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
        <style>
            body { font-family: 'Poppins', sans-serif; background-color: #e9ecef; }
            .profile-pic { width: 150px; height: 150px; object-fit: cover; border: 5px solid white; }
            .message-card { max-width: 800px; margin: auto; }
        </style>
    </head>
    <body>
        <div class="container my-5">
            <div class="message-card card shadow-lg">
                <div class="card-header bg-dark text-white p-4 text-center">
                    <img src="tasya.webp" class="rounded-circle profile-pic" alt="Foto ${pemilik}">
                    <h1 class="mt-3">Message Wall untuk ${pemilik}</h1>
                    <a href="index.jsp" class="btn btn-outline-light btn-sm mt-2">Kembali ke Halaman Utama</a>
                </div>
                <div class="card-body p-4">
                    <h4 class="mb-3">Tinggalkan Pesan</h4>
                    <form method="post" action="tasya.messageboard.jsp">
                        <div class="mb-3"><label for="pengirim" class="form-label">Nama Anda</label><input type="text" id="pengirim" name="pengirim" class="form-control" placeholder="Tulis nama Anda di sini..." required></div>
                        <div class="mb-3"><label for="pesan" class="form-label">Pesan Anda</label><textarea id="pesan" name="pesan" class="form-control" rows="3" placeholder="Tulis pesan Anda di sini..." required></textarea></div>
                        <div class="d-grid"><button type="submit" class="btn btn-primary btn-lg">Kirim Pesan</button></div>
                    </form>
                </div>
                <div class="card-footer bg-white p-4">
                    <h4 class="mb-3">Pesan yang Masuk</h4>
                    <div class="list-group">
                        <c:choose>
                            <c:when test="${!empty list}"><c:forEach items="${list}" var="row"><div class="list-group-item list-group-item-action"><div class="d-flex w-100 justify-content-between"><h5 class="mb-1 text-primary">${row.pengirim}</h5></div><p class="mb-1">${row.pesan}</p></div></c:forEach></c:when>
                            <c:otherwise><p class="text-center text-muted">Belum ada pesan. Jadilah yang pertama!</p></c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>