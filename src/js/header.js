// 此处要等页面加载完全了才能获取 important
window.onload = function(){
    var top = document.getElementsByClassName("top")[0];

        // 返回顶部效果
        top.onclick = function(){
            var time = setInterval(function(){
                var scroll = window.scrollY;
                scrollBy(0, -scroll/10);
                if(scroll<=0){
                    clearInterval(time);
                }
            },30);
        }

}