// jQuery(function($){

require(['config'],function(){
    require(['jquery'],function($){
    $(".btn").on("click", function(){
        $.ajax({
            url:"../api/login.php",
            data:{
                username:$(".username").val(),
                password:$(".password").val()
            },
            success:function(data){
                var data=data.replace(/\s/g, "");

                if(data == 'ok'){
                    location.href = "../index.html";
                }
                else if(data == "fail"){
                    $(".hint").html("该用户不存在");
                }
            }
                
        });
        
    });

    $(".yan").on("click", function(){
        $(".yan").html(randomNumber(1000,9999));
    });

    function randomNumber(min,max){
        return parseInt(Math.random()*(max-min+1)) + min
    }


});
});

// });
