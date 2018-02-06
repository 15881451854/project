jQuery(function($){

    // 加载头部尾部
    $('#pageHeader').load('../html/header.html');
    $('#pageFooter').load('../html/footer.html');


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
});