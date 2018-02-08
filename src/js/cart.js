jQuery(function($){

    // 加载头部尾部
    $('#pageHeader').load('../html/header.html');
    $('#pageFooter').load('../html/footer.html');

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

    var html = goodslist.map(function(item, index, array){
        return `
            <li>
                <p>${item.title}</p>
                <img class="fl" src="${item.imgurl}">
                <div class="fl pri">
                    <p class="yuan">￥${item.yuanjia}</p>
                    <p class="xian">￥${item.xianjia}</p>
                </div>
                <div class="fl btn">
                    <input type="button" value="-">
                    <input type="text" value="${item.qty}" disabled>
                    <input type="button" value="+">
                </div>
                <span>&times;</span>
            </li>
            `;
    }).join("");

    $("#cart ul").html(html);




});