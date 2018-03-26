<cliente-edit>
	<page id="cliente-edit" title="Editar Clientes">
		<formbox title="Datos del Cliente" icon="fa fa-check-circle-o" action="update" return="cliente-admin">
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
			        <row>
			          <column>
			    <search-box id="searchboxsample" link="productomodal" caption="Producto" placeholder="Producto" />
			   	<modal-box id="productomodal"  data="producto-results" title="Seleccionar Producto " action="select-multi" pagination="true"/>
			       	  </column>
			     	</row>    
				    
				    
				    <!--
				    <row>
				      <column>
				        <select-box id="producto" type="select" placeholder="Producto" required=true>
				          <option-box id="estatus-01" label="Abierto"/>
				          <option-box id="estatus-02" label="Cerrado" />
				        </select-box>
				       <column>
				     <row>-->
				    
		</formbox>
	</page>
</cliente-edit>
	
