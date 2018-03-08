'use strict'

if (module.hot) {
  module.hot.accept()
}

import riot from 'riot'

// Hoja de estilos
import './styles/index.scss'

// Applicación
import './components/app/app.tag'

// Componentes comunes
import './components/common/layout/page.tag'
import './components/common/layout/content.tag'
import './components/common/layout/header/topbar.tag'
import './components/common/layout/header/top-menu.tag'
import './components/common/layout/header/menu-item.tag'
import './components/common/layout/tablist.tag'
import './components/common/grid/row.tag'
import './components/common/grid/column.tag'
import './components/common/form/formbox.tag'
import './components/common/form/date-picker.tag'
import './components/common/form/inputbox.tag'
import './components/common/form/option-box.tag'
import './components/common/form/search.tag'
import './components/common/form/panel.tag'
import './components/common/form/select-box.tag'
import './components/common/form/attach-photo.tag'
import './components/common/form/outputtext.tag'
import './components/common/form/progress-bar.tag'
import './components/common/form/note.tag'
import './components/common/form/login.tag'
import './components/common/form/pagination-bar.tag'
import './components/common/form/actions.tag'
import './components/common/form/action-group.tag'
import './components/common/form/action-button.tag'

// Patrones Funcionales
import './components/patterns/crud/searchpanel.tag'
import './components/patterns/crud/edit-button.tag'
import './components/patterns/crud/delete-button.tag'
import './components/patterns/crud/submit-button.tag'
import './components/patterns/crud/table-results.tag'
import './components/patterns/crud/simple-admin.tag'
import './components/patterns/crud/select-list.tag'
import './components/patterns/crud/modal-box.tag'
import './components/patterns/wizard/form-wizard.tag'
import './components/patterns/wizard/step-wizard.tag'

// Menú: Afiliados
import './components/app/examples/crud/afiliados/afiliado-admin.tag'
import './components/app/examples/crud/afiliados/afiliado-agregar.tag'

// Menú: Pensiones
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso01.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso02.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso03.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso04.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso05.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso06.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso07.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso08.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso09.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso10.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-fin.tag'

// Menú: Clientes
import './components/app/otros/clienteAdministrar.tag'
import './components/app/otros/clienteAgregar.tag'
import './components/app/otros/clienteEditar.tag'
import './components/app/otros/clienteEliminar.tag'
import './components/app/otros/clienteWizard.tag'

const msgs = require('json-loader!./default-messages.json')
var msgJSON = JSON.stringify(msgs)
localStorage.setItem('messages', msgJSON)

const config = require('json-loader!./config.json')
var precision = '2' // 2 is the default value
for (var k = 0; k < config.keys.length; k++) {
  var ks = config.keys[k]
  if (ks.key === 'precision') {
    precision = ks.value
    break
  }
}

localStorage.setItem('precision', precision)

const json = require('./tabledata.js')
var filenames = []
for (var j = 0; j < json.files.length; j++) {
  filenames[j] = (json.files[j].path)
  for (var c = 0; c < filenames[j].ids.length; c++) {
    localStorage.setItem('rows_' + filenames[j].ids[c].id, JSON.stringify(filenames[j].ids[c].rows))
    localStorage.setItem('header_' + filenames[j].ids[c].id, JSON.stringify(filenames[j].ids[c].headers))
    if (filenames[j].ids[c].actions !== 'undefined') {
      localStorage.setItem('actions_' + filenames[j].ids[c].id, JSON.stringify(filenames[j].ids[c].actions))
    }
  }
}

require('riot-routehandler')
var routes = [
  { route: '/home/', tag: 'app' },
  { route: '/afiliado-admin/', tag: 'afiliado-admin' },
  { route: '/afiliado-agregar/', tag: 'afiliado-agregar' },
  { route: '/registrar-pension/', tag: 'registrar-pension' },
  { route: '/cliente-admin/', tag: 'clienteadministrar' },
  { route: '/cliente-editar/', tag: 'clienteeditar' },
  { route: '/cliente-agregar/', tag: 'clienteagregar' },
  { route: '/cliente-eliminar/', tag: 'clienteeliminar' },
  { route: '/cliente-wizard/', tag: 'clientewizard' }
]
riot.mount('*', { routes: routes, options: { hashbang: true, params: { title: 'Login', username: 'Usuario', password: 'Contraseña', link: '//' } } })
