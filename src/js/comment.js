// 根据cookie写入页面结构

function html(){
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
                <li id="${item.id}" class="fl">
                    <img class="fl" src="${item.imgurl}">
                    <p class="tit fl">${item.title}</p>
                    <div class="fr">
                        <p>￥${item.xianjia}</p>
                        <span>删除</span>
                    </div>
                <li>
            `;
    }).join("");
    cart.innerHTML = html;
}
