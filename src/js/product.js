jQuery(function($){

    // 加载头部尾部
    $('#pageHeader').load('../html/header.html');
    $('#pageFooter').load('../html/footer.html');


    // 分页加载商品
    var pageNo = 1;
    var qty = 12;
    $.ajax({
        url:"../api/list.php",
        dataType:"json",
        data:{
            pageNo:pageNo,
            qty:qty
        },
        success:function(data){
            // 根据数据写结构
            console.log(data);
            add(data);
            var pageQty = Math.ceil(data.total/data.qty);

            // 分页
            $(".page_number").on("click","span", function(e){
                pageNo = e.target.innerText*1;
                console.log(pageNo);
                $.ajax({
                    url:"../api/list.php",
                    dataType:"json",
                    data:{
                        pageNo:pageNo,
                        qty:qty
                    },
                    success:function(data){
                        add(data);
                    }
                });
            });


            // 首页
            $(".page").find("span").first().on("click", function(e){
                $.ajax({
                    url:"../api/list.php",
                    dataType:"json",
                    data:{
                        pageNo:1,
                        qty:qty
                    },
                    success:function(data){
                        add(data); 
                    }
                });
            });


            // 末页
            $(".page").find("span").last().on("click", function(e){
                $.ajax({
                    url:"../api/list.php",
                    dataType:"json",
                    data:{
                        pageNo:pageQty,
                        qty:qty
                    },
                    success:function(data){
                        add(data); 
                    }
                });
            });
           
            // 上一页
            $(".page").find("span").first().next().on("click", function(e){
                pageNo = --pageNo;
                if(pageNo<1){
                    pageNo = 1;
                }
                $.ajax({
                    url:"../api/list.php",
                    dataType:"json",
                    data:{
                        pageNo:pageNo,
                        qty:qty
                    },
                    success:function(data){
                        add(data); 
                    }
                });
            });

            // 下一页
            $(".page").find("span").last().prev().on("click", function(e){
                pageNo = ++pageNo;
                if(pageNo>pageQty){
                    pageNo = pageQty;
                }
                $.ajax({
                    url:"../api/list.php",
                    dataType:"json",
                    data:{
                        pageNo:pageNo,
                        qty:qty
                    },
                    success:function(data){
                        add(data); 
                    }
                });
            });

        } 
    });


    // 写入结构函数
    function add(data){
        var html = data.data.map(function(item, index, array){
            return `
                    <li data-id="${item.id}">
                        <img src="${item.imgs}"/>
                        <p class="title">${item.description}</p>
                        <p class="price">¥${item.now_price}<span>¥${item.original_price}</span></p>
                        <p class="stock">库存${item.qty}</p>
                    </li>
                `;
        }).join("");
        // 将商品数据写入页面
        $(".product_rc").html(html);

        // 根据数据写页码
        $(".page_number").html("");
        var pageQty = Math.ceil(data.total/data.qty);
        for(var i=1;i<=pageQty;i++){
            var span = document.createElement('span');
            span.innerText = i;
            if(i===data.pageNo){
                span.className = 'active';
            }
            $(".page_number").append(span);
        }
    }    

    
    // 根据id将id传入详情页
    $(".product_rc").on("click", "li", function(){
        var params = $(this).attr("data-id");
        location.href = "../html/details.html?id="+params;
    });



});