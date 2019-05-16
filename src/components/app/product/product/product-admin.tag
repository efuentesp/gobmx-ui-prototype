<product-admin>
	<page id="product-admin" title="Administrar Product">
		<searchpanel add="product-add">
			<searchcriteria viewsearch="true" typesearch="Complex" viewadd="true">
				<product-form />
			</searchcriteria>

			<searchresults id="product-results" edit="product-edit" delete="product-delete" pagination="true">
			</searchresults>
		</searchpanel>
	</page>
</product-admin>
