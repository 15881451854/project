jQuery(function($){

    // 加载头部尾部
    $('#pageHeader').load('../html/header.html');
    $('#pageFooter').load('../html/footer.html');

    function html(){
    // 读取cookie
    var goodslist;
    var cookies = document.cookie;
        cookies = cookies.split("; ");
        cookies.forEach(function(item, index, array){
            var arr = item.split("=");
            if(arr[0] == "goodslist"){
                goodslist = JSON.parse(arr[1]);
            }
        });

    console.log(goodslist);

    // 将cookie写入结构
    
        var html = goodslist.map(function(item, index, array){
            return `
                <li id="${item.id}">
                    <p>${item.title}</p>
                    <img class="fl" src="${item.imgurl}">
                    <div class="fl pri">
                        <p class="yuan">￥<span class="yuanjia">${item.yuanjia}</span></p>
                        <p class="xian">￥<span class="xianjia">${item.xianjia}</span></p>
                    </div>
                    <div class="fl btn">
                        <input class="down" type="button" value="-">
                        <input class="text" type="text" value="${item.qty}" disabled>
                        <input class="up" type="button" value="+">
                    </div>
                    <span class="close">&times;</span>
                </li>
                `;
        }).join("");

        $("#cart ul").html(html);
   }

   html();
    // 增加和减少按钮
    $(".down").on("click", function(e){
        var text = $(this).next(".text").val()*1;
        text--;
        if(text <= 0){
            text = 1;
        }
        $(this).next(".text").attr("value",text);
    });

    $(".up").on("click", function(){
        var text = $(this).prev(".text").val()*1;
        text++;
        $(this).prev(".text").attr("value",text);
    });

    function total(){
        var total = 0;
        var li =document.querySelectorAll("#cart li");
        li.forEach(function(item, index, array){
            total += (item.getElementsByClassName("xianjia")[0].innerHTML*1) * (item.getElementsByClassName("text")[0].value*1);
        });
        return total;
    };

    $(".total").html(total());

    $(".up").on("click", function(){
        $(".total").html(total());
    });

    $(".down").on("click", function(){
        $(".total").html(total());
    });

    var cart = document.getElementById("cart");
    cart.onclick = function(e){
            var goodslist1 = [];
            var id = e.target.parentNode.id;
            // 删除按钮
            if(e.target.className == "close"){
                var cookies = document.cookie;
                cookies = cookies.split("; ");
                cookies.forEach(function(item, index, array){
                    var arr = item.split("=");
                    if(arr[0] == "goodslist"){
                        goodslist1 = JSON.parse(arr[1]);
                    }
                });

                goodslist1.forEach(function(item, index, array){
                    if(item.id == id){
                        var ind = goodslist1.indexOf(item);
                        goodslist1.splice(ind, 1);
                    }
                });

                document.cookie = "goodslist="+JSON.stringify(goodslist1);
                html();
                $(".total").html(total());
            }
        }









});