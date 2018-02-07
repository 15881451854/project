jQuery(function($){

    // 加载头部尾部
    $('#pageHeader').load('../html/header.html');
    $('#pageFooter').load('../html/footer.html');


    // 加载商品
    $.ajax({
        url:"../api/list.php",
        dataType:"json",
        success:function(data){
            var html = data.map(function(item, index, array){
                return `
                        <li data-id="${item.id}">
                            <img src="${item.imgs}"/>
                            <p class="title">${item.description}</p>
                            <p class="price">¥${item.now_price}<span>¥${item.original_price}</span></p>
                            <p class="stock">库存${item.qty}</p>
                        </li>
                    `;
            }).join("");
            $(".product_rc").html(html);
            $(".product_rc").on("click", "li", function(){
                var params = $(this).attr("data-id");
                location.href = "../html/details.html?"+params;
            });
        }
    });


    // 分页加载商品
    $.ajax({
        url:"../api/paging.php",
        dataType:"json",
        success:function(data){
            
        }
    });


});