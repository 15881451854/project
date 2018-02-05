jQuery(function($){

    // 加载头部尾部
    $('#pageHeader').load('html/header.html');
    $('#pageFooter').load('html/footer.html');


    // 首页轮播图
    var $tab = $('#banner');
    var $content = $tab.find('.bannerImg li');
    var $tabItem = $tab.find('.tab li');

    var idx = 0;
    var timer;
    $tabItem.first().addClass('active');
    function auto(){
        timer = setInterval(function(){
            idx++;
            if(idx>=4){
                idx=0;
            }
            $tabItem.eq(idx).addClass('active').siblings().removeClass('active');
            $content.eq(idx).stop().fadeIn().siblings().stop().fadeOut();
        },3000);
    }
    auto();

    $tab.on('mouseover','.tab li',function(){
        clearInterval(timer)
        idx = $(this).index();
        $tabItem.eq(idx).addClass('active').siblings().removeClass('active');
        $content.eq(idx).stop().fadeIn().siblings().stop().fadeOut();
    });

    $tab.on('mouseout','.tab li',function(){
        auto();
    });


    // 首页tab标签切换
    var $recommend = $('#recommend');
    var $Item = $recommend.find('.switch li');
    var $pro = $recommend.find('.pro ul');

    $pro.not(':first').hide();
        $Item.first().addClass('active');
        $recommend.on('mouseover','.switch li',function(){
            var idx = $(this).index();
            console.log(this,idx);
            $Item.eq(idx).addClass('active').siblings().removeClass('active');
            $pro.eq(idx).stop().fadeIn().siblings().stop().fadeOut();
        });


    // 点击跳转
    var $skip = $(".skip");
    var $child = $skip.children();
    window.onscroll = function(){
        var scrollY = window.scrollY;
        if(scrollY>=1340){
            $skip.addClass('fixed');
            $child.removeClass('active');
            $child[1].classList.add('active');
        }else{
            $skip.removeClass('fixed');
        }
        if(scrollY>=1810){
            $child.removeClass('active');
            $child[2].classList.add('active');
        }

        if(scrollY>=2385){
            $child.removeClass('active');
            $child[3].classList.add('active');
        }
    }
    $child[1].onclick = function(){
        window.scrollTo(0 ,1340);
    }
    $child[2].onclick = function(){
        window.scrollTo(0 ,1810);
    }
    $child[3].onclick = function(){
        window.scrollTo(0 ,2385);
    }

});