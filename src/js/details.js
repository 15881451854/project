jQuery(function($){

    // 加载头部尾部
    $('#pageHeader').load('../html/header.html');
    $('#pageFooter').load('../html/footer.html');


    // 从商品列表过来
    var id = location.search;
    id = id.replace("?","");

    // 根据id将数据写入详情页
    $.ajax({
        url:"../api/goods.php",
        dataType:"json",
        data:{
            id:id
        },
        success:function(data){
            console.log(data);
            // 替换图片
            $(".zoom img").attr({
                src:data.imgs
            });
            $(".details_img img").attr({
                src:data.imgs
            });
            // 替换标题
            $(".title").html(data.description);
            // 替换原价
            $(".price_o span span").html(data.original_price);
            // 替换现价
            $(".price_n span span").html(data.now_price);
            // 替换库存
            $(".repertory span").html(data.qty);
            // 将最大数改为库存数
            $(".num input").attr({
                max:data.qty
            });
        }
    });


    // 点击购物车按钮显示成功加入到购物车
    $(".add").on("click", function(){
        $(".succeed").fadeIn();
        // 实现飞入购物车效果
        $img =  $(".zoom img")
        $copyImg = $img.clone();
        $carlist = $(".cart_ico");

        $copyImg.css({
            position:'absolute',
            left:$img.offset().left,
            top:$img.offset().top,
            width:$img.outerWidth()
        });

        $('body').append($copyImg);
        $copyImg.animate({
            left:$carlist.offset().left,
            top:$carlist.offset().top + $carlist.height(),
            width:0
        },function(){
            $copyImg.remove();
        });


    });

    // 点击关闭按钮关闭购物车提示
    $(".close").on("click", function(){
        $(".succeed").fadeOut();
    });

    // 放大镜效果
    $('.zoom').gdsZoom({
        position:'right',
        width:400,
        height:400,
        gap:5
    });

    // 左侧的tab标签切换
    var $rank = $('.rank');
    var $Item = $rank.find('.item li');
    var $pro = $rank.find('.content ul');

    $pro.not(':first').hide();
        $Item.first().addClass('active');
        $rank.on('mouseover','.item li',function(){
            var idx = $(this).index();
            $Item.eq(idx).addClass('active').siblings().removeClass('active');
            $pro.eq(idx).stop().fadeIn().siblings().stop().fadeOut();
        });

    // 评论区的切换及吸顶效果
    var $introduce = $(".introduce");
    var $ul = $introduce.find('ul');
    var $li = $introduce.find('li');
    $introduce.on("click", "ul li", function(){
        var idx = $(this).index();
        $li.eq(idx).addClass('active').siblings().removeClass('active');
    });

    window.onscroll = function(){
        if(scrollY>=751){
            $ul.addClass('fixed');
            $li.removeClass('active');
            $li[0].classList.add('active');
        }
        else{
            $ul.removeClass('fixed');
        }
        if(scrollY>=1542){
            $li.removeClass('active');
            $li[1].classList.add('active');
        }
        if(scrollY>=1866){
            $li.removeClass('active');
            $li[2].classList.add('active');
        }
        if(scrollY>=1970){
            $li.removeClass('active');
            $li[3].classList.add('active');
        }
    };
    $li[0].onclick = function(){
        window.scrollTo(0,787);
    }
    $li[1].onclick = function(){
        window.scrollTo(0,1542);
    }
    $li[2].onclick = function(){
        window.scrollTo(0,1866);
    }
    $li[3].onclick = function(){
        window.scrollTo(0,1970);
    }


 // 评论区的切换
    var $comm1 = $(".comm1");
    var $li1 = $comm1.find('li');
    $comm1.on("click", "ul li", function(){
        var idx = $(this).index();
        $li1.eq(idx).addClass('active').siblings().removeClass('active');
    });

    var $all = $(".all");
    var $li2 = $all.find('li');
    $all.on("click", "ul li", function(){
        var idx = $(this).index();
        $li2.eq(idx).addClass('active').siblings().removeClass('active');
    });

});