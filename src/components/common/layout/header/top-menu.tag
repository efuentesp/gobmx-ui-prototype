<top-menu>
  <li class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">{opts.label} <span class="caret"></span></a>
    <ul class="dropdown-menu" role="menu">
      <yield />
    </ul>
  </li>

  <style>
    ul.dropdown-menu > menu-item > li > a {
      font-weight: 400;
      color: #333
    }
  </style>
</top-menu>
