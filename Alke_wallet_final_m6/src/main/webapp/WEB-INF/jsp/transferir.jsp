<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transferir</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"rel="stylesheet"integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&display=swap"rel="stylesheet">
<style>
body {
	background-color: #f3e5f5;
	padding-top: 20px;
	font-family: "Dancing Script", cursive;
	font-weight: 400;
	font-style: normal;
}
.container {
	padding: 20px 200px;
	justify-content: center;
	align-items: center;
	background-color: white;
	border-radius: 1rem;
}

h1 {
	color: black;
	font-size: 2.50em;
	font-weight: bold;
}

h2 {
	font-size: 2em;
	font-weight: bold;
}

.btn {
	font-size: 1.50em;
}

label {
	font-weight: bold;
	font-size: 2em;
}
</style>
</head>
<header>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand fs-2 text-dark">Alke Wallet</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active fs-5 text-dark" aria-current="page" href='/home'>Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link fs-5 text-dark" href='/depositar'>Depositar</a>
        </li>
        <li class="nav-item">
          <a class="nav-link fs-5 text-dark" href='/retirar'>Retirar</a>
        </li>
        <li class="nav-item">
          <a class="nav-link fs-5 text-dark" href='/transferir'>Transferir a un tercero</a>
        </li>
        <li class="nav-item">
          <a class="nav-link fs-5 text-dark" href='/historial'>Ver Historial de Transacciones</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</header>
<body>
<div class="container">
    <div class="text-center">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4riIGDL4H2FYaJIyqPSe_is4bTo0QeVNp4Q&s" alt="Alke Wallet Logo" style="border-radius: 10px; margin-bottom: 20px;">
        <h1>Alke Wallet</h1>
        <h2>Transferir</h2>
        <form id="transferForm" action="/transferir" method="post">
            <div class="mb-3">
                <label for="receiverUserId" class="form-label">ID del Destinatario:</label>
                <input type="number" id="receiverUserId" name="receiverUserId" class="form-control">
            </div>
            <div class="mb-3">
                <label for="valor" class="form-label">Monto:</label>
                <input type="number" id="valor" name="valor" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary">Transferir</button>
            <a href="<c:url value='/home'/>" class="btn btn-secondary">Volver al Menú</a>
        </form>
    </div>
</div>

<script>
    const alertaTitulo = '<%= (request.getAttribute("alertaTitulo") != null) ? request.getAttribute("alertaTitulo") : "" %>';
    const alertaMensaje = '<%= (request.getAttribute("alertaMensaje") != null) ? request.getAttribute("alertaMensaje") : "" %>';
    const alertaTipo = '<%= (request.getAttribute("alertaTipo") != null) ? request.getAttribute("alertaTipo") : "" %>';

    if (alertaTitulo && alertaMensaje && alertaTipo) {
        Swal.fire({
            title: alertaTitulo,
            text: alertaMensaje,
            icon: alertaTipo.toLowerCase()
        });
    }
</script>
</body>
</html>