Hello-World
===========
javascript mobile touch event:
mobile event ||PC browser mouse event
 touchstart                        mouseDown
 touchmove                         mouseMove
 touchend                          mouseup
 touchcancel                       
四种基本的手势事件.
Exampledocument bind touch event:
document.addEventListener("touchstart|touchend|touchmove|touchcancel",
    function(event){},
    false);
method:
 addEventListener(type, listener, useCapture);
 type:event type,listener:execute method,useCapture:false|true.
 listener:
 touchFunction = function(event){
   var fingers = event.touches; // hand arrays，返回一个数组,当前用户触发屏幕的手指集合
   var fingerLen = fingers.length; //手指集合数组长度
   var finger = fingers[0];//获取一个手指,即0
   var touch = fingers[0];
 } 
touches：手指的初始位置(可以理解为有几个手指接触了屏幕)
ChangedTouches:当用户的手指在屏幕上移动的时候，产生的信息
targetTouches：某一个目标上触发的时候的信息

其中的每个手指(touch = event.touches[i])上的志愿服务岗位，让您操作会发生什么，当用户触摸的页面将返

回信息。他们都携带以下资料：

screenX：X在屏幕上的全部位置。
screenY：Y位置在屏幕上的全部。
clientX：X位置，不包括滚动条，在当前视口中。
clientY：Y位置，不包括滚动条，在当前视口中。
pageX：X位置，包括滚动条。
pageY：Y的位置，包括滚动条。
identifier：一个唯一的标识符。
target：当前被触摸过的元素
