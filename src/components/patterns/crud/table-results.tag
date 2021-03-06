<table-results>
  <table class="table table-striped table-bordered bulk_action table-responsive estiloTabla">
       <thead>
         <tr class="headings" >
           <th if={opts.action=="select-multi"}>
             <input type="checkbox" id="check-all" class="flat">
           </th>
           <th if={opts.action=="select-one"}>
             &nbsp;&nbsp;
           </th>
           <th each={headers}> {label} </th>
           <th if={opts.edit || opts.delete}></th>
           <th if={actions!=null && actions.length > 0}></th>
         </tr>
       </thead>
       <tbody>
       <tr each={rows} class="even pointer">
           <td if={opts.action=="select-one"} class="a-center ">
               <input type="radio" class="flat" name="table_records" style="position: absolute;">
           </td>
           <td if={opts.action=="select-multi"} class="a-center ">
               <input type="checkbox" class="flat" name="table_records">
           </td>
           <td each={d , i in data }>
             <raw html="{d}"></html>
           </td>
           <td class="centerColumnTable" if={opts.edit || opts.delete}>
               <edit-button if={opts.edit} to={ opts.edit }></edit-button>
               <delete-button if={opts.delete} to={ opts.delete }></delete-button>
           </td>
           <td class="centerColumnTable" if={actions.length > 0}>
              <div style="position:relative">
               <button  each={actions}  data-toggle="dropdown" class="btn btn-primary btn-sm dropdown-toggle botonTabla" type="button" aria-expanded="false" >
                 <!--i class="glyphicon glyphicon-flash"></i-->
                 {group}
                 <span class="caret"></span>
               </button>
               <ul each={actions}  role="menu" class="dropdown-menu" >
                <li each={actions}>
                 <a href={link}>{label}</a>
                </li>
              </ul>
              </div>
           </td>
       </tr>
       </tbody>
    </table>

    <pagination-bar if={opts.pagination=="true"} label="Total de registros encontrados: {this.rows.length}" previous="Anterior" next="Siguiente"/>
    <div if={opts.pagination=="false"} class="separador25px" />

    <style>
      .botonTabla {
        margin: 2px;
      }
      .centerColumnTable {
        text-align: center;
      }
      .estiloTabla{
        margin-bottom: 0px;
      }
      .separador25px {
        height: 25px;
      }
    </style>

     <script>
      this.headers    = JSON.parse(localStorage.getItem('header_'+ this.opts.id));
      this.rows       = JSON.parse(localStorage.getItem('rows_'+ this.opts.id));
      console.log(this.rows);
      for (var i=0; i < this.rows.length; i++)
      {
        for (var j=0; j < this.rows[i].data.length; j++){
          if (this.headers[j].type!=null) {
           if (this.headers[j].type=='currency') {
              if (this.headers[j].precision!=null)  {
                 this.rows[i].data[j]= '$'+ (Number(this.rows[i].data[j])).toLocaleString('en-US', { style: 'decimal', maximumFractionDigits : this.headers[j].precision, minimumFractionDigits : this.headers[j].precision })
              }
              else
              {
                 this.rows[i].data[j]= '$'+ (Number(this.rows[i].data[j])).toLocaleString('en-US', { style: 'decimal', maximumFractionDigits : localStorage.getItem('precision'), minimumFractionDigits : localStorage.getItem('precision') })
              }
           }
           else
           {
             this.rows[i].data[j]= this.rows[i].data[j]
           }
          }
          else{
           this.rows[i].data[j]= this.rows[i].data[j]
          }
        }
      }

      if (localStorage.getItem('actions_'+ this.opts.id) !== 'undefined'){
          this.actions    = JSON.parse(localStorage.getItem('actions_'+ this.opts.id));
      }
      this.goToRef = function(e){
			  toRef(e.item.link);
		  };
    </script>
</table-results>
