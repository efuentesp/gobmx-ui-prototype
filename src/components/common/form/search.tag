<search>
 <div class="col-sm-11" style="padding: 0px;">
   <input type="text" class="form-control" placeholder={opts.placeholder}>
 </div>
 <div class="col-sm-1">
   <!--span class="input-group-btn" style="padding: 0px;"-->
     <button class="btn btn-default btn-sm pull-left" type="button">
       <i class="fa fa-search"></i>
       {opts.caption}
     </button>
   <!--/span-->
 </div>
 <yield/>
</search>
