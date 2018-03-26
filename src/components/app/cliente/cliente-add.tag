<cliente-add>
	<page id="cliente-add" title="Agregar Clientes">
		<formbox title="Datos del Cliente" icon="fa fa-check-circle-o" action="create" return="cliente-admin">
			<row>
			<column>
			<inputbox id="numero" type="text" label="Numero" value="" placeholder="Numero del Cliente" required=true disabled=false minsize=3 maxsize=100 />
			</column>
			</row>
			<row>
			<column>
			<inputbox id="nombre" type="text" label="Nombre" value="" placeholder="Nombre del Cliente" required=true disabled=false minsize=3 maxsize=100 />
			</column>
			</row>
			<row>
				<column>
					<label>Producto<font color="red"> *</font></label>
				</column>
			</row>

			<!-- Modal -->
			<!--
			<row>
        <column>
				  <search-box id="searchboxsample" link="productomodal" caption="Producto" placeholder="Producto" />
				 	<modal-box id="productomodal"  data="producto-results" title="Seleccionar Producto " action="select-multi" pagination="true"/>
     	  </column>
   	</row>
-->

		</formbox>
	</page>
</cliente-add>
