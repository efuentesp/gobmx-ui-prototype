module.exports = {
  files: [
    { path: require('json-loader!./tabledata/imss.json') },
    { path: require('json-loader!./tabledata/modalcliente.json') },
    { path: require('json-loader!./tabledata/modalpedido.json') },
    { path: require('json-loader!./tabledata/modalproducto.json') }
  ]
}
