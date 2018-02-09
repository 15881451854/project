jQuery(function($){
    $(".btn").on("click", function(){
        $.ajax({
            url:"../api/reg.php",
            data:{
                username:$(".username").val(),
                password:$(".password").val()
            },
            success:function(data){
                var data=data.replace(/\s/g, "");

                if(data == 'success'){
                    location.href = "login.html";
                }
                else if(data == "fail"){
                    alert("注册失败");
                }else if(data == "occupy"){
                    $(".hint").html("该用户名太受欢迎，请重新输入");
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
