var api = new Promise(function (func) {
    func("1");
});

var api2 = new Promise(function (func) {
    func("2");
});

var api3 = new Promise(function (func) {
    func("3");
});


api.then(function (result){
	console.log("result: ",result);

	api2.then(function(result2) {
			console.log("result2: ",result2);
		
		api3.then(function(result3) {
			console.log("result3: ",result3);
			
			});
	});
});


