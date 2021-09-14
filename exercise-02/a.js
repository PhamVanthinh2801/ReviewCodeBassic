function Promise api(func) {
    func("1");
}
function api2(func) {
    func("2");
}
function api3(func) {
    func("3");
}

api(function (result){
	console.log("result: ",result);

	api2(function(result2) {
			console.log("result2: ",result2);
		
		api3(function(result3) {
			console.log("result3: ",result3);
			
			});
	});
});