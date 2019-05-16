<customer-admin>
	<page id="customer-admin" title="Administrar Customer">
		<searchpanel add="customer-add">
			<searchcriteria viewsearch="true" typesearch="Simple" viewadd="true">
				<customer-form />
			</searchcriteria>

			<searchresults id="customer-results" edit="customer-edit" delete="customer-delete" pagination="true">
			</searchresults>
		</searchpanel>
	</page>
</customer-admin>
