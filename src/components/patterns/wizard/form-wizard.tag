<form-wizard>
    <h2 class="page-header">{opts.title}</h2>

    <ul class="wizard-steps-extensive" id="ulid{stepcontainerid}">
      <li each={ids} id={id}>
        <a href={opts.path} onclick={this.tostep} style="color: #EEE" isdone="0">
          <h5>{step}</h5>
          <span>{title}</span>
        </a>
      </li>
    </ul>
    <label>{idX}</label>
    <div id={stepcontainerid} class="stepContainer">
       <yield/>
    </div>
    <div class="ln_solid"></div>
    <div class="form-group pull-right">
          <a href={opts.path} class="btn btn-default btn-sm" onclick={prev} id="buttonPrevious">
            <span> {opts.prevbutton}</span>
            <i class="fa fa-chevron-left"></i>
          </a>

          <a href={opts.path} class="btn btn-primary btn-sm" onclick={next} id="buttonNext">
             <span> {opts.nextbutton}</span>
             <i class="fa fa-chevron-right"></i>
          </a>

          <a href={opts.return} class="btn btn-default btn-sm" onclick={return} id="buttonFinish" data-toggle="modal" data-target="#myModalpopUp">
             <i class="fa fa-check"></i>
             <span> {opts.donebutton}</span>
          </a>

          <ventana-modal id="myModal" title="Titulo de la ventana (popUp)" mensaje="Contenido del mensaje." buttons="cerrar"></ventana-modal>
          <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModalpopUp">PopUp</button>

          <date-picker id="fecha" type="date" label="Fecha" value="2018-02-10" placeholder="Ingresa tu fecha de nacimiento" required=true disabled=false format="YYYY/MM/DD" mindate="2018-02-02" maxdate="2018-02-15" />
    </div>

   <script>
     this.tostep= function(e){
       this.goToRef2(e.item.id)
     }


     this.goToRef2 = function(idto){
        var innerchildren = document.getElementById(this.stepcontainerid).children;

        for (var i = 0; i < innerchildren.length; i++) {
              document.getElementById(this.stepcontainerid).children[i].style.display="none";
              document.getElementById('ulid'+this.stepcontainerid).children[i].children[0].className="selected"
        }
        document.getElementById(this.stepcontainerid).children[idto].style.display="block";

        document.getElementById('ulid'+this.stepcontainerid).children[idto].className="completed"
        document.getElementById('ulid'+this.stepcontainerid).children[idto].children[0].style.color = "#FFFFFF";
     }

     this.prev = function(){
         var fid = this.stepcontainerid
         var fids= this.ids
         if (this.i>0)
         {
           this.i--
         }
         document.getElementById('buttonFinish').className="btn btn-default btn-sm disabled";
         document.getElementById('buttonNext').className="btn btn-primary btn-sm"
         if (this.i==0){
           document.getElementById('buttonPrevious').className="btn btn-default btn-sm disabled"
         }
         this.goToRef2(fids[this.i].id)
     }

     this.next = function(){
         var fid = this.stepcontainerid
         var fids= this.ids
         if (this.i<fids.length-1)
         {
           this.i++
         }
         document.getElementById('buttonFinish').className="btn btn-default btn-sm disabled";
         document.getElementById('buttonPrevious').className="btn btn-default btn-sm"
         if (this.i>=fids.length-1){
           document.getElementById('buttonNext').className="btn btn-primary btn-sm disabled"
           document.getElementById('buttonFinish').className="btn btn-primary btn-sm"
         }
         this.goToRef2(fids[this.i].id)
     }

     this.return=function(){
        this.i=0;
        if (document.getElementById('buttonFinish').className=="btn btn-default btn-sm disabled")
        {
         document.getElementById('buttonFinish').href=document.location.href.split("#!")[1]
        }
        else
        {
          document.getElementById('buttonFinish').href=opts.return
        }
     }

     this.stepcontainerid='stepContainer_'.concat(opts.id)

     this.on('mount', function() {
       document.getElementById('buttonPrevious').className="btn btn-default btn-sm disabled";
       document.getElementById('buttonFinish').className="btn btn-default btn-sm disabled";
       this.i=0;
       var innerchildren = document.getElementById(this.stepcontainerid).children;
       this.ids=[];
       for (var j = 0; j < innerchildren.length; j++) {
           this.idd=document.getElementById(this.stepcontainerid).children[j].attributes['id'].value;
           this.ids.push({
             step:j+1,
             id: this.idd,
             title:document.getElementById(this.stepcontainerid).children[j].attributes['title'].value,
             clas: 'selected'
           });
           if (j>0)
            document.getElementById(this.stepcontainerid).children[j].style.display = 'none'
       }
       this.update();

       document.getElementById('ulid'+this.stepcontainerid).children[0].className="completed"
       document.getElementById('ulid'+this.stepcontainerid).children[0].children[0].style.color = "#FFFFFF";
       document.getElementById('ulid'+this.stepcontainerid).children[0].children[0].className="done"

    });
   </script>

   <!--style>
     .wizard_horizontal ul.wizard_steps{display:table;list-style:none;position:relative;width:100%;margin:0 0 20px 0; padding:5px 0 5px 0; background-color: #DDDDDD;}/*Propiedades del panel contenedor del wizard*/
     .wizard_horizontal ul.wizard_steps li{display:table-cell;text-align:center;}
     .wizard_horizontal ul.wizard_steps li a,.wizard_horizontal ul.wizard_steps li:hover{display:block;position:relative;-moz-opacity:1;filter:alpha(opacity=100);opacity:1;color:#F6F6F6;}/*Para el subrayado de paso no seleccionado*/
     .wizard_horizontal ul.wizard_steps li a:before{content:"";position:absolute;height:2px;background:#ccc;top:15px;width:100%;z-index:4;left:0;}/*Propiedades de linea central entre nodos*/
     .wizard_horizontal ul.wizard_steps li a.disabled .step_no{background:#ccc;}
     .wizard_horizontal ul.wizard_steps li a .step_no{width:30px;height:30px;line-height:26px;border-radius:100px;display:block;margin:0 auto -25px;font-size:16px;text-align:center;position:relative;z-index:5; border: 2px solid #4D92DF;}/*Determina tamanio de circulo, dentrado de numero*/
     .step_no,.wizard_horizontal ul.wizard_steps li a.selected:before{background:#F6F6F6;color:#fff;}/*Paso no seleccionado*/
     .wizard_horizontal ul.wizard_steps li a.done .step_no,.wizard_horizontal ul.wizard_steps li a.done:before{background:#4D92DF;color:#F6F6F6;}/*Paso seleccionado*/
     .wizard_horizontal ul.wizard_steps li:first-child a:before{left:50%;}
     .wizard_horizontal ul.wizard_steps li:last-child a:before{right:50%;width:50%;left:auto;}
     .wizard_verticle .stepContainer{width:80%;float:left;padding:0 10px;}
   </style-->
</form-wizard>
