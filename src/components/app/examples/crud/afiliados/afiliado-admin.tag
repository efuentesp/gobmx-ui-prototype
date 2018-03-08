<afiliado-admin>
  <page id="afiliado-admin" title="Administrar Afiliados">
    <searchpanel add="/afiliado-agregar/">
      <searchcriteria>
        <inputbox id="nss" type="text" label="NSS" value="" placeholder="Número del Seguridad Social" required=true disabled=false minsize=3 maxsize=100 />
        <inputbox id="nombre" type="text" label="Nombre" value="" placeholder="Nombre del Afiliado" required=false disabled=false minsize=3 maxsize=100 />
      </searchcriteria>
      <searchresults pagination="true" id="afiliados-resultados-busqueda" edit="/afiliado-editar/" delete="/afiliado-eliminar/">
      </searchresults>
    </searchpanel>
  </page>
</afiliado-admin>
