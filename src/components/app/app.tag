<app>
  <!--nav class="navbar navbar-inverse sub-navbar navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <a class="navbar-brand" href="/">imss</a>
      </div>

      <div class="collapse navbar-collapse" id="subenlaces">
        <ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
            <a href="#" onclick="return false;" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Afiliados<span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
              <li><a href="/afiliado-admin/">Afiliados</a></li>
            </ul>
          </li>
          <li><a href="/registrar-pension/">Pensiones</a></li>
          <li class="dropdown">
            <a href="#" onclick="return false;" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Clientes<span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
              <li><a href="/cliente-admin/">Administrar</a></li>
              <li><a href="/cliente-wizard/">Wizard</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </nav-->

  <topbar title="IMSS">
    <top-menu label="Afiliados">
      <menu-item label="Administrar" to="/afiliado-admin/" />
    </top-menu>
    <top-menu label="Pensiones">
      <menu-item label="Solicitar" to="/registrar-pension/" />
    </top-menu>
    <top-menu label="Clientes">
      <menu-item label="Administrar" to="/cliente-admin/" />
      <menu-item label="Wizard" to="/cliente-wizard/" />
	  <menu-item label="Agregar" to="/cliente-agregar/" />
    </top-menu>
  </topbar>
</app>
