<modal-box>
  <div class="modal fade {opts.id}">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>
          <h4 class="modal-title">{opts.title}</h4>
        </div>
        <div class="modal-body">
            <table-results id={opts.data} action={opts.action} pagination={opts.pagination} />
        </div>
        <div class="modal-footer" style="padding-right: 40px;">
          <button type="button" class="btn btn-default" data-dismiss="modal">Regresar</button>
          <button type="button" class="btn btn-primary">Elegir</button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
</modal-box>

<search-box>
  <div class="col-sm-3 form-group divSearchStyle">
    <div class="col-sm-9 form-group divSearchStyle">
      <input type="text" class="form-control" placeholder={opts.placeholder} >
    </div>
    <div class="col-sm-3 form-group divSearchStyle">
      <button type="button" class="btn btn-default btn-sm" style="margin-left: 5px;" data-toggle="modal" data-target=".{opts.link}">
        <i class="icon-search"></i>
      </button>
    </div>
  </div>

  <style>
     .divSearchStyle{
       padding: 0px;
     }
  </style>

</search-box>
