#import "template.typ": *

#show: doc => conf(doc)

= 测试页面

#question(
  [
    1. 测试新版模板下，短公式、长公式与分段函数是否都能保持清晰可读。
    行内只保留短公式，例如 $a_x/(|bold(a)|)$ 与 $b_y/(|bold(b)|)$；较长公式改为独立陈列：

    $
      a_x/(|bold(a)|) + b_y/(|bold(b)|) + c_z/(|bold(c)|)
    $

    再测试一个典型极限公式：

    $
      lim_((x,y) arrow (0,0)) (x^2 y)/(x^4 + y^2)
    $
  ],
  p: [
    测试分段函数与积分公式的陈列效果：

    $
      f(x, y) = cases(
        x sin(1/y) + y sin(1/x) & "if" x y != 0,
        0 & "if" x y = 0,
      )
    $

    $
      iint_D (x^2 + y^2/4) dif sigma
        = (5)/(8) int_0^(2pi) dif theta int_0^(sqrt(2)) rho^3 dif rho
    $
  ]
)
