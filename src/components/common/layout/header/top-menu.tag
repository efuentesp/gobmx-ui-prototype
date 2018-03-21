<top-menu>

  <div class="collapse navbar-collapse divTopMenu" id="subenlaces">
    <ul class="nav navbar-nav navbar-right" >
      <li class="dropdown">
        <a href="#" onclick="return false;" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">{opts.label} <span class="caret"></span></a>
        <ul class="dropdown-menu" role="menu">
          <yield />
        </ul>
      </li>
    </ul>
  </div>

  <!--li class="dropdown">
    <a href="#" onclick="return false;" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">{opts.label} <span class="caret"></span></a>
    <ul class="dropdown-menu" role="menu">
      <yield />
    </ul>
  </li-->

  <style>
    .divTopMenu {
      position: float;
      float: right;
    }

    /**
    ul.dropdown-menu > menu-item > li > a {
      font-weight: 400;
      color: #333
    }
    /**/
  </style>
</top-menu>
