window.addEventListener('load', function(){

  //ゲンガー画像
  const firstMonster = document.getElementById("first-monster")
  //ゲンガー文
  const firstSentence = document.getElementById("first-message-box")


  //モンスターボール
  const monsterBall = document.getElementById("select-list-1")
  //リザードン画像
  const secondMonster = document.getElementById("second-monster")
  //リザードン文
  const secondSentence = document.getElementById("second-message-box")
  

  //モンスターボールマウスオーバー
  monsterBall.addEventListener('mouseover', function(){
    //リザードン表示
    secondMonster.setAttribute("style", "display:block;")
    secondSentence.setAttribute("style", "display:block;")
    //ゲンガー非表示
    firstMonster.setAttribute("style", "display:none;")
    firstSentence.setAttribute("style", "display:none;")
  })


  ////モンスターボールマウスアウト
  monsterBall.addEventListener('mouseout', function(){
    console.log("mouseout OK")
    //リザードン非表示
    secondMonster.setAttribute("style", "display:none;")
    secondSentence.setAttribute("style", "display:none;")
    //ゲンガー表示
    firstMonster.setAttribute("style", "display:block;")
    firstSentence.setAttribute("style", "display:block;")
  })

    //スーパーボール
    const superBall = document.getElementById("select-list-2")
    //ニャース画像
    const thirdMonster = document.getElementById("third-monster")
    //ニャース文
    const thirdSentence = document.getElementById("third-message-box")

  //スーパーボールマウスオーバー
  superBall.addEventListener('mouseover', function(){
    //ニャース表示
    thirdMonster.setAttribute("style", "display:block;")
    thirdSentence.setAttribute("style", "display:block;")
    //ゲンガー非表示
    firstMonster.setAttribute("style", "display:none;")
    firstSentence.setAttribute("style", "display:none;")
  })

  //スーパーボールマウスアウト
  superBall.addEventListener('mouseout', function(){
    console.log("mouseout OK")
    //ニャース非表示
    thirdMonster.setAttribute("style", "display:none;")
    thirdSentence.setAttribute("style", "display:none;")
    //ゲンガー表示
    firstMonster.setAttribute("style", "display:block;")
    firstSentence.setAttribute("style", "display:block;")
  }) 


    //ハイパーボール
    const hyperBall = document.getElementById("select-list-3")
    //ラッキー画像
    const forceMonster = document.getElementById("force-monster")
    //ラッキー文
    const forceSentence = document.getElementById("force-message-box")

  //ハイパーボールマウスオーバー
  hyperBall.addEventListener('mouseover', function(){
    //ラッキー表示
    forceMonster.setAttribute("style", "display:block;")
    forceSentence.setAttribute("style", "display:block;")
    //ゲンガー非表示
    firstMonster.setAttribute("style", "display:none;")
    firstSentence.setAttribute("style", "display:none;")
  })

  //ハイパーボールマウスアウト
  hyperBall.addEventListener('mouseout', function(){
    //ラッキー非表示
    forceMonster.setAttribute("style", "display:none;")
    forceSentence.setAttribute("style", "display:none;")
    //ゲンガー表示
    firstMonster.setAttribute("style", "display:block;")
    firstSentence.setAttribute("style", "display:block;")
  }) 


    //マスターボール
    const masterBall = document.getElementById("select-list-4")
    //コダック画像
    const fifthMonster = document.getElementById("fifth-monster")
    //コダック文
    const fifthSentence = document.getElementById("fifth-message-box")

  //マスターボールマウスオーバー
  masterBall.addEventListener('mouseover', function(){
    //ラッキー表示
    fifthMonster.setAttribute("style", "display:block;")
    fifthSentence.setAttribute("style", "display:block;")
    //ゲンガー非表示
    firstMonster.setAttribute("style", "display:none;")
    firstSentence.setAttribute("style", "display:none;")
  })

  //マスターボールマウスアウト
  masterBall.addEventListener('mouseout', function(){
    //コダック非表示
    fifthMonster.setAttribute("style", "display:none;")
    fifthSentence.setAttribute("style", "display:none;")
    //ゲンガー表示
    firstMonster.setAttribute("style", "display:block;")
    firstSentence.setAttribute("style", "display:block;")
  }) 



})
