<%-- 
    Document   : menulateral
    Created on : 25/06/2018, 10:57:48 AM
    Author     : ninus69
--%>

<aside class="bg-black aside-md hidden-print hidden-xs" id="nav">
    <section class="vbox">
        <section class="w-f scrollable">
            <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="10px"
                 data-railOpacity="0.2">
                <div class="clearfix wrapper dk nav-user hidden-xs">
                    <div class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <span class="thumb avatar pull-left m-r">
                                <img src="images/a0.png" class="dker" alt="...">
                                <i class="on md b-black"></i>
                            </span>
                            <span class="hidden-nav-xs clear">
                                <span class="block m-t-xs">
                                    <strong class="font-bold text-lt">Jon Nine</strong>
                                    <b class="caret"></b>
                                </span>
                                <span class="text-muted text-xs block">Administrador</span>
                            </span>
                        </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            
                            <li>
                                <a href="#">Perfil</a>
                            </li>
                            <li>
                                <a href="docs.jsp">Ayuda</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="modal.lockme.jsp" data-toggle="ajaxModal">Cerrar Sesión</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- nav -->
                <nav class="nav-primary hidden-xs">
                    <div class="text-muted text-sm hidden-nav-xs padder m-t-sm m-b-sm">Start</div>
                    <ul class="nav nav-main" data-ride="collapse">
                        <li class="active">
                            <a href="Home?action=listar" class="auto">
                                <i class="i i-statistics icon"> </i>
                                <span class="font-bold">Registro</span>
                            </a>
                        </li>
                        <li>
                            <a href="Home?action=vista" class="auto">
                                <i class="i i-stack icon"> </i>
                                <span class="font-bold">Listar</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="auto">
                                <span class="pull-right text-muted">
                                    <i class="i i-circle-sm-o text"></i>
                                    <i class="i i-circle-sm text-active"></i>
                                </span>
                                <b class="badge bg-danger pull-right">4</b>
                                <i class="i i-stack icon"> </i>
                                <span class="font-bold">Administrador</span>
                            </a>
                            <ul class="nav dk">
                                <li>
                                    <a href="#" class="auto">
                                        <i class="i i-dot"></i>
                                        <span>Usuarios</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        
                     
                    </ul>
                    <div class="line dk hidden-nav-xs"></div>
                    
                </nav>
                <!-- / nav -->
            </div>
        </section>
        <footer class="footer hidden-xs no-padder text-center-nav-xs">
            <a href="modal.lockme.html" data-toggle="ajaxModal" class="btn btn-icon icon-muted btn-inactive pull-right m-l-xs m-r-xs hidden-nav-xs">
                <i class="i i-logout"></i>
            </a>
            <a href="#nav" data-toggle="class:nav-xs" class="btn btn-icon icon-muted btn-inactive m-l-xs m-r-xs">
                <i class="i i-circleleft text"></i>
                <i class="i i-circleright text-active"></i>
            </a>
        </footer>
    </section>
</aside>
