<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Document</title>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Materialize CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <!-- Bootstrap 4 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    
    <link rel="stylesheet" href="css/alta.css">
    <link rel="stylesheet" href="css/main.css">
    
    
</head>

<body>

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
    <div class="container-fluid">
        <div class="row">
            <h1 class="titulo">Alta de su restaurante</h1>
        </div>
        <div class="row">
            <form class="col-md-6 alta" action="">

                <div class="row">
                    <div class="col">
                        <div class="form-group">
                            <label for="Nombre"><strong>Nombre</strong></label>
                            <input name="nom" type="Nombre" class="form-control" id="exampleFormControlInput1" placeholder="Nombre">
                        </div>

                        <div class="form-group">
                            <label for="exampleFormControlInput1"><strong>Tel&eacute;fono</strong></label>
                            <input name="cognoms" type="Apellidos" class="form-control" id="exampleFormControlInput1" placeholder="Tel&eacute;fono">
                        </div>
                       <div class="form-group">
                            <label><strong>Provincia</strong></label>
                            <input type="text" class="form-control" id="provincia" placeholder="Provincia">
                        </div>
                        <div class="form-group">
                            <label><strong>Poblaci&oacute;n</strong></label>
                            <input type="text" class="form-control" id="poblacion" placeholder="Poblaci&oacute;n">
                        </div>
                        <div class="row form-group">
                                <div class="col-sm-9">
                                    <label for="calle"><strong>Calle</strong></label>
                                    <input type="text" class="form-control" id="calle" placeholder="Ubicaci&oacute;n">
                                </div>
                                <div class="col-sm-3">
                                    <label for="numero"><strong>Nº</strong></label>
                                    <input type="number" class="form-control" id="numero" placeholder="Ubicaci&oacute;n">
                                </div>
                                
                        </div>
                        <div id="mapMovil">
                            <div></div>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlInput1"><strong>Correo</strong></label>
                            <input name="pob" type="Correo" class="form-control" id="exampleFormControlInput1" placeholder="Correo">
                        </div>
                          <div class="form-group">
                            <label for="exampleFormControlInput1"><strong>Contrase�a</strong></label>
                            <input name="pob" type="password" class="form-control" id="exampleFormControlInput1" placeholder="Contrase�a">
                            
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlInput1"><strong>Confirma t&uacute; contrase�a</strong></label>
                            <input name="pob" type="password" class="form-control" id="exampleFormControlInput1" placeholder="Contrase�a">
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlSelect1"><strong>Categor&iacute;a</strong></label>
                            <select class="form-control custom-select" id="exampleFormControlSelect1">
                                <option>No tiene</option>
                                <option value="tapas">Bar de tapas</option>
                                <option value="copas">Bar de copas</option>
                                <option value="restaurante">Restaurante</option>
                                <option value="cafeteria">Cafeter&iacute;a</option>
                                <option value="domicilio">Comida a domicilio</option>
                            </select>
                        </div>
                        <div class="redesSociales">
                            <div class="form-group">

                                <div class="row ">
                                    <div class="col-sm-3">
                                        <label class="form-check-label">
                                            <input class="form-check-input" type="checkbox" value="">Twitter
                                        </label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input class="form-control" type="text" value="" placeholder="A�adir url de su red social">
                                    </div>
                                </div>
                                <div class="row ">
                                    <div class="col-sm-3">
                                        <label class="form-check-label">
                                            <input class="form-check-input" type="checkbox" value="">Facebook
                                        </label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input class="form-control" type="text" value="" placeholder="A�adir url de su red social">
                                    </div>
                                </div>
                                <div class="row ">
                                    <div class="col-sm-3">
                                        <label class="form-check-label">
                                            <input class="form-check-input" type="checkbox" value="">Snapchat
                                        </label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input class="form-control" type="text" value="" placeholder="A�adir url de su red social">
                                    </div>
                                </div>
                                <div class="row ">
                                    <div class="col-sm-3">
                                        <label class="form-check-label">
                                            <input class="form-check-input" type="checkbox" value="">Youtube
                                        </label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input class="form-control" type="text" value="" placeholder="A�adir url de su red social">
                                    </div>
                                </div>
                                <div class="row ">
                                    <div class="col-sm-3">
                                        <label class="form-check-label">
                                            <input class="form-check-input" type="checkbox" value="">Google +
                                        </label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input class="form-control" type="text" value="" placeholder="A�adir url de su red social">
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="exampleFormControlInput1"><strong>Imagen</strong></label>
                        </div>
                        <div class="form-group">
                            <label class="custom-file">
                                <input type="file" id="file2" class="custom-file-input">
                                <span class="custom-file-control"></span>
                            </label>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlInput1"><strong>Descripci&oacute;n</strong></label>
                            <div>
                                <textarea class="box-form col-sm-12" type="text" name="mensaje"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <br>

                <div>
                    <button type="submit" class="btn btn-primary btn-enviar"><strong>ENVIAR</strong></button>
                </div>
            </form>
            <div id="divmap" class="col-md-6">
                <div id="map"></div>
            </div>
        </div>
        <br>
        <br>


    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!-- https://www.html5rocks.com/es/tutorials/file/dndfiles/ -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?"></script>
    <script src="js/alta.js"></script>
</body>

</html>
