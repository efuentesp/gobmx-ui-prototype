<topbar>
  <nav class="navbar navbar-inverse sub-navbar navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#subenlaces">
          <span class="sr-only">Interruptor de Navegación</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="/">{opts.title}</a>
      </div>
      <!--div class="collapse navbar-collapse" id="subenlaces" style="display: block; position: relative;">
        <ul class="nav navbar-nav navbar-right"  style="border: 1px solid lime;">
          <yield />
        </ul>
      </div-->
      <div class="form-group">
        <yield />
      </div>
    </div>
  </nav>

  <!--style>
    menu-item > li {
      float: left;
    }
    menu-item > li {
      display: block;
      position: relative;
    }
    menu-item > li > a {
      text-decoration: none;
      color: #fff;
      padding-top: 10.5px;
      padding-bottom: 10.5px;
      padding-left: 10px;
      padding-right: 15px;
      line-height: 25px;
      display: block;
      position: relative;
    }
    menu-item > li > a:focus,
    menu-item > li > a:hover {
      color: #fff;
      background-image: none;
      text-decoration: none;
    }

    top-menu > li {
      float: left;
    }
    top-menu > li {
      display: block;
      position: relative;
    }
    top-menu > li > a {
      text-decoration: none;
      color: #fff;
      padding-top: 10.5px;
      padding-bottom: 10.5px;
      padding-left: 10px;
      padding-right: 15px;
      line-height: 25px;
      display: block;
      position: relative;
    }
    top-menu > li > a:focus,
    top-menu > li > a:hover {
      color: #fff;
      background-image: none;
      text-decoration: none;
    }

  </style-->
</topbar>
