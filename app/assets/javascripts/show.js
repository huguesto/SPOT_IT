var number = Math.floor((Math.random() * 5) + 0);
var number2 = Math.floor((Math.random() * 0) + -5);
console.log(number2)
$(".polaroid:nth-of-type(n+1)").css("transform", "rotate(" + number + "deg)");
$(".polaroid:nth-of-type(n+2)").css("transform", "rotate(" + number2 + "deg)");


