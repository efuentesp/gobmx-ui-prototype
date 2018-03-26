<pedido-delete>
	<page id="pedido-delete" title="Eliminar Pedidos">
		<formbox title="Datos del Pedido" icon="fa fa-check-circle-o" action="delete" return="pedido-admin">
			numero
			fecha
			<row>
				<column>
					<label>Cliente<font color="red"> *</font></label>
				</column>
			</row>
			
			<!-- Modal -->
			        <row>
			          <column>
			    <search-box id="searchboxsample" link="clientemodal" caption="Cliente" placeholder="Cliente" />
			   	<modal-box id="clientemodal"  data="cliente-results" title="Seleccionar Cliente " action="select-multi" pagination="true"/>
			       	  </column>
			     	</row>    
				    
				    
				    <!--
				    <row>
				      <column>
				        <select-box id="cliente" type="select" placeholder="Cliente" required=true>
				          <option-box id="estatus-01" label="Abierto"/>
				          <option-box id="estatus-02" label="Cerrado" />
				        </select-box>
				       <column>
				     <row>-->
				    
		</formbox>
	</page>
</pedido-delete>
