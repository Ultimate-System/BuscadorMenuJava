<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "db.DBConn" %>
<%@ page import = "java.util.*"%>
<%@ page import = "restaurante.Restaurante"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Restaurante</title>
    <!-- Compiled and minified CSS -->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="css/restaurante.css">
    
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?"></script>
    <script src="js/restaurante.js"></script>

</head>
<body>
	<%
		int idRestaurante = Integer.parseInt(request.getParameter("idRestaurante"));
		System.out.println(idRestaurante);
		Restaurante restaurante = DBConn.executarQueryBusquedaRestaurante(idRestaurante);
		String [][] menus = DBConn.executarQueryGetMenus(idRestaurante);
		
	%>
    <header>
        <nav class="nav-extended">
            <div class="nav-wrapper">
                <a href="#" class="brand-logo">Logo</a>
                <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="index.html">Inicio</a></li>
                    <li><a href="Registro.html">Acceso Restaurante</a></li>
                </ul>
                <ul class="side-nav" id="mobile-demo">
                    <li><a href="index.html">Inicio</a></li>
                    <li><a href="Registro.html">Acceso Restaurante</a></li>
                </ul>
            </div>
        </nav>
    </header>
    <div class="container">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="carousel carousel-slider center" data-indicators="true">
                            <div class="carousel-fixed-item center">
                                <a class="btn waves-effect white grey-text darken-text-2">button</a>
                            </div>
                            <div class="carousel-item red white-text" href="#one!">
                                <h2>First Panel</h2>
                                <p class="white-text">This is your first panel</p>
                            </div>
                            <div class="carousel-item amber white-text" href="#two!">
                                <h2>Second Panel</h2>
                                <p class="white-text">This is your second panel</p>
                            </div>
                            <div class="carousel-item green white-text" href="#three!">
                                <h2>Third Panel</h2>
                                <p class="white-text">This is your third panel</p>
                            </div>
                            <div class="carousel-item blue white-text" href="#four!">
                                <h2>Fourth Panel</h2>
                                <p class="white-text">This is your fourth panel</p>
                            </div>
                        </div>
                        <div class="card-content">
                            <h3 class="text-center"><%= restaurante.getNombre() %></h3>
                            <div class="row">
                                <div class="col-md-5 pull-left">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                </div>
                                <div class="col-md-5 pull-right">
                                    <p>Categoria: <span><%= restaurante.getCategoria() %></span></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <center><h1>Menus</h1></center>
                                    <div class="menus">
                                        <p>
                                        	<%
                                        		for (int i = 0; i < menus.length; i++){
                                        			for(int j = 0; j < menus[i].length; j++){
                                        				System.out.println(menus[i][j]);
                                        			}
                                        		}
                                        	%>
                                        	}
                                        </p>
                                    </div>
                                    <div class="card-action">
                                        <form action="http://maps.google.com/maps" get="" target="_blank">
                                            <a class="col-sm-5 waves-effect waves-light btn modal-trigger" href="#modal1">Reserva</a>
                                            <input name="daddr" type="hidden" value="Ctra. Barcelona, 11, 08500 Vic, Barcelona, España">
                                            <input class="col-sm-5 waves-effect waves-light btn " type="submit" value="Como Llegar">
                                        </form>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div id="map" class="row"></div>
                                </div>
                            </div>
                            <div class="row">
                                <h3>Descripcion</h3>
                                    <p>
                                        <%= restaurante.getDescripcion() %>
                                    </p>
                            </div>
                            
                        </div>
                        
                        <!-- Modal Structure -->
                        <div id="modal1" class="modal">
                            <div class="modal-content">
                                <h4><%= restaurante.getNombre() %></h4>
                                <p><%= restaurante.getTelefono() %></p>
                            </div>
                            <div class="modal-footer">
                                <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        
    </footer>
     <script src="js/intmenu.js"></script>
</body>
</html>

