myApp.controller('PanelController',  function($scope,$http) {
  $scope.message = "Please fill all fields of the Provider Form!!!";
  
  $scope.getProvUrl="/Test/getProv";
	
  //var $scope.resultProvdata;
  
  $scope.loadPanel=function()
  {
	  var provjcarousel =  $('.jcarousel').jcarousel();
	  //alert("Load Panel Called");
	  $http.get($scope.getProvUrl).success(function(response)
			  {
		 var html = '<ul>';
       var cedt="";
       $.each(response.items, function() {
       	
       	if(this.CEDueDate=="")
       	{
       		cedt="N/A";
       	}else
       		{
       		cedt=this.CEDueDate;
       		}
       		
       	html +='<li> <div class="card-panel  blue-grey darken-1 large" style="height:400px;width:1000px;">'+
               '<div class="card-content white-text">'+
           '<span class="card-title center"><h4>'+this.LastName+' '+this.FirstName+'</h4></span>'+
           '<div class="row center">'+
           '<div class="col offset-m4 s6 m4 l4 center">'+
           '<span class="card-title"><h5 class="orange accent-4">Credential Number:</h5><h6>'+this.CredentialNumber+'</h6>  <h5 class="orange accent-4">Credential Type:</h5><h6>'+this.CredentialType+'</h6></span>'+
           '</div>'+
           '<div class="col offset-m4 s6 m4 l4 right">'+
           '<span class="card-title"><h5 class="orange accent-4">Status:</h5><h6>'+this.Status+'</h6>  <h5 class="orange accent-4">Birth Year:</h5><h6>'+this.year+'</h6></span>'+
           '</div></div>'+
           '<div class="row center">'+
           '<div class="col offset-m4 s6 m4 l4 center">'+
           '<span class="card-title"><h5 class="orange accent-4">Last Issue Date:</h5><h6>'+this.lastIss_dt+'</h6> <h5 class="orange accent-4">First Issue Date:</h5><h6>'+this.firstIss_dt+'</h5></span>'+
           '</div>'+
           '<div class="col offset-m4 s6 m4 l4 right">'+
           '<span class="card-title"><h5 class="orange accent-4">CE Due Date:</h5><h6>'+cedt+'</h6> <h5 class="orange accent-4">Expiration Date:</h5><h6>'+this.ExpirationDate+'</h6></span>'+
           '</div></div></div></li>';
        
       });

       html += '</ul>';
       
       // Append items
       provjcarousel
           .html(html);

       // Reload carousel
       provjcarousel
           .jcarousel('reload');

		  		
			  });
	  
  };
  
  $scope.search=function()
  {
	  Materialize.toast('Searching '+$scope.srchkey.keyword+ '...', 4000);	
	  
	  var provjcarousel =  $('.jcarousel').jcarousel();
	  //alert("Load Panel Called");
	  $http.get($scope.getProvUrl).success(function(response)
			  {
		 var html = '<ul>';
       var cedt="";
       $.each(response.items, function() {
       	
       			
       		
    	   
       	if(this.CEDueDate=="")
       	{
       		cedt="N/A";
       	}else
       		{
       		cedt=this.CEDueDate;
       		}
       		
       	if(this.FirstName==$scope.srchkey.keyword||this.LastName==$scope.srchkey.keyword||this.CredentialNumber==$scope.srchkey.keyword)
   		{
       	html +='<li> <div class="card-panel  blue-grey darken-1 large" style="height:400px;width:1000px;">'+
               '<div class="card-content white-text">'+
           '<span class="card-title center"><h4>'+this.LastName+' '+this.FirstName+'</h4></span>'+
           '<div class="row center">'+
           '<div class="col offset-m4 s6 m4 l4 center">'+
           '<span class="card-title"><h5 class="orange accent-4">Credential Number:</h5><h6>'+this.CredentialNumber+'</h6>  <h5 class="orange accent-4">Credential Type:</h5><h6>'+this.CredentialType+'</h6></span>'+
           '</div>'+
           '<div class="col offset-m4 s6 m4 l4 right">'+
           '<span class="card-title"><h5 class="orange accent-4">Status:</h5><h6>'+this.Status+'</h6>  <h5 class="orange accent-4">Birth Year:</h5><h6>'+this.year+'</h6></span>'+
           '</div></div>'+
           '<div class="row center">'+
           '<div class="col offset-m4 s6 m4 l4 center">'+
           '<span class="card-title"><h5 class="orange accent-4">Last Issue Date:</h5><h6>'+this.lastIss_dt+'</h6> <h5 class="orange accent-4">First Issue Date:</h5><h6>'+this.firstIss_dt+'</h5></span>'+
           '</div>'+
           '<div class="col offset-m4 s6 m4 l4 right">'+
           '<span class="card-title"><h5 class="orange accent-4">CE Due Date:</h5><h6>'+cedt+'</h6> <h5 class="orange accent-4">Expiration Date:</h5><h6>'+this.ExpirationDate+'</h6></span>'+
           '</div></div></div></li>';
   		}
        
       });

       html += '</ul>';
       
       // Append items
       provjcarousel
           .html(html);

       // Reload carousel
       provjcarousel
           .jcarousel('reload');

       Materialize.toast('Loaded data for '+$scope.srchkey.keyword+ '...', 4000);	
 	  
			  });
	  
  };
  
  //$scope.loadPanel();
});