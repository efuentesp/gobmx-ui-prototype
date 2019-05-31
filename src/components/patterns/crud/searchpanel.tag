<searchpanel>
  <yield/>
</searchpanel>

<searchcriteria>
  <panel label="Criterios de búsqueda">
	<formbox title="Criterios de búsqueda" action="search" return="">
        <row>
          <column size="col-md-12 col-xs-12">
            <yield/>
          </column>
        </row>
    </formbox>
  </panel>
  <panel label="Resultados de búsqueda">
    <div if={this.parent.parent.opts.add} >
      <submit-button to={ this.parent.parent.opts.add } action="add" tamanio="btn-sm"></submit-button>
    </div>
  </panel>
</searchcriteria>

<searchresults>
  <table-results pagination={opts.pagination} id={opts.id} edit={opts.edit} delete={opts.delete} />
</searchresults>
