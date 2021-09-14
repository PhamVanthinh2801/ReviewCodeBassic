async function api (func) {
   await func("1");
};
async function api2 (func) {
    await func("2");
};
async function api3 (func) {
    await func("3");
};

api(function (result){
	console.log("result: ",result);
	
	api2(function(result2) {
		console.log("result2: ",result2);
			
			api3(function(result3) {
				console.log("result3: ",result3);
			
			});
	});
});
