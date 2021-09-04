//modal//



//new//

$(function(){
 
  //テキストリンクをクリックしたら
 $("#modal-open-new").click(function(){
      //body内の最後に<div id="modal-bg"></div>を挿入
     $("body").append('<div id="modal-bg"></div>');
 
    //画面中央を計算
    modalResize();
 
    //モーダルウィンドウを表示
        $("#modal-bg,#modal-new").fadeIn("slow");
        //$("#info-text-form").fadeIn("slow");
        //$("text-button").fadeIn("slow");
 
    //投稿エリア外をクリックしたらモーダルを閉じる
      $("#modal-bg").click(function(){
          $("#modal-new,#modal-bg").fadeOut("slow",function(){
         //モーダル関係を削除
              $('#modal-bg').remove() ;
         });
 
        });
 
    //画面中央に表示
     $(window).resize(modalResize);
      function modalResize(){
 
            var w = $(window).width();
          var h = $(window).height();
 
            var cw = $("#modal-new").outerWidth();
           var ch = $("#modal-new").outerHeight();
 
        
            $("#modal-new").css({
                "left": ((w - cw)/2) + "px",
                "top": ((h - ch)/2) + "px"
          });
     }
   });
});


//destroy//

$(function(){

  document.getElementById("text-submit").onclick = function () {
    document.getElementById("notice-delete").click();
  };
 
  //テキストリンクをクリックしたら
 $("#modal-open-delete").click(function(){
      //body内の最後に<div id="modal-bg"></div>を挿入
     $("body").append('<div id="modal-bg"></div>');
 
    //画面中央を計算
    modalResize();
 
    //モーダルウィンドウを表示
        $("#modal-bg,#modal-delete").fadeIn("slow");
        //$("#info-text-form").fadeIn("slow");
        //$("text-button").fadeIn("slow");
 
    //投稿エリア外をクリックしたらモーダルを閉じる
      $("#modal-bg").click(function(){
          $("#modal-delete,#modal-bg").fadeOut("slow",function(){
         //モーダル関係を削除
              $('#modal-bg').remove() ;
         });
 
        });
 
    //画面中央に表示
     $(window).resize(modalResize);
      function modalResize(){
 
            var w = $(window).width();
          var h = $(window).height();
 
            var cw = $("#modal-delete").outerWidth();
           var ch = $("#modal-delete").outerHeight();
 
        
            $("#modal-delete").css({
                "left": ((w - cw)/2) + "px",
                "top": ((h - ch)/2) + "px"
          });
     }
   });
});



//comment//

$(function(){
 
  //テキストリンクをクリックしたら
 $("#modal-open-comment").click(function(){
      //body内の最後に<div id="modal-bg"></div>を挿入
     $("body").append('<div id="modal-bg"></div>');
 
    //画面中央を計算
    modalResize();
 
    //モーダルウィンドウを表示
        $("#modal-bg,#comment-new").fadeIn("slow");
        //$("#info-text-form").fadeIn("slow");
        //$("text-button").fadeIn("slow");
 
    //投稿エリア外をクリックしたらモーダルを閉じる
      $("#modal-bg").click(function(){
          $("#comment-new,#modal-bg").fadeOut("slow",function(){
         //モーダル関係を削除
              $('#modal-bg').remove() ;
         });
 
        });
 
    //画面中央に表示
     $(window).resize(modalResize);
      function modalResize(){
 
            var w = $(window).width();
          var h = $(window).height();
 
            var cw = $("#comment-new").outerWidth();
           var ch = $("#comment-new").outerHeight();
 
        
            $("#comment-new").css({
                "left": ((w - cw)/2) + "px",
                "top": ((h - ch)/2) + "px"
          });
     }
   });
});