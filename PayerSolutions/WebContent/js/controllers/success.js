myApp.controller('SuccessController',  function($scope,$http) {
  $scope.message = "Please fill all fields of the Provider Form!!!";
  $scope.addProvUrl="/PayerSolutions/addProv";
  $scope.getProvUrl="/PayerSolutions/getProv";
  $scope.searchProvUrl="/PayerSolutions/searchProv";
  $scope.updateProvUrl="/PayerSolutions/updateProv";
  $scope.fname="";
  $scope.lname="";
  $scope.credno="";
  $scope.resultProvdata={};
  $scope.providerdata={"CredentialNumber": "VM60171312",
          "LastName": "Corcel",
          "FirstName":"Megan",
          "MiddleName":"Jean",
          "CredentialType":"Veterinary Medication Clerk Registration",
          "Status":"EXPIRED",
          "year":"1985",
          "CEDueDate":"",
          "firstIss_dt":"20141023",
          "lastIss_dt":"20150407",
          "ExpirationDate":"20160430",
          "ActionTaken":"No"};
  $scope.addprov=false;
  $scope.viewprov=false;
  $scope.updateprov=false;

  $scope.initaddProvider=function()
  {
	  $scope.addprov=true;
	  $scope.viewprov=false;
	  $scope.updateprov=false;
  }
  
  $scope.initviewProvider=function()
  {
	  $scope.addprov=false;
	  $scope.viewprov=true;
	  $scope.updateprov=false;
  }

  $scope.initupdateProvider=function()
  {
	  //alert("initupdateProvider Called");
	  $scope.addprov=false;
	  $scope.viewprov=false;
	  $scope.updateprov=true;
  }
  
  $scope.addProvider=function()
  {
	  //alert("Called Add PRovider");
	  //alert("Status:"+$scope.params.status);
	  //alert($scope.providerdata.Status);
	  //Materialize.toast($scope.addProvUrl, 4000);
	  //Materialize.toast("Status:"+$scope.params.status, 4000);
	  //Materialize.toast($scope.providerdata.CredentialNumber, 4000);
	  
	  $scope.providerdata.CredentialNumber=$scope.params.credno;
	 // Materialize.toast($scope.providerdata.CredentialNumber, 4000);
		  $scope.providerdata.LastName=$scope.params.last_name;
		//  Materialize.toast($scope.providerdata.LastName, 4000);
		  $scope.providerdata.FirstName= $scope.params.first_name;
		  //Materialize.toast($scope.providerdata.FirstName, 4000);
		  $scope.providerdata.MiddleName=$scope.params.mi;
		  //Materialize.toast($scope.providerdata.MiddleName, 4000);
		  $scope.providerdata.CredentialType=$scope.params.credty;
		  //Materialize.toast($scope.providerdata.CredentialType, 4000);
		  $scope.providerdata.Status= $scope.params.status
		  //Materialize.toast($scope.providerdata.Status, 4000);
		  $scope.providerdata.year=   $scope.params.year;
		  //Materialize.toast($scope.providerdata.year, 4000);
		  $scope.providerdata.CEDueDate=$scope.params.cedt;
		  //Materialize.toast($scope.providerdata.CEDueDate, 4000);
		  $scope.providerdata.firstIss_dt= $scope.params.firstdt;
		  //Materialize.toast($scope.providerdata.firstIss_dt, 4000);
		  $scope.providerdata.lastIss_dt=$scope.params.lstdt;
		  //Materialize.toast($scope.providerdata.lastIss_dt, 4000);
		  $scope.providerdata.ExpirationDate=$scope.params.expdt;
		  //Materialize.toast($scope.providerdata.ExpirationDate, 4000);
		  $scope.providerdata.ActionTaken=$scope.params.actkn;
		  //Materialize.toast($scope.providerdata.ActionTaken, 4000);
		  //alert("After Update:"+$scope.providerdata.Status);
		  var data=JSON.stringify($scope.providerdata);
		  //Materialize.toast(data.first_name, 4000)
		  //alert(data);
		  //Materialize.toast(data, 4000)
	  //alert("Add Provider Information");
	   var config={
			  headers:{
				  	'Content-Type':'application/x-www-form-urlencoded;charset=utf-8;'
			  }
	  };
	  $http.post($scope.addProvUrl,data,config).success(function(response)
			  {
		  		$scope.message=response.message;
		  		//alert($scope.memberdata.firstname);
		  		Materialize.toast($scope.message, 4000)
			  });
  }
  
  $scope.viewProvider=function()
  {
	  //Materialize.toast('I am a toast', 4000)	
	 
	  //Materialize.toast($scope.viewprov, 4000)
	  //alert("Add Provider Information");
	  $http.get($scope.getProvUrl).success(function(response)
			  {
		  		/*Materialize.toast("DAta, 4000)
*/		  		//$scope.providerdata=response;
		  		//alert($scope.memberdata.firstname);
		  		$scope.resultProvdata=response;
		  		//alert($scope.resultProvdata[0].FirstName);
		  		//Materialize.toast($scope.resultProvdata.FirstName,4000);
			  });
  }
  
  $scope.searchKeyWord={"searchkey":"All"};
  
  $scope.searchProvdata={};
  
  $scope.searchProvider=function()
  {
	  $scope.searchKeyWord.searchkey=$scope.srchkey.keyword;
	  var data=JSON.stringify($scope.searchKeyWord.searchkey);
	  var config={
			  headers:{
				  	'Content-Type':'application/x-www-form-urlencoded;charset=utf-8;'
			  }
	  };
	  $http.post($scope.searchProvUrl,data,config).success(function(response)
			  {
		  		$scope.searchProvdata=response;
		  		//alert($scope.searchProvdata.FirstName);
		  		$scope.fname=$scope.searchProvdata.FirstName;
		  		$scope.lname=$scope.searchProvdata.LastName;
		  		$scope.credno=$scope.searchProvdata.CredentialNumber;
				  });
  }
  
  
  $scope.updateProvider=function()
  {
	  //alert("Called Add PRovider");
	  //alert("Status:"+$scope.params.status);
	  //alert($scope.providerdata.Status);
	  //Materialize.toast($scope.addProvUrl, 4000);
	  //Materialize.toast("Status:"+$scope.params.status, 4000);
	  //Materialize.toast($scope.providerdata.CredentialNumber, 4000);
	  //Materialize.toast($scope.fname, 4000);
	  $scope.providerdata.CredentialNumber=$scope.credno;
	 // Materialize.toast($scope.providerdata.CredentialNumber, 4000);
		  $scope.providerdata.LastName=$scope.lname;
		//  Materialize.toast($scope.providerdata.LastName, 4000);
		  $scope.providerdata.FirstName= $scope.fname;
		  //Materialize.toast($scope.providerdata.FirstName, 4000);
		  $scope.providerdata.MiddleName="N/A";
		  //Materialize.toast($scope.providerdata.MiddleName, 4000);
		  $scope.providerdata.CredentialType=$scope.update.credty;
		  //Materialize.toast($scope.providerdata.CredentialType, 4000);
		  $scope.providerdata.Status= $scope.update.status
		  //Materialize.toast($scope.providerdata.Status, 4000);
		  $scope.providerdata.year=   $scope.update.year;
		  //Materialize.toast($scope.providerdata.year, 4000);
		  $scope.providerdata.CEDueDate=$scope.update.cedt;
		  //Materialize.toast($scope.providerdata.CEDueDate, 4000);
		  $scope.providerdata.firstIss_dt= $scope.update.firstdt;
		  //Materialize.toast($scope.providerdata.firstIss_dt, 4000);
		  $scope.providerdata.lastIss_dt=$scope.update.lstdt;
		  //Materialize.toast($scope.providerdata.lastIss_dt, 4000);
		  $scope.providerdata.ExpirationDate=$scope.update.expdt;
		  //Materialize.toast($scope.providerdata.ExpirationDate, 4000);
		  $scope.providerdata.ActionTaken=$scope.update.actkn;
		  //Materialize.toast($scope.providerdata.ActionTaken, 4000);
		  //alert("After Update:"+$scope.providerdata.Status);
		  var data=JSON.stringify($scope.providerdata);
		  //Materialize.toast(data.first_name, 4000)
		  //alert(data);
		  //Materialize.toast(data, 4000)
	  //alert("Add Provider Information");
	   var config={
			  headers:{
				  	'Content-Type':'application/x-www-form-urlencoded;charset=utf-8;'
			  }
	  };
	  $http.post($scope.updateProvUrl,data,config).success(function(response)
			  {
		  		$scope.message=response.message;
		  		//alert($scope.memberdata.firstname);
		  		Materialize.toast($scope.message, 4000)
			  });
  }
  
  $scope.viewProvider();
  
});