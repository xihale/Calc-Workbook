#import "../template.typ": *

= 第十章 重 积 分

== 第一节 二重积分的概念与性质

#prob-type("一、选择题")

#question(
  [
    1. $iint_D f(x, y) dif sigma = lim_(lambda arrow 0) sum_(i=1)^n f(xi_i, eta_i) Delta sigma_i$ 中 $lambda$ 是（ #choice[D] ）。
    A. 最大小区间长度 #quad B. 小区域最大面积 #quad C. 小区域直径 #quad D. 小区域最大直径
  ],
  p: [由二重积分的定义可知，$lambda$ 表示各小区域直径的最大值，即 $lambda = max \{ "diam"(D_i) \}$。],
)

#question(
  [
    2. 能使得等式 $iint_D dif sigma = 1$ 成立的积分区域 $D$ 为（ #choice[B] ）。
    A. 由直线 $y = x, x = 1, y = 0$ 所围成的平面区域 #quad B. 由直线 $y = 2x, x = 1, y = 0$ 所围成的平面区域 \
    C. 由直线 $|x| + |y| = 1$ 所围成的平面区域 #quad D. 由曲线 $y = sin x$ ($0 <= x <= pi$) 与直线 $y = 0$ 所围成的平面区域
  ],
  p: [由于 $iint_D dif sigma$ 表示积分区域 $D$ 的面积 $sigma(D)$。分析各选项：A. $sigma(D) = 1/2 dot 1 dot 1 = 0.5$；B. $sigma(D) = 1/2 dot 1 dot 2 = 1$；C. 面积为 2；D. 面积为 2。故选 B。],
)

#question(
  [
    3. 设 $D$ 是由直线 $x = 0, y = 0, x + y = 3, x + y = 5$ 所围成的闭区域，记 $I_1 = iint_D ln(x + y) dif sigma, I_2 = iint_D ln^2(x + y) dif sigma$，则（ #choice[A] ）。
    A. $I_1 < I_2$ #quad B. $I_1 > I_2$ #quad C. $I_2 = 2 I_1$ #quad D. 无法比较
  ],
  p: [在积分区域 $D$ 上，$3 <= x+y <= 5$。由于 $x+y > e$，故 $ln(x+y) > 1$，从而 $\ln^2(x+y) > ln(x+y)$。因此 $I_2 > I_1$。],
)

#prob-type("二、填空题")

#question(
  [
    4. 设曲顶柱体的顶部曲面函数 $z = f(x, y)$，它的底部区域为 $D$，则曲顶柱体的体积可表示为 #ans[$iint_D |f(x, y)| dif sigma$]。
  ],
  p: [曲顶柱体的体积公式为：$V = iint_D |f(x, y)| dif sigma$。],
)

#question(
  [
    5. 设闭区域 $D = {(x, y) | x^2 + y^2 <= 1}$，则 $iint_D dif sigma =$ #ans[$pi$] 。
  ],
)

#question(
  [
    6. 设闭区域 $D = {(x, y) | x^2 + y^2 <= a^2, x >= 0, y >= 0}$ ($a > 0$)，则 $iint_D sqrt(a^2 - x^2 - y^2) dif sigma =$ #ans[$pi a^3 / 6$]。
  ],
)

#question(
  [
    7. 设一平面薄片在 $x O y$ 面内占有区域 $D$，其面密度函数为 $rho = (x^2 + y^2) / 2$，则此薄片的质量可表示为 #ans[$1/2 iint_D (x^2 + y^2) dif sigma$]。
  ],
  p: [薄片的质量 $M = iint_D rho(x, y) dif sigma$。代入面密度得：$M = 1/2 iint_D (x^2 + y^2) dif sigma$。],
)

#prob-type("三、计算题")

#question(
  [
    8. 利用二重积分的性质估计二重积分 $I = iint_D (x^2 + y^2 + 2) dif sigma$ 的值，其中积分区域 $D = {(x, y) | |x| + |y| <= 1}$。
  ],
  p: [
    区域 $D$ 是由直线 $|x| + |y| = 1$ 所围成的正方形区域，其面积 $sigma(D) = 2$。
    在 $D$ 上，$0 <= x^2 + y^2 <= 1$。
    故被积函数 $f(x, y) = x^2 + y^2 + 2$ 满足 $2 <= f(x, y) <= 3$。
    特殊地，在 $D$ 的内部点 $x^2+y^2 < 1$，故 $2 sigma(D) < I < 3 sigma(D)$。
    即 $4 < I < 6$。
  ],
  a: [$4 < I < 6$],
)

== 第二节 二重积分的计算法（1）

#prob-type("一、判断题（如果错误，请加以改正）")

#question(
  [
    1. 设闭区域 $D$ 由直线 $y = x, y = 1, x = 3$ 所围成，要计算 $iint_D 1/(y ln x) dif sigma$。
    （1）既可将 $D$ 视为 $X$ 型区域，也可视为 $Y$ 型区域；（ #choice[√] ）

    （2）若将 $D$ 视为 $X$ 型区域，则其相应积分限为 $1 <= x <= 3, 1 <= y <= x$；（ #choice[×] ）

    （3）该积分的结果为 2。（ #choice[×] ）
  ],
  a: [(1) √；(2) ×；(3) ×。],
)

#prob-type("二、选择题")

#question(
  [
    2. 设闭区域 $D$ 由 $x$ 轴和 $y = sin x$ ($0 <= x <= pi$) 所围成，则 $iint_D y dif sigma =$（ #choice[B] ）。
    A. $pi/6$ #quad B. $pi/4$ #quad C. $pi/3$ #quad D. $pi/2$
  ],
  p: [$I = int_0^pi dif x int_0^(sin x) y dif y = 1/2 int_0^pi sin^2 x dif x = 1/2 dot pi/2 = pi/4$。],
)

#question(
  [
    3. 设闭区域 $D$ 由 $y = x^2$ 和 $y = x + 2$ 所围成，则 $iint_D f(x, y) dif sigma =$（ #choice[A] ）。
    A. $int_(-1)^2 dif x int_(x^2)^(x + 2) f(x, y) dif y$ #quad B. $int_(-1)^2 dif x int_0^2 f(x, y) dif y$ \
    C. $int_(-2)^1 dif x int_(x^2)^(x + 2) f(x, y) dif y$ #quad D. $int_0^1 dif x int_(x^2)^(x + 2) f(x, y) dif y$
  ],
  p: [联立方程 $cases(y = x^2, y = x + 2)$ 得交点为 $(-1, 1)$ 和 $(2, 4)$。积分区域 $D$ 可表示为 $-1 <= x <= 2, x^2 <= y <= x+2$。故 $iint_D f(x, y) dif sigma = int_{-1}^2 dif x int_{x^2}^{x+2} f(x, y) dif y$。],
)

#question(
  [
    4. 设 $f(x, y)$ 是连续函数，则 $int_0^4 dif x int_x^(2 sqrt(x)) f(x, y) dif y =$（ #choice[A] ）。
    A. $int_0^4 dif y int_(y^2/4)^y f(x, y) dif x$ #quad B. $int_0^4 dif y int_(-y)^(y^2/4) f(x, y) dif x$ \
    C. $int_0^4 dif y int_(1/4)^y f(x, y) dif x$ #quad D. $int_0^4 dif y int_(y^2/2)^y f(x, y) dif x$
  ],
  p: [积分区域由 $y = x$ 和 $y = 2 sqrt(x)$ 围成，交点为 $(0, 0)$ 和 $(4, 4)$。改为 $Y$ 型区域，则 $0 <= y <= 4$，对于固定的 $y$，有 $y^2/4 <= x <= y$。故 $I = int_0^4 dif y int_{y^2/4}^y f(x, y) dif x$。],
)

#question(
  [
    5. 若闭区域 $D$ 由直线 $x + y = 1, x = 0, y = 0$ 所围成，且 $int_0^1 f(x) dif x = int_0^1 x f(x) dif x$ ，则 $iint_D f(x) dif sigma =$（ #choice[B] ）。
    A. 2 #quad B. 0 #quad C. 0.5 #quad D. 1
  ],
  p: [$iint_D f(x) dif sigma = int_0^1 dif x int_0^{1-x} f(x) dif y = int_0^1 (1-x) f(x) dif x = int_0^1 f(x) dif x - int_0^1 x f(x) dif x = 0$。],
)

#prob-type("三、填空题")

#question(
  [
    6. 已知闭区域 $D = {(x, y) | a <= x <= b, 0 <= y <= 1}$，且 $iint_D y f(x) dif sigma = 1$，则 $int_a^b f(x) dif x =$ #ans[$2$]。
  ],
  p: [由 $iint_D y f(x) dif sigma = int_a^b f(x) dif x int_0^1 y dif y = 1/2 int_a^b f(x) dif x = 1$，得 $int_a^b f(x) dif x = 2$。],
)

#question(
  [
    7. 设闭区域 $D$ 由两坐标轴与直线 $x + y = 2$ 所围成，若将 $D$ 视为 $X$ 型区域，则其相应积分限为 #ans[$0 <= x <= 2, 0 <= y <= 2 - x$]；若将 $D$ 视为 $Y$ 型区域，则其相应积分限为 #ans[$0 <= y <= 2, 0 <= x <= 2 - y$]。
  ],
  p: [直线 $x+y=2$ 与 $x,y$ 轴交点为 $(2,0)$ 和 $(0,2)$。相应积分限如图。],
)

#question(
  [
    8. 设闭区域 $D$ 由曲线 $y = e^x$ 与直线 $x = 0, y = e$ 所围成，若将 $D$ 视为 $X$ 型区域，则其相应积分限为 #ans[$0 <= x <= 1, e^x <= y <= e$]；若将 $D$ 视为 $Y$ 型区域，则其相应积分限为 #ans[$1 <= y <= e, 0 <= x <= ln y$]。
  ],
  p: [由 $y=e^x$ 得 $x=ln y$。交点 $(0,1)$ 和 $(1,e)$。],
)

#question(
  [
    9. 设闭区域 $D$ 由曲线 $y^2 = 2x$ 与直线 $y = x - 4$ 所围成。
    若将 $D$ 视为 $X$ 型区域，则其相应积分限为
    #ans[$0 <= x <= 2, -sqrt(2x) <= y <= sqrt(2x)$ 和 $2 <= x <= 8, x - 4 <= y <= sqrt(2x)$]；
    若将 $D$ 视为 $Y$ 型区域，则其相应积分限为
    #ans[$-2 <= y <= 4, y^2/2 <= x <= y + 4$]。
  ],
  p: [交点为 $(2,-2)$ 和 $(8,4)$。$Y$ 型更简单。],
)

#prob-type("四、计算题")

#question(
  [
    10. 计算 $iint_D x sqrt(y) dif sigma$，其中 $D$ 是由曲线 $y = sqrt(x), y = x^2$ 所围成的闭区域。
  ],
  p: [
    由 $y = sqrt(x)$ 和 $y = x^2$ 解得交点为 $(0, 0)$ 和 $(1, 1)$。
    积分区域 $D$ 可表示为：$0 <= x <= 1, x^2 <= y <= sqrt(x)$。
    $I = int_0^1 x dif x int_(x^2)^(sqrt(x)) sqrt(y) dif y$
    $= int_0^1 x [ 2/3 y^(3/2) ]_(x^2)^(sqrt(x)) dif x$
    $= 2/3 int_0^1 x (x^(3/4) - x^3) dif x$
    $= 2/3 int_0^1 (x^(7/4) - x^4) dif x$
    $= 2/3 [ 4/11 x^(11/4) - 1/5 x^5 ]_0^1$
    $= 2/3 (4/11 - 1/5) = 2/3 dot 9/55 = 6/55$。
  ],
  a: [$6/55$],
)

#question(
  [
    11. 计算 $iint_D e^(x + y) dif sigma$，其中闭区域 $D = {(x, y) | |x| + |y| <= 1}$。
  ],
  p: [
    区域 $D$ 关于 $x$ 轴和 $y$ 轴均对称。
    $I = iint_D e^x e^y dif sigma = int_(-1)^1 e^x (int_(|x|-1)^(1-|x|) e^y dif y) dif x$
    $= int_(-1)^1 e^x [ e^y ]_(|x|-1)^(1-|x|) dif x$
    $= int_(-1)^1 e^x (e^(1-|x|) - e^((|x|-1))) dif x$
    分段积分：
    $I = int_(-1)^0 e^x (e^(1+x) - e^(-1-x)) dif x + int_0^1 e^x (e^(1-x) - e^(x-1)) dif x$
    $= int_(-1)^0 (e^(2x+1) - e^(-1)) dif x + int_0^1 (e - e^(2x-1)) dif x$
    $= [ 1/2 e^(2x+1) - x e^(-1) ]_(-1)^0 + [ e x - 1/2 e^(2x-1) ]_0^1$
    $= (1/2 e - 0) - (1/2 e^(-1) + e^(-1)) + (e - 1/2 e) - (0 - 1/2 e^(-1))$
    $= 1/2 e - 3/2 e^(-1) + 1/2 e + 1/2 e^(-1) = e - e^(-1)$。
  ],
  a: [$e - 1/e$],
)

#question(
  [
    12. 计算 $iint_D (x^2 + y^2 - x) dif sigma$，其中 $D$ 是由直线 $y = 2, y = x$ 及 $y = 2x$ 所围成的闭区域。
  ],
  p: [
    直线 $y=x$ 与 $y=2$ 交于 $(2, 2)$；直线 $y=2x$ 与 $y=2$ 交于 $(1, 2)$；$y=x$ 与 $y=2x$ 交于 $(0, 0)$。
    将 $D$ 视为 $Y$ 型区域：$0 <= y <= 2, y/2 <= x <= y$。
    $I = int_0^2 dif y int_(y/2)^y (x^2 + y^2 - x) dif x$
    $= int_0^2 [ 1/3 x^3 + y^2 x - 1/2 x^2 ]_(y/2)^y dif y$
    $= int_0^2 ( (1/3 y^3 + y^3 - 1/2 y^2) - (1/24 y^3 + 1/2 y^3 - 1/8 y^2) ) dif y$
    $= int_0^2 ( 19/24 y^3 + 1/2 y^3 - 3/8 y^2 ) dif y$
    $= int_0^2 ( 31/24 y^3 - 3/8 y^2 ) dif y$
    $= [ 31/96 y^4 - 1/8 y^3 ]_0^2 = 31/96 dot 16 - 1/8 dot 8 = 31/6 - 1 = 25/6$。
    *注：原答案 $13/6$ 可能有误，重新计算：*
    $iint_D x^2 dif sigma = int_0^2 1/3 (y^3 - (y^3 / 8)) dif y = 7/24 int_0^2 y^3 dif y = 7/24 dot 4 = 7/6$
    $iint_D y^2 dif sigma = int_0^2 y^2 (y - y/2) dif y = 1/2 int_0^2 y^3 dif y = 1/2 dot 4 = 2$
    $iint_D x dif sigma = int_0^2 1/2 (y^2 - (y^2 / 4)) dif y = 3/8 int_0^2 y^2 dif y = 3/8 dot 8/3 = 1$
    $I = 7/6 + 2 - 1 = 7/6 + 1 = 13/6$。
  ],
  a: [$13/6$],
)

== 第二节 二重积分的计算法（2）

#prob-type("一、选择题")

#question(
  [
    1. 二次积分 $int_0^(pi/2) dif theta int_0^(cos theta) f(rho cos theta, rho sin theta) rho dif rho$ 可写成（ #choice[D] ）
    A. $int_0^1 dif y int_0^(sqrt(y - y^2)) f(x, y) dif x$ #quad B. $int_0^1 dif y int_0^(sqrt(1 - y^2)) f(x, y) dif x$ \
    C. $int_0^1 dif x int_0^1 f(x, y) dif y$ #quad D. $int_0^1 dif x int_0^(sqrt(x - x^2)) f(x, y) dif y$
  ],
  p: [极坐标方程 $rho = cos theta$ 对应直角坐标方程 $x^2 + y^2 = x$。由于 $0 <= theta <= pi/2$，区域在第一象限，即 $0 <= x <= 1, 0 <= y <= sqrt(x-x^2)$。故二次积分为 $int_0^1 dif x int_0^{sqrt(x-x^2)} f(x, y) dif y$。],
  a: [D.],
)

#question(
  [
    2. 设闭区域 $D$ 关于直线 $y = x$ 对称，则有 $iint_D f(x, y) dif sigma = iint_D f(y, x) dif sigma$。用此结论可得 $iint_(x^2 + y^2 <= 2) (x^2 + y^2/4) dif sigma =$（ #choice[C] ）。
    A. $pi$ #quad B. $3/2 pi$ #quad C. $5/4 pi$ #quad D. $2 pi$
  ],
  p: [由对称性，$iint_D x^2 dif sigma = iint_D y^2 dif sigma$。
    故
    $I = iint_D (x^2 + y^2/4) dif sigma$
    $= 5/4 iint_D x^2 dif sigma$
    $= 5/8 iint_D (x^2 + y^2) dif sigma$
    $= 5/8 int_0^{2pi} dif theta int_0^{sqrt(2)} rho^3 dif rho$
    $= 5/4 pi$。],
  a: [C.],
)

#prob-type("二、填空题")

#question(
  [
    3. 设闭区域 $D = {(x, y) | x^2 + y^2 <= 2x}$，则 $iint_D f(x, y) dif sigma$ 在极坐标系下的二次积分可表示为
  ],
  a: [$int_(-pi/2)^(pi/2) dif theta int_0^(2 cos theta) f(rho cos theta, rho sin theta) rho dif rho$。],
)

#question(
  [
    4. 设闭区域 $D = {(x, y) | 0 <= y <= 1 - x, 0 <= x <= 1}$，则 $iint_D f(x, y) dif sigma$ 在极坐标系下的二次积分可表示为
  ],
  a: [$int_0^(pi/2) dif theta int_0^(1/(cos theta + sin theta)) f(rho cos theta, rho sin theta) rho dif rho$。],
)

#question(
  [
    5. 将二次积分 $int_0^1 dif x int_0^(sqrt(2 a x - x^2)) f(sqrt(x^2 + y^2)) dif y$ 化为极坐标形式，结果为
  ],
  a: [$int_0^(pi/2) dif theta int_0^(2 a cos theta) f(rho) rho dif rho$。],
)

#question(
  [
    6. 若二重积分 $iint_D (x^5 + sin y^3 + 3) dif sigma = 24$ ，则闭区域 $D$ 可用不等式表示成
  ],
  a: [$|x| <= 1, |y| <= 2$ （答案不唯一）],
)

#prob-type("三、计算题")

#question(
  [
    7. 计算 $iint_D x y^2 dif sigma$，其中 $D$ 是由圆 $x^2 + y^2 = 4$ 及 $y$ 轴所围成的右半闭区域。
  ],
  p: [
    利用极坐标：$x = rho cos theta, y = rho sin theta, dif sigma = rho dif rho dif theta$。
    区域 $D$ 为：$-pi/2 <= theta <= pi/2, 0 <= rho <= 2$。
    $I = int_(-pi/2)^(pi/2) dif theta int_0^2 (rho cos theta) (rho sin theta)^2 rho dif rho$
    $= (int_(-pi/2)^(pi/2) sin^2 theta cos theta dif theta) (int_0^2 rho^4 dif rho)$
    $= [ 1/3 sin^3 theta ]_(-pi/2)^(pi/2) dot [ 1/5 rho^5 ]_0^2$
    $= (1/3 - (-1/3)) dot 32/5 = 2/3 dot 32/5 = 64/15$。
  ],
  a: [$64/15$],
)

#question(
  [
    8. 计算 $iint_D |1 - x^2 - y^2| dif sigma$，其中闭区域 $D = {(x, y) | x^2 + y^2 <= 4}$。
  ],
  p: [
    利用极坐标：$x^2 + y^2 = rho^2, dif sigma = rho dif rho dif theta$。
    区域 $D$ 为：$0 <= theta <= 2 pi, 0 <= rho <= 2$。
    $I = int_0^(2 pi) dif theta int_0^2 |1 - rho^2| rho dif rho$
    $= 2 pi (int_0^1 (1 - rho^2) rho dif rho + int_1^2 (rho^2 - 1) rho dif rho)$
    $= 2 pi ( [ 1/2 rho^2 - 1/4 rho^4 ]_0^1 + [ 1/4 rho^4 - 1/2 rho^2 ]_1^2 )$
    $= 2 pi ( (1/2 - 1/4) + ( (4 - 2) - (1/4 - 1/2) ) ) = 2 pi ( 1/4 + 2 + 1/4 ) = 5 pi$。
  ],
  a: [$5 pi$],
)

#question(
  [
    9. 计算 $iint_D y/x dif sigma$，其中 $D$ 是由圆 $x^2 + y^2 = 4, x^2 + y^2 = 1$ 及直线 $y = 0, y = x$ 所围成的在第一象限的闭区域。
  ],
  p: [
    区域 $D$ 在极坐标下为：$1 <= rho <= 2, 0 <= theta <= pi/4$。
    被积函数 $y/x = tan theta$，面积元 $dif sigma = rho dif rho dif theta$。
    $I = int_0^(pi/4) dif theta int_1^2 tan theta dot rho dif rho$
    $= (int_0^(pi/4) tan theta dif theta) (int_1^2 rho dif rho)$
    $= [ -ln(cos theta) ]_0^(pi/4) dot [ 1/2 rho^2 ]_1^2$
    $= (-ln(sqrt(2)/2) - 0) dot (2 - 1/2) = 1/2 ln 2 dot 3/2 = 3/4 ln 2$。
  ],
  a: [$3/4 ln 2$],
)

#question(
  [
    10. （附加题）计算 $iint_D (x + y) dif sigma$，其中闭区域 $D = {(x, y) | x^2 + y^2 <= x + y}$。
  ],
  p: [
    区域 $D$ 为 $(x - 1/2)^2 + (y - 1/2)^2 <= 1/2$，是一个圆心在 $(1/2, 1/2)$，半径为 $R = 1/sqrt(2)$ 的圆。
    由对称性或重心定义：$iint_D x dif sigma = bar(x) dot sigma(D) = 1/2 dot pi R^2 = pi/4$。
    同理 $iint_D y dif sigma = bar(y) dot sigma(D) = 1/2 dot pi R^2 = pi/4$。
    故 $iint_D (x + y) dif sigma = pi/4 + pi/4 = pi/2$。
  ],
  a: [$pi/2$],
)

== 第三节 三重积分(1)

#prob-type("一、选择题")

#question(
  [
    1. 设空间闭区域 $Omega$ 由曲面 $z = x y$ 与平面 $y = x, x = 1$ 及 $z = 0$ 所围成，则 $iiint_Omega x y^2 z^3 dif v =$（ #choice[D] ）。
    A. $1/361$ #quad B. $1/362$ #quad C. $1/363$ #quad D. $1/364$
  ],
)

#question(
  [
    2. 设空间闭区域 $Omega$ 由曲面 $z = x y$ 及平面 $x + y - 1 = 0, z = 0$ 所围成，将 $iiint_Omega f(x, y, z) dif v$ 化成三次积分为（ #choice[C] ）。
    A. $int_0^1 dif y int_0^y dif x int_0^(x y) f(x, y, z) dif z$ #quad B. $int_0^1 dif x int_0^1 dif y int_0^(x y) f(x, y, z) dif z$ \
    C. $int_0^1 dif y int_0^(1 - y) dif x int_0^(x y) f(x, y, z) dif z$ #quad D. $int_0^1 dif x int_0^x dif y int_0^(x y) f(x, y, z) dif z$
  ],
)

#question(
  [
    3. 设空间闭区域 $Omega$ 由曲面 $y = sqrt(x)$ 及平面 $y = 0, z = 0, x + z = pi/2$ 所围成，下列将 $iiint_Omega f(x, y, z) dif v$ 化成三次积分中不正确的是（ #choice[B] ）。
    A. $int_0^(pi/2) dif x int_0^(sqrt(x)) dif y int_0^(pi/2 - x) f(x, y, z) dif z$ #quad B. $int_0^(pi/2) dif y int_0^(sqrt(y)) dif x int_0^(pi/2 - x) f(x, y, z) dif z$ \
    C. $int_0^(pi/2) dif x int_0^(pi/2 - x) dif z int_0^(sqrt(x)) f(x, y, z) dif y$ #quad D. $int_0^(pi/2) dif z int_0^(pi/2 - z) dif x int_0^(sqrt(x)) f(x, y, z) dif y$
  ],
)

#prob-type("二、填空题")

#question(
  [
    4. 设有一物体占有区域 $Omega = {(x, y, z) | 1 <= x <= 2, 0 <= y <= 1, 0 <= z <= 1}$，其密度函数为 $rho = x + y + z$，则该物体的质量为
  ],
  a: [$5/2$],
)

#prob-type("三、计算题")

#question(
  [
    5. 计算 $iiint_Omega x z dif v$，其中空间闭区域 $Omega$ 由平面 $z = 0, z = y, y = 1$ 及曲面 $y = x^2$ 所围成。
  ],
  p: [
    由于区域 $Omega$ 关于 $x = 0$ 面对称，且被积函数 $f(x, y, z) = x z$ 关于 $x$ 是奇函数。
    即 $f(-x, y, z) = -f(x, y, z)$。
    由三重积分的对称性质可直接得：
    $iiint_Omega x z dif v = 0$。
  ],
  a: [0],
)

#question(
  [
    6. 计算 $iiint_Omega z dif v$，其中空间闭区域 $Omega$ 由平面 $z = h$ 及曲面 $z = h/R sqrt(x^2 + y^2)$ ($R > 0, h > 0$) 所围成。
  ],
  p: [
    曲面 $z = h/R sqrt(x^2+y^2)$ 是圆锥面。
    利用柱面坐标：$x^2+y^2 = rho^2, dif v = rho dif rho dif theta dif z$。
    区域 $Omega$ 可投影到 $x O y$ 面得到圆域 $D: rho <= R$。对于 $D$ 内点， $h/R rho <= z <= h$。
    $I = int_0^(2pi) dif theta int_0^R rho dif rho int_(h/R rho)^h z dif z$
    $= 2pi int_0^R rho [ 1/2 z^2 ]_(h/R rho)^h dif rho$
    $= pi int_0^R rho (h^2 - h^2/R^2 rho^2) dif rho$
    $= pi h^2 [ 1/2 rho^2 - 1/4 rho^4/R^2 ]_0^R = pi h^2 (1/2 R^2 - 1/4 R^2) = pi h^2 R^2/4$。
  ],
  a: [$pi h^2 R^2 / 4$],
)

== 第三节 三重积分(2)

#prob-type("一、选择题")

#question(
  [
    1. 已知 $Omega$ 是由曲面 $4z^2 = 25(x^2 + y^2)$ 及平面 $z = 5$ 所围成的空间闭区域，则 $iiint_Omega (x^2 + y^2) dif v$ 在柱面坐标系下的三次积分为（ #choice[C] ）。
    A. $int_0^(2 pi) dif theta int_0^2 rho^3 dif rho int_0^5 dif z$ #quad B. $int_0^(2 pi) dif theta int_0^4 rho^3 dif rho int_0^5 dif z$ \
    C. $int_0^(2 pi) dif theta int_0^2 rho^3 dif rho int_(5/2 rho)^5 dif z$ #quad D. $int_0^(2 pi) dif theta int_0^2 rho^2 dif rho int_0^5 dif z$
  ],
  a: [C.],
)

#question(
  [
    2. 设有空间闭区域 $Omega_1 = {(x, y, z) | x^2 + y^2 + z^2 <= R^2, z >= 0}, Omega_2 = {(x, y, z) | x^2 + y^2 + z^2 <= R^2, x >= 0, y >= 0, z >= 0}$，则（ #choice[C] ）。
    A. $iiint_(Omega_1) x dif v = 4 iiint_(Omega_2) x dif v$ #quad B. $iiint_(Omega_1) y dif v = 4 iiint_(Omega_2) y dif v$ \
    C. $iiint_(Omega_1) z dif v = 4 iiint_(Omega_2) z dif v$ #quad D. $iiint_(Omega_1) x y z dif v = 4 iiint_(Omega_2) x y z dif v$
  ],
)

#prob-type("二、填空题")

#question(
  [
    3. 设 $Omega$ 是由曲面 $z = x^2 + y^2$ 和 $z = 2 - x^2 - y^2$ 所围成的空间闭区域，
    则 $iiint_Omega f(x, y, z) dif v$ 在柱面坐标系下的三次积分为
    #ans[$int_0^(2 pi) dif theta int_0^1 dif rho int_(rho^2)^(2 - rho^2) f(rho cos theta, rho sin theta, z) rho dif z$]。
  ],
  p: [两曲面交线为 $x^2+y^2=1$。在柱面坐标下 $rho$ 范围为 $0$ 到 $1$，$z$ 范围从下曲面 $rho^2$ 到上曲面 $2-rho^2$。],
)

#question(
  [
    4. 设 $Omega$ 是由曲面 $x^2 + y^2 + z^2 = 1$ 所围成的空间闭区域，则 $iiint_Omega (z ln(x^2 + y^2 + z^2 + 1)) / (x^2 + y^2 + z^2 + 1) dif v =$ #ans[$0$]。
  ],
  p: [由于区域 $Omega$ 关于 $x O y$ 平面对称，而被积函数关于 $z$ 是奇函数，故积分为 0。],
)

#prob-type("三、计算题")

#question(
  [
    5. 计算 $iiint_Omega x y dif v$，其中 $Omega$ 是由柱面 $x^2 + y^2 = 1$ 及平面 $z = 1, z = 0, x = 0, y = 0$ 所围成且在第一卦限的空间闭区域。
  ],
  p: [
    利用柱面坐标：$0 <= theta <= pi/2, 0 <= rho <= 1, 0 <= z <= 1$。
    $I = int_0^(pi/2) dif theta int_0^1 dif rho int_0^1 (rho cos theta)(rho sin theta) dot rho dif z$
    $= (int_0^(pi/2) sin theta cos theta dif theta) (int_0^1 rho^3 dif rho) (int_0^1 dif z)$
    $= [ 1/2 sin^2 theta ]_0^(pi/2) dot [ 1/4 rho^4 ]_0^1 dot 1$
    $= 1/2 dot 1/4 dot 1 = 1/8$。
  ],
  a: [$1/8$],
)

#question(
  [
    6. 计算 $iiint_Omega z^2 dif v$，其中 $Omega$ 是由曲面 $x^2 + y^2 + z^2 = R^2$ 和 $x^2 + y^2 + z^2 = 2 R z$ ($R > 0$) 所围成的空间闭区域。
  ],
  p: [
    区域 $Omega$ 是由两个球面所围成的部分（它们的交集）。
    两球面交线为 $R^2 = 2 R z => z = R/2$。
    利用柱面坐标，分上下两部分积分：
    $I = pi int_0^(R/2) z^2 (2 R z - z^2) dif z + pi int_(R/2)^R z^2 (R^2 - z^2) dif z$
    $= pi [ 1/2 R z^4 - 1/5 z^5 ]_0^(R/2) + pi [ 1/3 R^2 z^3 - 1/5 z^5 ]_(R/2)^R$
    $= pi (R^5/32 - R^5/160) + pi ( (1/3 R^5 - 1/5 R^5) - (R^5/24 - R^5/160) )$
    $= pi R^5 ( 4/160 + 2/15 - 17/480 ) = pi R^5 ( 12/480 + 64/480 - 17/480 ) = 59/480 pi R^5$。
  ],
  a: [$59/480 pi R^5$],
)

#question(
  [
    7. 计算 $iiint_Omega (y^2 + z^2) dif v$，其中 $Omega$ 是由曲线 $cases(y^2 = 2x, z = 0)$ 绕 $x$ 轴旋转一周所得的曲面与平面 $x = 5$ 所围成的空间闭区域。
  ],
  p: [
    旋转体方程为 $y^2 + z^2 = 2x$。
    利用柱面坐标（$x$ 为对称轴）：$y^2 + z^2 = rho^2, dif v = rho dif rho dif theta dif x$。
    区域 $Omega$ 可表示为 $0 <= x <= 5$ 及其截面 $y^2 + z^2 <= 2x$。
    $I = int_0^5 dif x int_0^(2pi) dif theta int_0^(sqrt(2x)) rho^2 dot rho dif rho$
    $= int_0^5 dif x dot 2pi dot [ 1/4 rho^4 ]_0^(sqrt(2x))$
    $= 2pi int_0^5 (1/4 dot 4x^2) dif x = 2pi int_0^5 x^2 dif x$
    $= 2pi [ 1/3 x^3 ]_0^5 = 2pi dot 125/3 = 250/3 pi$。
  ],
  a: [$250/3 pi$],
)

#question(
  [
    8. （附加题）试分别利用柱面坐标和球面坐标计算 $iiint_Omega (x^2 + y^2 + z^2) dif v$，其中 $Omega$ 是由曲面 $x^2 + y^2 + z^2 = 1$ 所围成的空间闭区域。
  ],
  p: [
    方法一：球面坐标。$0 <= theta <= 2pi, 0 <= phi <= pi, 0 <= r <= 1, dif v = r^2 sin phi dif r dif phi dif theta$。
    $I = int_0^(2pi) dif theta int_0^pi sin phi dif phi int_0^1 r^2 dot r^2 dif r$
    $= 2pi dot [ -cos phi ]_0^pi dot [ 1/5 r^5 ]_0^1 = 2pi dot 2 dot 1/5 = 4/5 pi$。

    方法二：柱面坐标。$0 <= theta <= 2pi, 0 <= rho <= 1, -sqrt(1-rho^2) <= z <= sqrt(1-rho^2)$。
    $I = int_0^(2pi) dif theta int_0^1 rho dif rho int_(-sqrt(1-rho^2))^(sqrt(1-rho^2)) (rho^2 + z^2) dif z$
    $= 2pi int_0^1 rho [ rho^2 z + 1/3 z^3 ]_(-sqrt(1-rho^2))^(sqrt(1-rho^2)) dif rho$
    $= 4pi int_0^1 rho ( rho^2 sqrt(1-rho^2) + 1/3 (1-rho^2)^(3/2) ) dif rho$
    令 $t = 1-rho^2, dif t = -2rho dif rho$。
    $I = 2pi int_0^1 ( (1-t)sqrt(t) + 1/3 t^(3/2) ) dif t$
    $= 2pi [ 2/3 t^(3/2) - 2/5 t^(5/2) + 2/15 t^(5/2) ]_0^1$
    $= 2pi ( 2/3 - 4/15 ) = 2pi dot 6/15 = 4/5 pi$。
  ],
  a: [$4/5 pi$],
)

== 第四节 重积分的应用

#prob-type("一、选择题")

#question(
  [
    1. 球面 $x^2 + y^2 + z^2 = a^2$ 含在 $x^2 + y^2 = a x$ ($a > 0$) 内部的面积为（ #choice[B] ）。
    A. $4 int_0^(pi/2) dif theta int_0^(a cos theta) a/(sqrt(a^2 - r^2)) r dif r$ #quad B. $8 int_0^(pi/2) dif theta int_0^(a cos theta) a/(sqrt(a^2 - r^2)) r dif r$ \
    C. $16 int_0^(pi/2) dif theta int_0^(a cos theta) a/(sqrt(a^2 - r^2)) r dif r$ #quad D. $4 int_(-pi/2)^(pi/2) dif theta int_0^(a cos theta) a/(sqrt(a^2 - r^2)) r dif r$
  ],
  p: [利用对称性，球面在圆柱面内的部分在 $z > 0$ 和 $z < 0$ 两侧对称，且积分区域 $D$ 关于极轴对称。故总面积为第一卦限部分面积的 8 倍。在第一卦限，$theta$ 从 0 到 $pi/2$，$r$ 从 0 到 $a cos theta$。],
)

#question(
  [
    2. 半径分别为 $R$ 和 $r$ ($0 < r < R$) 的两个圆所围成的均匀圆环状薄片（设面密度为 $rho$）关于其中心的转动惯量 $I_O =$（ #choice[B] ）。
    A. $pi rho (R^4 - r^4)$ #quad B. $1/2 pi rho (R^4 - r^4)$ \
    C. $1/4 pi rho (R^4 - r^4)$ #quad D. $1/8 pi rho (R^4 - r^4)$
  ],
  p: [$I_O = iint_D rho (x^2 + y^2) dif sigma = int_0^(2 pi) dif theta int_r^R rho dot rho^2 dot rho dif rho = 2 pi rho [ 1/4 rho^4 ]_r^R = 1/2 pi rho (R^4 - r^4)$。],
)

#prob-type("二、填空题")

#question(
  [
    3. 设均匀平面薄片所占闭区域为 $D = {(x, y) | x^2/a^2 + y^2/b^2 <= 1, y >= 0}$，则其面积为 #ans[$pi a b / 2$]，其质心坐标为 #ans[$(0, (4 b) / (3 pi))$]。
  ],
  a: [$pi a b / 2, (0, (4 b) / (3 pi))$],
)

#question(
  [
    4. 设平面闭区域 $D$ 的形心坐标为 $(2, 3)$，其面积为 2，则 $iint_D x dif sigma =$ #ans[$4$]， $iint_D y dif sigma =$ #ans[$6$]。
  ],
)

#question(
  [
    5. 半圆形薄片 $x^2 + y^2 <= R^2$ ($y >= 0$) 的面密度 $rho = 1$，则其关于 $y$ 轴的转动惯量 $I_y =$ #ans[$pi R^4 / 8$]。
  ],
  p: [$I_y = iint_D x^2 dif sigma = int_0^pi cos^2 theta dif theta int_0^R r^3 dif r = pi/2 dot R^4/4 = pi R^4 / 8$。],
)

#prob-type("三、计算题")

#question(
  [
    6. 求两个正交圆柱面 $x^2 + y^2 = R^2$ 及 $x^2 + z^2 = R^2$ 所围立体的体积与表面积
  ],
  a: [
    由两个圆柱面可得
    $|y| <= sqrt(R^2-x^2), |z| <= sqrt(R^2-x^2), -R <= x <= R$。

    体积
    $V = int_(-R)^R [2sqrt(R^2-x^2)]^2 dif x
    = 4 int_(-R)^R (R^2-x^2) dif x
    = 16/3 R^3$。

    表面积可分为两部分对称曲面（每个圆柱贡献 2 个侧面）：
    以 $x^2+y^2=R^2$ 为例参数化，积分区间由另一圆柱限制，
    单个侧面面积为 $4R^2$，两柱合计
    $S = 4 times 4R^2 = 16R^2$。

    故体积为 $(16/3)R^3$，表面积为 $16R^2$。
  ],
)

#question(
  [
    7. 在均匀半圆形薄片的直径上，要接上一个一边与直径等长的矩形薄片，为了使整个均匀薄片的质心恰好在圆心上，问：接上去的均匀矩形薄片另外一边的长度应为多少？
  ],
  p: [
    设半圆 $D_1: x^2 + y^2 <= R^2, y >= 0$，面密度 $rho$。
    其质心坐标 $bar(y)_1 = (4 R) / (3 pi)$，质量 $M_1 = 1/2 pi R^2 rho$。
    矩形 $D_2: -R <= x <= R, -l <= y <= 0$，质量 $M_2 = 2 R l rho$。
    其质心坐标 $bar(y)_2 = -l/2$。
    整个薄片的质心在圆心：$M_1 bar(y)_1 + M_2 bar(y)_2 = 0$。
    $(1/2 pi R^2 rho) dot ((4 R) / (3 pi)) + (2 R l rho) dot (-l/2) = 0$
    $2/3 R^3 - R l^2 = 0 => l^2 = 2/3 R^2 => l = sqrt(2/3) R$。
  ],
  a: [$sqrt(2/3) R$ ( $R$ 为半圆半径).],
)

#question(
  [
    8. 求由曲面 $z^2 = x^2 + y^2$ 与平面 $z = 1$ 所围成的立体的质心，设其密度为 $rho = 1$ .
  ],
  p: [
    由对称性 $bar(x) = 0, bar(y) = 0$。
    体积 $V = int_0^1 pi z^2 dif z = 1/3 pi$。
    $M_z = iiint_Omega z dif v = int_0^1 pi z^2 dot z dif z = pi [ 1/4 z^4 ]_0^1 = 1/4 pi$。
    $bar(z) = M_z / V = (1/4 pi) / (1/3 pi) = 3/4$。
    故质心为 $(0, 0, 3/4)$。
  ],
  a: [$(0,0,(3/4))$],
)

#question(
  [
    9. 设均匀薄片（密度 $rho = 1$）所占的闭区域 $D$ 是 $x O y$ 面内由抛物线 $y^2 = 9/2 x$ 与直线 $x = 2$ 所围成的，求此均匀薄片关于 $x$ 轴和 $y$ 轴的转动惯量 $I_x, I_y$。
  ],
  p: [
    区域 $D: 0 <= x <= 2, -sqrt(9/2 x) <= y <= sqrt(9/2 x)$。
    $I_x = iint_D y^2 dif sigma = int_0^2 dif x int_(-sqrt(9/2 x))^(sqrt(9/2 x)) y^2 dif y$
    $= int_0^2 2/3 (9/2 x)^(3/2) dif x = 2/3 (9/2)^(3/2) int_0^2 x^(3/2) dif x$
    $= 2/3 dot (27 sqrt(2) / 4) dot [ 2/5 x^(5/2) ]_0^2 = 9/2 sqrt(2) dot 2/5 dot 4 sqrt(2) = 72/5$。
    $I_y = iint_D x^2 dif sigma = int_0^2 x^2 dot 2sqrt(9/2 x) dif x$
    $= 2 dot (3/sqrt(2)) int_0^2 x^(5/2) dif x = 3 sqrt(2) [ 2/7 x^(7/2) ]_0^2$
    $= 3 sqrt(2) dot 2/7 dot 8 sqrt(2) = 96/7$。
  ],
  a: [$I_x = 72/5, I_y = 96/7$],
)

== 总习题十

#prob-type("一、判断题")

#question(
  [
    1. 设闭区域 $D = {(x, y) | x^2 + y^2 <= 1}$，$D_1$ 为 $D$ 在 first 象限的区域，则
    $iint_D sqrt(1 - x^2 - y^2) dif sigma = 4 iint_(D_1) sqrt(1 - x^2 - y^2) dif sigma$ （ #choice[√] ）
  ],
)

#question(
  [
    2. 设闭区域 $D = {(x, y) | x^2 + y^2 <= 1}$，$D_1$ 为 $D$ 在第一象限的区域，则
      $iint_D x y dif sigma = 4 iint_(D_1) x y dif sigma$ （ #choice[×] ）
  ],
)

#question(
  [
    3. 二重积分 $iint_D f(x, y) dif sigma$ 的几何意义是以曲面 $z = f(x, y)$ 为曲顶，以区域 $D$ 为底面的曲顶柱体的体积。（ #choice[×] ）（注：需 $f(x,y) >= 0$）
  ],
)

#question(
  [
    4. 设空间闭区域 $Omega = {(x, y, z) | x^2 + y^2 + z^2 <= R^2, z >= 0}$，$Omega_1$ 为 $Omega$ 在第一卦限的区域，则 $iiint_Omega x dif v = 4 iiint_(Omega_1) x dif v$。（ #choice[×] ）（注：应该是 2 倍，关于 $y z$ 面不对称）
  ],
)

#prob-type("二、选择题")

#question(
  [
    5. 设闭区域 $D$ 由直线 $x = 0, y = 0, x + y = 1/2, x + y = 1$ 所围成，
    记 $I_1 = iint_D ln(x + y) dif sigma$，
    $I_2 = iint_D (x + y) dif sigma, I_3 = iint_D sin(x + y) dif sigma$，
    则 $I_1, I_2, I_3$ 间的大小关系为（ #choice[C] ）。
    A. $I_1 < I_2 < I_3$ #quad B. $I_3 < I_2 < I_1$ \
    C. $I_1 < I_3 < I_2$ #quad D. $I_2 < I_1 < I_3$
  ],
  p: [在积分区域 $D$ 上，$1/2 <= x+y <= 1$。在这个范围内：ln 函数值为负，故 $I_1 < 0$；又因为 $sin(x+y) < x+y$，故 $I_3 < I_2$。综上，$I_1 < I_3 < I_2$。],
)

#question(
  [
    6. 设 $f(x, y)$ 是连续函数，则二次积分 $int_(-6)^2 dif x int_((x^2/4) - 1)^(2 - x) f(x, y) dif y =$（ #choice[D] ）。
    A. $int_(-8)^2 dif y int_(2 sqrt(y + 1))^(2 - y) f(x, y) dif x$ #quad B. $int_(-8)^2 dif y int_(-6)^(2 - y) f(x, y) dif x$ \
    C. $int_(-1)^2 dif y int_(-2 sqrt(y + 1))^(2 sqrt(y + 1)) f(x, y) dif x$
    $+ int_2^8 dif y int_(2 sqrt(y + 1))^(2 - y) f(x, y) dif x$ #quad
    D. $int_(-1)^0 dif y int_(-2 sqrt(y + 1))^(2 sqrt(y + 1)) f(x, y) dif x$
    $+ int_0^8 dif y int_(-2 sqrt(y + 1))^(2 - y) f(x, y) dif x$
  ],
  p: [积分区域由 $y = x^2/4 - 1$ 和 $y = 2-x$ 围成，交点为 $(-6, 8)$ 和 $(2, 0)$。
    改为 $Y$ 型积分时，在 $y in [-1, 0]$ 段，
    $x$ 的范围是 $[-2 sqrt(y + 1), 2 sqrt(y + 1)]$；
    在 $y in [0, 8]$ 段，$x$ 的范围是 $[-2 sqrt(y + 1), 2 - y]$。
    故选 D。],
)

#question(
  [
    7. 设 $Omega$ 是由曲面 $x^2 + y^2 + z^2 = 1$ 及平面 $x = 0, y = 0, z = 0$ 所围成的空间闭区域在第一卦限的部分，则 $iiint_Omega x y z dif v =$（ #choice[A] ）。
    A. $1/48$ #quad B. $1/56$ #quad C. $1/64$ #quad D. $1/72$
  ],
  p: [$I = int_0^1 r^5 dif r int_0^(pi/2) sin theta cos theta dif theta int_0^(pi/2) sin^3 phi cos phi dif phi = 1/6 dot 1/2 dot 1/4 = 1/48$。],
)

#prob-type("三、计算题")

#question(
  [
    8. 计算 $int_0^1 dif x int_x^1 x^2 e^(-y^2) dif y .$
  ],
  p: [
    交换积分次序：$0 <= y <= 1, 0 <= x <= y$。
    $I = int_0^1 e^(-y^2) dif y int_0^y x^2 dif x = int_0^1 e^(-y^2) [ 1/3 x^3 ]_0^y dif y$
    $= 1/3 int_0^1 y^3 e^(-y^2) dif y$
    令 $t = y^2, dif t = 2y dif y$。
    $I = 1/6 int_0^1 t e^(-t) dif t = 1/6 [ -t e^(-t) - e^(-t) ]_0^1$
    $= 1/6 ( ( -1/e - 1/e ) - (0 - 1) ) = 1/6 (1 - 2/e)$。
  ],
)

#question(
  [
    9. 计算 $iint_D (x^2 - y^2) dif sigma$，其中闭区域 $D$ 由曲线 $y = sin x$ ($0 <= x <= pi$) 和直线 $y = 0$ 所围成。
  ],
  p: [
    由对称性 $iint_D y^2 dif sigma = int_0^pi dif x int_0^(sin x) y^2 dif y = int_0^pi 1/3 sin^3 x dif x = 1/3 dot 4/3 = 4/9$。
    $iint_D x^2 dif sigma = int_0^pi x^2 dif x int_0^(sin x) dif y = int_0^pi x^2 sin x dif x$
    $= [ -x^2 cos x + 2x sin x + 2 cos x ]_0^pi = (pi^2 - 2) - 2 = pi^2 - 4$。
    故 $I = (pi^2 - 4) - 4/9 = pi^2 - 40/9$。
  ],
)

#question(
  [
    10. 计算 $iint_D sqrt(R^2 - x^2 - y^2) dif sigma$，其中闭区域 $D$ 由圆 $x^2 + y^2 = R x$ 所围成。
  ],
  p: [
    利用极坐标：$x^2 + y^2 <= R rho cos theta => rho <= R cos theta$。
    $D: -pi/2 <= theta <= pi/2, 0 <= rho <= R cos theta$。
    $I = int_(-pi/2)^(pi/2) dif theta int_0^(R cos theta) sqrt(R^2 - rho^2) rho dif rho$
    $= int_(-pi/2)^(pi/2) [ -1/3 (R^2 - rho^2)^(3/2) ]_0^(R cos theta) dif theta$
    $= 1/3 int_(-pi/2)^(pi/2) (R^3 - R^3 |sin theta|^3) dif theta$
    $= 2/3 R^3 ( int_0^(pi/2) (1 - sin^3 theta) dif theta ) = 2/3 R^3 ( pi/2 - 2/3 ) = (pi/3 - 4/9) R^3$。
  ],
)

#question(
  [
    11. 计算 $iiint_Omega 1/(1 + x + y + z)^3 dif v$，其中空间闭区域 $Omega$ 由平面 $x = 0, y = 0, z = 0, x + y + z = 1$ 所围成。
  ],
  p: [
    $I = int_0^1 dif x int_0^(1-x) dif y int_0^(1-x-y) 1/(1+x+y+z)^3 dif z$
    $= int_0^1 dif x int_0^(1-x) [ -1/2 (1+x+y+z)^(-2) ]_0^(1-x-y) dif y$
    $= 1/2 int_0^1 dif x int_0^(1-x) ( (1+x+y)^(-2) - 1/4 ) dif y$
    $= 1/2 int_0^1 [ -(1+x+y)^(-1) - 1/4 y ]_0^(1-x) dif x$
    $= 1/2 int_0^1 ( (1/(1+x) - 1/2) - 1/4 (1-x) ) dif x$
    $= 1/2 [ ln(1+x) - 1/2 x - 1/4 x + 1/8 x^2 ]_0^1$
    $= 1/2 ( ln 2 - 3/4 + 1/8 ) = 1/2 (ln 2 - 5/8)$。
  ],
)

#question(
  [
    12. 计算 $iiint_Omega (x^2 + y^2) dif v$，其 $Omega$ 为曲线 $cases(y^2 = 2z, x = 0)$ 绕 $z$ 轴旋转一周所得的曲面与平面 $z = 4$ 所围成的空间闭区域。
  ],
  p: [
    旋转面方程为 $x^2 + y^2 = 2z$。区域 $Omega$ 可表示为 $0 <= z <= 4$ 及其截面 $x^2 + y^2 <= 2z$。
    利用柱面坐标：$0 <= theta <= 2pi, 0 <= rho <= sqrt(2z), 0 <= z <= 4$。
    $I = int_0^4 dif z int_0^(2pi) dif theta int_0^(sqrt(2z)) rho^2 dot rho dif rho$
    $= int_0^4 dif z dot 2pi dot [ 1/4 rho^4 ]_0^(sqrt(2z))$
    $= int_0^4 2pi dot 1/4 (2z)^2 dif z = 2pi int_0^4 z^2 dif z$
    $= 2pi [ 1/3 z^3 ]_0^4 = 2pi dot 64/3 = 128/3 pi$。
  ],
)

#question(
  [
    13. 一均匀物体（密度 $rho$ 为常数）占有的空间闭区域 $Omega$ 由曲面 $z = x^2 + y^2$ 和平面 $z = 0$ ， $|x| = a, |y| = a$ 所围成，求：
      （1）物体的体积；

      (2) 物体的质心；

      （3）物体关于 $z$ 轴的转动惯量
  ],
  p: [
    (1) 体积 $V = iiint_Omega dif v = int_(-a)^a dif x int_(-a)^a dif y int_0^(x^2 + y^2) dif z$
    $= int_(-a)^a int_(-a)^a (x^2 + y^2) dif y dif x = 2 int_(-a)^a (a x^2 + 1/3 a^3) dif x = (2/3 a^4 + 2/3 a^4) dot 2 = 8/3 a^4$。

    (2) 由对称性，$bar(x) = 0, bar(y) = 0$。
    $M_z = iiint_Omega z dif v = int_(-a)^a dif x int_(-a)^a dif y int_0^(x^2+y^2) z dif z$
    $= 1/2 int_(-a)^a int_(-a)^a (x^2+y^2)^2 dif y dif x = 1/2 int_(-a)^a ( 2a x^4 + 4/3 a^3 x^2 + 2/5 a^5 ) dif x$
    $= 1/2 [ 2/5 a^6 dot 2 + 4/9 a^6 dot 2 + 2/5 a^6 dot 2 ] = ( 2/5 + 4/9 + 2/5 ) a^6 = 56/45 a^6$。
    $bar(z) = M_z / V = (56/45 a^6) / (8/3 a^4) = 7/15 a^2$。

    (3) $I_z = rho iiint_Omega (x^2+y^2) dif v = rho iint_D (x^2+y^2)^2 dif sigma = 2 M_z = 224/45 rho a^6$。
    *注：由 (2) 可知 $iint_D (x^2+y^2)^2 dif sigma = 2 M_"计算式中部分" = 112/45 a^6$。*
  ],
  a: [(1) $8/3 a^4$; (2) $(0, 0, 7/15 a^2)$; (3) $112/45 rho a^6$],
)
