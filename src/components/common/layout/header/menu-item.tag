<menu-item>
  <li><a href={opts.to} onclick={rvs}>{opts.label}</a></li>

  <style>
    menu-item > li > a {
      background-image: none;
      text-decoration: none;
      color: #000000;
      padding-bottom: 3px;
      padding-left: 20px;
      padding-top: 3px;
      padding-right: 20px;
      text-align: left;
      font-family: "Open Sans","Helvetica Neue",Helvetica,Arial,sans-serif;
      font-size: 18px;
      font-weight: 400;
    }

    menu-item > li:hover {
      background-color: #F6F6F6;
      background-image: none;
      text-decoration: none;
      color: #000000;
    }

    menu-item > li > a:focus,
    menu-item > li > a:hover {
      background-image: none;
      text-decoration: none;
      color: #000000;
    }
  </style>

  <script type="text/javascript">
    this.rvs = function resetVerticalScroll() {
      $('html, body').animate({
          scrollTop: $("#pnlMain").offset().top
      }, 20);
    }
  </script>

</menu-item>
