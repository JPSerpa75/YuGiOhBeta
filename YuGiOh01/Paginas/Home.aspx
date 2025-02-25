﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="YuGiOh01.Paginas.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <div class="navbar-brand ps-2">Home</div>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#myNav">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse justify-content-end pe-1" id="myNav">
                <ul class="navbar-nav">

                    <li class="nav-item">
                        <a class="nav-link" runat="server" href="~/Home">Home</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Gerenciar
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" runat="server" href="~/Armadilha">Gerenciar Armadilhas</a></li>
                            <li><a class="dropdown-item" runat="server" href="~/Atributo">Gerenciar Atributo</a></li>
                            <li><a class="dropdown-item" runat="server" href="~/Icone">Gerenciar Icone</a></li>
                            <li><a class="dropdown-item" runat="server" href="~/Magias">Gerenciar Magias</a></li>
                            <li><a class="dropdown-item" runat="server" href="~/Monstro">Gerenciar Monstro</a></li>
                            <li><a class="dropdown-item" runat="server" href="~/MonstroEfeito">Gerenciar Monstro de Efeito</a></li>
                            <li><a class="dropdown-item" runat="server" href="~/MonstroPendulo">Gerenciar Monstro Pendulo</a></li>
                            <li><a class="dropdown-item" runat="server" href="~/TipoCarta">Gerenciar Tipo Carta</a></li>
                        </ul>
                    </li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/Carta">Gerenciar Carta</a></li>
                    <li class="nav-item">
                        <asp:Button Text="Sair" class="nav-link btn" runat="server" id="btnSair" OnClick="btnSair_Click" />
                    </li>
                </ul>

            </div>
        </nav>

        <div>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>

</body>
</html>
