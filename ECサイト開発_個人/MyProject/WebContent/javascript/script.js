/**
 *
 */
jQuery (function(){

// ここにjQueryを書いていく

	/* ============== 上へ戻るボタン ================ */
    //■page topボタン
    var topBtn=$('#pageTop');
    topBtn.hide();

    //◇ボタンの表示設定
    $(window).scroll(function(){
      if($(this).scrollTop()> 150){
        //---- 画面を150pxスクロールしたら、ボタンを表示する
        topBtn.fadeIn();
      }else{
        //---- 画面が150pxより上なら、ボタンを表示しない
        topBtn.fadeOut();
      }
    });

    // ◇ボタンをクリックしたら、スクロールして上に戻る
    topBtn.click(function(){
      $('body,html').animate({
      scrollTop: 0},500);
      return false;
    });
    /* ============== 上へ戻るボタン ================ */

	$("h1").click(function(){
		$(".samp2").fadeIn("slow");
		$(".samp1 .samp2").fadeOut("slow");
		$("h1").css("color", "#dc143c")
	})

//	$("img").hover(
//	こうすると5枚全部が動く

	$(".click_img img").hover(
//	先頭の1枚
			function(){
				$(this).animate({width:"500px"});
			},
			function(){
				$(this).animate({width:"400px"});
			});

	$(".4imgs img").hover(
//	残りの4枚
			function(){
				$(this).animate({width:"300px"});
			},
			function(){
				$(this).animate({width:"400px"});
			});

	document.querySelector('button')
	  .addEventListener('click', function() {
	    document.querySelector('ul').classList.toggle('is-open');
	  });


});

