﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmArmadilha.aspx.cs" Inherits="YuGiOh01.Paginas.Formularios.FrmArmadilha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
    <title>Gerencia Armadilha</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <div class="navbar-brand ps-2">Gerenciar Armadilhas</div>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#myNav">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-end pe-1" id="myNav">
                    <ul class="navbar-nav">

                        <li class="nav-item">
                            <a class="nav-link" runat="server" href="~/Paginas/Home.aspx">Home</a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Gerenciar
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" runat="server" href="~/Paginas/Formularios/FrmArmadilha.aspx">Gerenciar Armadilhas</a></li>
                                <li><a class="dropdown-item" runat="server" href="~/Paginas/Formularios/FrmAtributo.aspx">Gerenciar Atributo</a></li>
                                <li><a class="dropdown-item" runat="server" href="~/Paginas/Formularios/FrmIcone.aspx">Gerenciar Icone</a></li>
                                <li><a class="dropdown-item" runat="server" href="~/Paginas/Formularios/FrmMagias.aspx">Gerenciar Magias</a></li>
                                <li><a class="dropdown-item" runat="server" href="~/Paginas/Formularios/FrmMonstro.aspx">Gerenciar Monstro</a></li>
                                <li><a class="dropdown-item" runat="server" href="~/Paginas/Formularios/FrmMonstroEfeito.aspx">Gerenciar Monstro de Efeito</a></li>
                                <li><a class="dropdown-item" runat="server" href="~/Paginas/Formularios/FrmMonstroPendulo.aspx">Gerenciar Monstro Pendulo</a></li>
                                <li><a class="dropdown-item" runat="server" href="~/Paginas/Formularios/FrmTipoCarta.aspx">Gerenciar Tipo Carta</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a class="nav-link" runat="server" href="~/Paginas/Formularios/FrmCarta.aspx">Gerenciar Carta</a></li>
                        <li class="nav-item">
                            <asp:Button Text="Sair" class="nav-link btn" runat="server" ID="btnSair" OnClick="btnSair_Click" />
                        </li>
                    </ul>

                </div>
            </nav>
            <div class="container w-50 mt-4">
                <div class="mt-4">
                    <h1 runat="server" id="h1Titulo" class="text-center">Cadastrar Armadilha</h1>
                </div>
                <div class="mb-3">
                    <label for="txtUser" class="form-label" runat="server">Descrição</label>
                    <asp:TextBox runat="server" class="form-control" ID="txtArmadilha" />
                </div>

                <div class="mb-3">
                    <asp:Button Text="Cadastrar" ID="btnCadastrar" runat="server" class="btn btn-primary w-100" OnClick="btnCadastrar_Click" />
                </div>

                <div class="mb-3 text-center">
                    <label id="lblMensagem" runat="server"></label>
                    <a href="~/Paginas/Formularios/FrmArmadilha.aspx" id="linkCad" runat="server" visible="false">Cadastrar nova Armadilha</a>
                </div>
            </div>

            <div class="container mt-4">

                <h3 class="text-center mb-2">Tipos de Armadilhas Cadastradas</h3>

                <table class="table m-auto table-hover table-bordered text-center m-auto">
                    <thead class="thead-dark">
                        <tr>
                            <td><b>Código</b></td>
                            <td><b>Descrição</b></td>
                            <td colspan="3"><b>Ações</b></td>
                        </tr>
                    </thead>
                    <asp:ListView ID="lvlArmadilha" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("IdArmadilha")%></td>
                                <td><%# Eval("Descricao")%></td>

                                <td>
                                    <asp:ImageButton
                                        runat="server"
                                        ID="btnVisualizar"
                                        ImageUrl="../../Assets/Images/search.png"
                                        ToolTip="Visualizar"
                                        OnCommand="btnAcoes_Command"
                                        Style="width: 20px;"
                                        CommandArgument='<%# Eval("IdArmadilha")%>'
                                        CommandName="Visualizar" />
                                </td>

                                <td>
                                    <asp:ImageButton
                                        runat="server"
                                        ID="btnAlterar"
                                        ImageUrl="../../Assets/Images/update.png"
                                        ToolTip="Alterar"
                                        OnCommand="btnAcoes_Command"
                                        Style="width: 20px;"
                                        CommandArgument='<%# Eval("IdArmadilha")%>'
                                        CommandName="Alterar" />
                                </td>

                                <td>
                                    <asp:ImageButton
                                        runat="server"
                                        ID="btnExcluir"
                                        ImageUrl="~/Assets/Images/delete.png"
                                        ToolTip="Excluir"
                                        OnCommand="btnAcoes_Command"
                                        Style="width: 20px;"
                                        CommandArgument='<%# Eval("IdArmadilha")%>'
                                        CommandName="Excluir" />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <EmptyDataTemplate>
                            Não existe armadilha cadastrada!
                        </EmptyDataTemplate>
                    </asp:ListView>

                </table>
            </div>

        </div>

        <asp:HiddenField ID="hfId" runat="server" />

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
