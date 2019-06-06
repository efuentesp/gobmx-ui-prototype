/* eslint no-mixed-spaces-and-tabs: ["error", "smart-tabs"] */
'use strict'

if (module.hot) {
  module.hot.accept()
}

import riot from 'riot'

// Hoja de estilos
import './styles/index.scss'

// Applicación
import './components/app/app.tag'

import './components/common/layout/page.tag'
import './components/common/layout/content.tag'
import './components/common/layout/tablist.tag'
import './components/common/layout/footer/footerbar.tag'
import './components/common/layout/header/top-menu.tag'
import './components/common/layout/header/topbar.tag'
import './components/common/layout/sidebar/menu-item.tag'
import './components/common/layout/sidebar/menu-section.tag'
import './components/common/layout/sidebar/side-menu.tag'
import './components/common/layout/sidebar/sidebar-menu.tag'
import './components/common/layout/sidebar/sidebar-profile.tag'
import './components/common/layout/sidebar/sidebar.tag'
import './components/common/form/formbox.tag'
import './components/common/form/date-picker.tag'
import './components/common/form/select-auto.tag'
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
import './components/common/grid/row.tag'
import './components/common/grid/column.tag'

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

// Componentes generados
import './components/app/product/productcategoriesscreen.tag'
import './components/app/product/productlistscreen.tag'
import './components/app/product/productscreen.tag'
import './components/app/product/category/category-admin.tag'
import './components/app/product/category/category-form.tag'
import './components/app/product/category/category-add.tag'
import './components/app/product/category/category-edit.tag'
import './components/app/product/category/category-delete.tag'
import './components/app/product/product/product-admin.tag'
import './components/app/product/product/product-form.tag'
import './components/app/product/product/product-add.tag'
import './components/app/product/product/product-edit.tag'
import './components/app/product/product/product-delete.tag'
import './components/app/customer/customer/customer-admin.tag'
import './components/app/customer/customer/customer-form.tag'
import './components/app/customer/customer/customer-add.tag'
import './components/app/customer/customer/customer-edit.tag'
import './components/app/customer/customer/customer-delete.tag'
import './components/app/customer/creditcard/creditcard-admin.tag'
import './components/app/customer/creditcard/creditcard-form.tag'
import './components/app/customer/creditcard/creditcard-add.tag'
import './components/app/customer/creditcard/creditcard-edit.tag'
import './components/app/customer/creditcard/creditcard-delete.tag'
import './components/app/shoppingcart/shoppingcartscreen.tag'
import './components/app/shoppingcart/checkoutscreen.tag'
import './components/app/shoppingcart/paymentconfirmationscreen.tag'
import './components/app/shoppingcart/shoppingcart/shoppingcart-admin.tag'
import './components/app/shoppingcart/shoppingcart/shoppingcart-form.tag'
import './components/app/shoppingcart/shoppingcart/shoppingcart-add.tag'
import './components/app/shoppingcart/shoppingcart/shoppingcart-edit.tag'
import './components/app/shoppingcart/shoppingcart/shoppingcart-delete.tag'
import './components/app/shoppingcart/productoncart/productoncart-admin.tag'
import './components/app/shoppingcart/productoncart/productoncart-form.tag'
import './components/app/shoppingcart/productoncart/productoncart-add.tag'
import './components/app/shoppingcart/productoncart/productoncart-edit.tag'
import './components/app/shoppingcart/productoncart/productoncart-delete.tag'

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
  { route: '/', tag: 'productcategoriesscreen' },
  { route: '/login/', tag: 'login' },
  { route: '/home/', tag: 'app' },
  { route: '/product/productcategoriesscreen', tag: 'productcategoriesscreen' },
  { route: '/product/productlistscreen', tag: 'productlistscreen' },
  { route: '/product/productscreen', tag: 'productscreen' },
  { route: '/product/category-admin/', tag: 'category-admin' },
  { route: '/product/category-add/', tag: 'category-add' },
  { route: '/product/category-edit/', tag: 'category-edit' },
  { route: '/product/category-delete/', tag: 'category-delete' },
  { route: '/product/product-admin/', tag: 'product-admin' },
  { route: '/product/product-add/', tag: 'product-add' },
  { route: '/product/product-edit/', tag: 'product-edit' },
  { route: '/product/product-delete/', tag: 'product-delete' },
  { route: '/customer/customer-admin/', tag: 'customer-admin' },
  { route: '/customer/customer-add/', tag: 'customer-add' },
  { route: '/customer/customer-edit/', tag: 'customer-edit' },
  { route: '/customer/customer-delete/', tag: 'customer-delete' },
  { route: '/customer/creditcard-admin/', tag: 'creditcard-admin' },
  { route: '/customer/creditcard-add/', tag: 'creditcard-add' },
  { route: '/customer/creditcard-edit/', tag: 'creditcard-edit' },
  { route: '/customer/creditcard-delete/', tag: 'creditcard-delete' },
  { route: '/shoppingcart/shoppingcartscreen', tag: 'shoppingcartscreen' },
  { route: '/shoppingcart/checkoutscreen', tag: 'checkoutscreen' },
  { route: '/shoppingcart/paymentconfirmationscreen', tag: 'paymentconfirmationscreen' },
  { route: '/shoppingcart/shoppingcart-admin/', tag: 'shoppingcart-admin' },
  { route: '/shoppingcart/shoppingcart-add/', tag: 'shoppingcart-add' },
  { route: '/shoppingcart/shoppingcart-edit/', tag: 'shoppingcart-edit' },
  { route: '/shoppingcart/shoppingcart-delete/', tag: 'shoppingcart-delete' },
  { route: '/shoppingcart/productoncart-admin/', tag: 'productoncart-admin' },
  { route: '/shoppingcart/productoncart-add/', tag: 'productoncart-add' },
  { route: '/shoppingcart/productoncart-edit/', tag: 'productoncart-edit' },
  { route: '/shoppingcart/productoncart-delete/', tag: 'productoncart-delete' }
]
riot.mount('*', { routes: routes, options: { hashbang: true, params: { title: 'Login', username: 'Usuario', password: 'Contraseña', link: '//' } } })
