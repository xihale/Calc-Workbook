#import "template.typ": *

#show: doc => conf(doc)

= 测试页面

#question(
  [
    1. 测试分式分母是否被隔断： $a_x/(|bold(a)|) + b_y/(|bold(b)|) + c_z/(|bold(c)|)$。
    这里是一段文字，用来观察下一行是否会压到上面的分式。
    $lim_((x,y) arrow (0,0)) (x^2 y)/(x^4 + y^2)$。
  ],
  p: [
    测试大括号和复杂表达式：
    $f(x, y) = cases(x sin(1/y) + y sin(1/x) & "if" x y  != 0, 0 & "if" x y  = 0)$
    
    再测一个带大括号的积分：
    $iint_D (x^2 + y^2/4) dif sigma = 5/8 int_0^{2pi} dif theta int_0^{sqrt(2)} rho^3 dif rho$
  ]
)
