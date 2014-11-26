<%-- 
    Document   : RegistroTerceros
    Created on : 25/11/2014, 07:17:31 PM
    Author     : EORTEGA
--%>

<%@ include file="PrincipalHeader.jsp"%>
<form class="form-inline" role="form">
    <div class="panel-body">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">Registro de Terceros</h3>
            </div>
            <div class="row">
                <div class="col-xs-6 col-sm-3">
                    <div class="input-group input-group-sm">
                        <label for="Sel_TipoIdentificacion">Tipo de identificaci&oacute;n</label>
                        <select  id="Sel_TipoIdentificacion" name="Sel_TipoIdentificacion" class="form-control input-sm required" style="width: 200px;" data-tooltip="Seleccione la entidad contratante." >
                            <option value="" selected="selected">Seleccione</option>
                            <option value="" >NIT</option>
                            <option value="" >Cédula ciudadania</option>
                        </select>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-3">
                    <div class="input-group input-group-sm">
                        <label  for="Txt_NumeroIdentificacion">N&uacute;mero de Identificaci&oacute;n</label>
                        <input type="text" id="Txt_NumeroIdentificacion" class="form-control" placeholder="####">
                    </div>
                </div>
                <div class="col-xs-6 col-sm-3">
                    <label  for="Txt_RazonSocial">Nombre y/o Raz&oacute;n social</label>
                    <div class="input-group input-group-sm">
                        <input type="text" id="Txt_RazonSocial" class="form-control" >
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                        </span>
                    </div><!-- /input-group -->
                </div>
                </br>
            </div>
        </div>
        <div id="content">
            <table class="table "  cellspacing="0" width="100%" style="width: 100%;">
                <tr>
                    <td  style="width: 80%"><h3>Listado de Terceros</h3></td>
                    <td style="width: 80%"> 
                        <div style='width: 450px;' class='alert alert-success alert-dismissible'>  
                            <button type='button' class='close' data-dismiss='alert'> 
                                <span aria-hidden='true'>&times;</span> 
                                <span class='sr-only'>Close</span> 
                            </button> 
                            <strong>Exito !</strong> Se ha almacenado satisfactoriamente. 
                        </div> 
                    </td>
                </tr>
            </table>
            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped display" id="example">
                <thead>
                    <tr>
                        <th>Auxiliar</th>
                        <th>Tipo Id</th>
                        <th>Numero de ID </th>
                        <th>DV ID</th>
                        <th>Razon S&oacute;cial</th>
                        <th class="center">
                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#myModal">
                                <span class="glyphicon glyphicon-plus"></span>
                            </button>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="odd_gradeX" id="2">
                        <td class="read_only"> </td>
                        <td class="read_only"> </td>
                        <td class="read_only"> </td>
                        <td class="read_only"> </td>
                        <td class="read_only"> </td>
                        <td class="center">
                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#myModal">
                                <span class="glyphicon glyphicon-list-alt"></span>
                            </button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel">Editar Tercero</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row">                                
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input value=" "  size="25" type="hidden" onKeyDown="return validarPegar(event)" name="con" id="con" class="read_only"  rel="0" readonly />
                                <label  for="id">Identificación</label> 

                                <input value=" "  class="form-control " title="Ingrese su Identificación" onKeyDown="return validarPegar(event)" required  type="text" name="id" id="id" onKeyPress="return acceptNum(event)"  maxlength="12" onBlur="CalcularDigV(frmAseguradora);"  />

                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                                <label>DV </label>                               
                                <input  value=" " type="text" title="Ingrese su DV" name="digito" onKeyDown="return validarPegar(event)" id="digito" class="form-control "  readonly onKeyPress="return acceptNum(event)"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <label >Nombre </label> 
                                <input value=" " onKeyDown="return validarPegar(event)" onKeypress="if (event.keyCode <= 31 || (event.keyCode > 32 && event.keyCode < 46) || (event.keyCode >= 47 && event.keyCode <= 47) || (event.keyCode > 57 && event.keyCode < 65) || (event.keyCode > 90 && event.keyCode < 97) || event.keyCode > 122)
                                            event.returnValue = false;" type="text" name="nombre" class="form-control " required id="nombre"    title="Ingrese su Nombre" />
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Calcelar</button>
                        <button type="button" class="btn btn-success">Guardar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<%@ include file="PrincipalFooter.jsp" %>