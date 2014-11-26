<%@ include file="IndexHeader.jsp" %>
<div class="container">    
    <div id="loginbox" style="margin-top:80px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
        <div class="panel panel-success" >
            <div class="panel-heading">
                <div class="panel-title">Cuenta SEGET</div>
                <div style="float:right; font-size: 100%; position: relative; top:-10px"><a href="#">¿Olvidó su contraseña?</a></div>
            </div>     
            <div style="padding-top:20px" class="panel-body" >
                <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                <form id="loginform" class="form-horizontal" role="form" action="principal.jsp">
                    
                    <label for="TxtUsername" class="col-md-3 control-label">Usuario</label>
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input id="TxtUsername" type="text" class="form-control" name="TxtUsername" value="" placeholder="username or email">                                        
                    </div>
                   
                    <label for="TxtPassword" class="col-md-3 control-label">Password</label>
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="TxtPassword" type="TxtPassword" class="form-control" name="TxtPassword" placeholder="password">
                    </div>

                    <label for="CboxTipoUser" class="col-md-3 control-label">Conectar</label>
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-cloud-upload"></i></span>
                        <select class="form-control" placeholder="CboxTipoUser" name="CboxTipoUser"/>
                        <option value="" selected="selected">Seleccione </option>
                        <option value="F">Funcionario </option>
                        <option value="U">Usuario </option>
                        </select>
                    </div>

                    <div class="input-group">
                        <div class="checkbox">
                            <label>
                                <input id="login-remember" type="checkbox" name="remember" value="1"> Mantener la sesi&oacute;n iniciada
                            </label>
                        </div>
                    </div>
                    <div style="margin-top:10px" class="form-group">
                        <!-- Button -->
                        <div class="col-sm-12 controls">
                            <button type="submit" id="btn-login"  class="btn btn-success">Inicie Sesi&oacute;n  </a>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12 control">
                            <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                              ¿No dispones de una cuenta ?
                                <a href="#" onClick="$('#loginbox').hide();
                                        $('#signupbox').show()">
                                   Solicita una ahora.
                                </a>
                            </div>
                        </div>
                    </div>    
                </form>     
            </div>
        </div>                     
    </div>  
</div>
<div id="signupbox" style="display:none; margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
    <div class="panel panel-info">
        <div class="panel-heading">
            <div class="panel-title">Sign Up</div>
            <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" onclick="$('#signupbox').hide();
                    $('#loginbox').show()">Sign In</a></div>
        </div>  
        <div class="panel-body" >
            <form id="signupform" class="form-horizontal" role="form">
                <div id="signupalert" style="display:none" class="alert alert-danger">
                    <p>Error:</p>
                    <span></span>
                </div>
                <div class="form-group">
                    <label for="email" class="col-md-3 control-label">Email</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="email" placeholder="Email Address">
                    </div>
                </div>

                <div class="form-group">
                    <label for="firstname" class="col-md-3 control-label">First Name</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="firstname" placeholder="First Name">
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastname" class="col-md-3 control-label">Last Name</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="lastname" placeholder="Last Name">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-md-3 control-label">Password</label>
                    <div class="col-md-9">
                        <input type="password" class="form-control" name="passwd" placeholder="Password">
                    </div>
                </div>
                <div class="form-group">
                    <label for="icode" class="col-md-3 control-label">Invitation Code</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="icode" placeholder="">
                    </div>
                </div>
                <div class="form-group">
                    <!-- Button -->                                        
                    <div class="col-md-offset-3 col-md-9">
                        <button id="btn-signup" type="button" class="btn btn-info"><i class="icon-hand-right"></i> &nbsp Sign Up</button>
                        <span style="margin-left:8px;">or</span>  
                    </div>
                </div>             
            </form>
        </div>
    </div>
</div> 
</div>



</body>

</html>
