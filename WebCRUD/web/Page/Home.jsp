<%@page import="model.Profesor"%>
<%@page import="service.Dao_Profesor"%>
<%@page import="java.util.Optional"%>
<%@page import="java.util.List"%>
<%@page import="db.ConexionSingleton"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Crud Java Web</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <style>
            body {
                display: flex;
                min-height: 100vh;
                flex-direction: column;
            }
            main {
                flex: 1 0 auto;
            }
        </style>
    </head>
    <body>
        <%@include file="Layouts/nav.jsp"%>
        <%
            // Inicializar la instancia singleton
            ConexionSingleton oConexionSingleton = ConexionSingleton.getIntance();
        %>

        <%
            // Inicializar Lista

        %>
        <main>
            <div class="container">
                <div class="row">
                    <div class="col s12 m6 l6">
                        <div class="card-panel">
                            <div class="card-content">
                                <h4>Agregar</h4>
                                <form>
                                    <div class="input-field">
                                        <i class="material-icons prefix">badge</i>
                                        <input id="id" type="text" class="validate">
                                        <label for="id">ID</label>
                                    </div>
                                    <div class="input-field">
                                        <i class="material-icons prefix">person</i>
                                        <input id="nombre" type="text" class="validate">
                                        <label for="nombre">Nombre</label>
                                    </div>
                                    <div class="input-field">
                                        <i class="material-icons prefix">account_box</i>
                                        <input id="rut" type="text" class="validate">
                                        <label for="rut">RUT</label>
                                    </div>
                                    <div class="input-field">
                                        <i class="material-icons prefix">phone</i>
                                        <input id="telefono" type="email" class="validate">
                                        <label for="telefono">Correo</label>
                                    </div>
                                    <div class="input-field">
                                        <i class="material-icons prefix">email</i>
                                        <input id="correo" type="text" class="validate">
                                        <label for="correo">Password</label>
                                    </div>
                                    <div class="input-field">
                                        <i class="material-icons prefix">email</i>
                                        <input id="tipo_usuario" type="text" class="validate">
                                        <label for="tipo_usuario">Tipo Usuario</label>
                                    </div>
                                    <div class="center-align">
                                        <button class="btn waves-effect waves-light" type="submit" name="action">
                                            Agregar
                                            <i class="material-icons right">send</i>
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col s12 m6 l6">
                        <div class="card-panel">
                            <div class="card-content">
                                <h4>Listar</h4>
                                <table>
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Nombre</th>
                                            <th>Rut</th>
                                            <th>Telefono</th>
                                            <th>Correo</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col s12 m6 l6">
                        <div class="card-panel">
                            <div class="card-content">
                                <h4>Actualizar</h4>
                                <form action="updatePerson" method="post">
                                    <div class="input-field">
                                        <i class="material-icons prefix">badge</i>
                                        <input id="txt_id" name="txt_id" type="text" class="validate">
                                        <label for="txt_id">ID</label>
                                    </div>
                                    <div class="input-field">
                                        <i class="material-icons prefix">person</i>
                                        <input id="txt_rut" name="txt_rut" type="text" class="validate">
                                        <label for="txt_rut">Rut</label>
                                    </div>
                                    <div class="input-field">
                                        <i class="material-icons prefix">account_box</i>
                                        <input id="txt_nombre" name="txt_nombre" type="text" class="validate">
                                        <label for="txt_nombre">Nombre</label>
                                    </div>
                                    <div class="input-field">
                                        <i class="material-icons prefix">phone</i>
                                        <input id="txt_correo" name="txt_correo" type="tel" class="validate">
                                        <label for="txt_correo">Correo</label>
                                    </div>
                                    <div class="input-field">
                                        <i class="material-icons prefix">email</i>
                                        <input id="txt_password" name="txt_password" type="password" class="validate">
                                        <label for="txt_password">Password</label>
                                    </div>
                                    <div class="input-field">
                                        <i class="material-icons prefix">person</i>
                                        <input id="txt_tipo_usuario" name="txt_tipo_usuario" type="number" class="validate">
                                        <label for="txt_tipo_usuario">Tipo Usuario</label>
                                    </div>
                                    <div class="center-align">
                                        <button class="btn waves-effect waves-light" type="submit" name="action">
                                            Actualizar
                                            <i class="material-icons right">send</i>
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col s12 m6 l6">
                        <div class="card-panel">
                            <div class="card-content">
                                <h4>Eliminar</h4>
                                <form action="deletePerson" method="post">
                                    <div class="input-field">
                                        <i class="material-icons prefix">badge</i>
                                        <input id="txt_id_delete" name="txt_id" type="text" class="validate">
                                        <label for="txt_id_delete">ID</label>
                                    </div>
                                    <div class="center-align">
                                        <button class="btn red waves-effect waves-light" type="submit" name="action">
                                            Eliminar
                                            <i class="material-icons right">delete</i>
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <%@include file="Layouts/footer.jsp" %>
        <!-- jQuery CDN -->
        <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <!-- Materialize JS CDN -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
        <script src="JS/validarut.js"></script>
        <script src="JS/jquery.rut.js"></script>
        <script>
            $(document).ready(function () {
                $(".button-collapse").sideNav();
            });
            $(function () {
                $("input#rut_Profe").rut({
                    formatOn: 'keyup',
                    minimumLength: 8, // validar longitud mínima; por defecto: 2
                    validateOn: 'change' // si no se desea validar, pasar null
                });
                var input = document.getElementById('rut_Profe');
                input.addEventListener('input', function () {
                    if (this.value.length >= 13)
                        this.value = this.value.slice(0, 12);
                });
            });
        </script>
    </body>
</html>

