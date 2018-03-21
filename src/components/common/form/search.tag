<search>
   <div class="col-sm-6 divSearchStyle">
     <input  type="text" class="form-control" placeholder={opts.placeholder}>
   </div>
   <div class="col-sm-6">
       <button class="btn btn-default btn-sm pull-left" type="button">
         <i class="fa fa-search"></i>
         {opts.caption}
       </button>
   </div>

   <yield/>



   <style>
      .divSearchStyle{
        padding: 0px;
      }
   </style>
</search>
