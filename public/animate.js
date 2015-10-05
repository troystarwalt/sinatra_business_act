// $("#navig_bar li").hover(function(){
// 	$(this).animate({width: 200px, backgroundColor: "#fff"}, 500);

// })

// $("#heading")on("click", function(event){
// 	.effect("bounce"), { times: 3}
// }

$("#button2").on("click", function(event){
	$("#box")
		.animate({width: "1000px"}, 7200)
		.effect("bounce", "slow", { times:100, durantion:1})
		.dequeue();
	$("#boxhead")
		.animate({fontSize: "50px"});
})