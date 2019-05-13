<submit-button>
  <a href={opts.to} class={ btnType() + ' ' + opts.tamanio}>
    <span class={ btnIcon() }></span>
    { btnLabel() }
  </a>

	<script>
		this.goToRef = function(){
			toRef(opts.to);
		};

    var buttons = [
      { type: "create", button: { label: "Agregar", class: "btn btn-primary", icon: "glyphicon glyphicon-floppy-disk" } },
      { type: "update", button: { label: "Guardar", class: "btn btn-primary", icon: "glyphicon glyphicon-floppy-disk" } },
      { type: "delete", button: { label: "Eliminar", class: "btn btn-danger", icon: "glyphicon glyphicon-trash" } },
      { type: "unknown", button: { label: "...", class: "btn btn-default", icon: "glyphicon glyphicon-asterisk" } },
      { type: "return", button: { label: "Regresar", class: "btn btn-link", icon: "glyphicon glyphicon-chevron-left" } },
      { type: "add", button: { label: "", class: "btn btn-default", icon: "glyphicon glyphicon-plus" } },
  	  { type: "search", button: { label: "Buscar", class: "btn btn-primary", icon: "glyphicon glyphicon-search" } },
  	  { type: "custom", button: { label: opts.caption, class: "btn btn-primary", icon: opts.icon } },
      { type: "addBlue", button: { label: "", class: "btn btn-primary", icon: "glyphicon glyphicon-plus" } },
      { type: "deleteRojo", button: { label: "", class: "btn btn-danger", icon: "glyphicon glyphicon-minus" } },
      { type: "moveRight", button: { label: "", class: "btn btn-default", icon: "glyphicon glyphicon-chevron-right" } },
      { type: "moveLeft", button: { label: "", class: "btn btn-default", icon: "glyphicon glyphicon-chevron-left" } }
    ];

    this.btnLabel = function() {
      switch (opts.action) {
        case 'create':
          return buttons[0].button.label;
        break;
        case 'update':
          return buttons[1].button.label;
        break;
        case 'delete':
          return buttons[2].button.label;
        break;
        case 'return':
          return buttons[4].button.label;
        break;
        case 'add':
          return buttons[5].button.label;
		    break;
		    case 'search':
          return buttons[6].button.label;
        break;
		    case 'custom':
          return buttons[7].button.label;
        break;
        case 'addBlue':
          return buttons[8].button.label;
        break;
        case 'deleteRojo':
          return buttons[9].button.label;
        break;
        case 'moveRight':
          return buttons[10].button.label;
        break;
        case 'moveLeft':
          return buttons[11].button.label;
        break;
        default:
          return opts.caption;
      }
    }

    this.btnType = function() {
      switch (opts.action) {
        case 'create':
          return buttons[0].button.class;
          break;
        case 'update':
          return buttons[1].button.class;
          break;
        case 'delete':
          return buttons[2].button.class;
          break;
        case 'return':
          return buttons[4].button.class;
          break;
        case 'add':
          return buttons[5].button.class;
          break;
		    case 'search':
          return buttons[6].button.class;
          break;
		case 'custom':
		  var cls = "btn";
		  switch (opts.type) {
			case 'link':
			  cls = cls + " btn-link";
			  break;
		  }
		  switch (opts.state) {
			case 'default':
			  cls = cls + " btn-default";
			  break;
			case 'primary':
			  cls = cls + " btn-primary";
			  break;
			case 'danger':
			  cls = cls + " btn-danger";
			  break;
			default:
			  cls = cls + " btn-default";
		  }
		  return cls;
          break;
        case 'addBlue':
          return buttons[8].button.class;
          break;
        case 'deleteRojo':
          return buttons[9].button.class;
          break;
          case 'moveRight':
            return buttons[10].button.class;
          break;
          case 'moveLeft':
            return buttons[11].button.class;
          break;
          default:
          return buttons[3].button.class;
      }
    }

    this.btnIcon = function() {
      switch (opts.action) {
        case 'create':
          return buttons[0].button.icon;
          break;
        case 'update':
          return buttons[1].button.icon;
          break;
        case 'delete':
          return buttons[2].button.icon;
          break;
        case 'return':
          return buttons[4].button.icon;
          break;
        case 'add':
          return buttons[5].button.icon;
          break;
		    case 'search':
          return buttons[6].button.icon;
          break;
		    case 'custom':
          return buttons[7].button.icon;
          break;
        case 'addBlue':
          return buttons[8].button.icon;
          break;
        case 'deleteRojo':
          return buttons[9].button.icon;
          break;
        case 'moveRight':
          return buttons[10].button.icon;
          break;
        case 'moveLeft':
            return buttons[11].button.icon;
            break;
        default:
          return buttons[3].button.icon;
      }
    }
	</script>
</submit-button>
