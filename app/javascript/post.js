window.addEventListener('load', function(){

  const turnGreenColor = document.querySelectorAll(".post-destroy")

  turnGreenColor.forEach(function(post) {

    post.addEventListener('mouseover', function(){
      post.setAttribute("style", "color:#CC0000;")
    })

    post.addEventListener('mouseout', function(){
      post.removeAttribute("style", "color:#CC0000;")
    })
  })
})


