$(document).ready(function(){
    var $div_li=$("div.hody3s ul li");
    $div_li.click(function(){
        $(this).addClass("selected")
            .siblings().removeClass("selected");
        var index=$div_li.index(this);
        $("div.tab_box > div")
            .eq(index).show()
            .siblings().hide();
    })

})