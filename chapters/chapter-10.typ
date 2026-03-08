#import "../template.typ": *

= 第十章 重 积 分

== 第一节 二重积分的概念与性质

#prob-type("一、选择题")

#question(
  [
    1. $iint_D f(x, y) d sigma = lim_(lambda arrow 0) sum_(i=1)^n f(xi_i, eta_i) Delta sigma_i$ 中 $lambda$ 是（ #choice[D] ）。
    A. 最大小区间长度

    B. 小区域最大面积

    C. 小区域直径

    D. 小区域最大直径
  ],
  a: [D.],
)

#question(
  [
    2. 能使得等式 $iint_D d sigma = 1$ 成立的积分区域 $D$ 为（ #choice[B] ）。
    A. 由直线 $y = x, x = 1, y = 0$ 所围成的平面区域

    B. 由直线 $y = 2x, x = 1, y = 0$ 所围成的平面区域

    C. 由直线 $|x| + |y| = 1$ 所围成的平面区域

    D. 由曲线 $y = sin x$ ($0 <= x <= pi$) 与直线 $y = 0$ 所围成的平面区域
  ],
  a: [B.],
)

#question(
  [
    3. 设 $D$ 是由直线 $x = 0, y = 0, x + y = 3, x + y = 5$ 所围成的闭区域，记 $ I_1 = iint_D ln(x + y) d sigma, I_2 = iint_D ln^2(x + y) d sigma $，则（ #choice[A] ）。
    A. $I_1 < I_2$

    B. $I_1 > I_2$

    C. $I_2 = 2 I_1$

    D. 无法比较
  ],
  a: [A.],
)

#prob-type("二、填空题")

#question(
  [
    4. 设曲顶柱体的顶部曲面函数 $z = f(x, y)$，它的底部区域为 $D$，则曲顶柱体的体积可表示为
  ],
  a: [$iint_D |f(x, y)| d sigma$。],
)

#question(
  [
    5. 设闭区域 $D = {(x, y) | x^2 + y^2 <= 1}$，则 $iint_D d sigma =$ #ans[$pi$] 。
  ],
  a: [$pi$],
)

#question(
  [
    6. 设闭区域 $D = {(x, y) | x^2 + y^2 <= a^2, x >= 0, y >= 0}$ ($a > 0$)，则 $iint_D sqrt(a^2 - x^2 - y^2) d sigma =$ #ans[$pi a^3 / 6$]。
  ],
  a: [$pi a^3 / 6$],
)

#question(
  [
    7. 设一平面薄片在 $x O y$ 面内占有区域 $D$，其面密度函数为 $rho = (x^2 + y^2) / 2$，则此薄片的质量可表示为
  ],
  a: [$1/2 iint_D (x^2 + y^2) d sigma$。],
)

#prob-type("三、计算题")

#question(
  [
    8. 利用二重积分的性质估计二重积分 $I = iint_D (x^2 + y^2 + 2) d sigma$ 的值，其中积分区域 $D = {(x, y) | |x| + |y| <= 1}$。
  ],
  a: [$4 < I < 6$],
)

== 第二节 二重积分的计算法（1）

#prob-type("一、判断题（如果错误，请加以改正）")

#question(
  [
    1. 设闭区域 $D$ 由直线 $y = x, y = 1, x = 3$ 所围成，要计算 $iint_D 1/(y ln x) d sigma$。
    （1）既可将 $D$ 视为 $X$ 型区域，也可视为 $Y$ 型区域；（ #choice[√] ）

    （2）若将 $D$ 视为 $X$ 型区域，则其相应积分限为 $1 <= x <= 3, 1 <= y <= x$；（ #choice[×] ）

    （3）该积分的结果为 2。（ #choice[×] ）
  ],
  a: [(1) √；(2) ×；(3) ×。],
)

#prob-type("二、选择题")

#question(
  [
    2. 设闭区域 $D$ 由 $x$ 轴和 $y = sin x$ ($0 <= x <= pi$) 所围成，则 $iint_D y d sigma =$（ #choice[B] ）。
    A. $pi/6$

    B. $pi/4$

    C. $pi/3$

    D. $pi/2$
  ],
  a: [B.],
)

#question(
  [
    3. 设闭区域 $D$ 由 $y = x^2$ 和 $y = x + 2$ 所围成，则 $iint_D f(x, y) d sigma =$（ #choice[A] ）。
    A. $integral_(-1)^2 d x integral_(x^2)^(x + 2) f(x, y) d y$

    B. $integral_(-1)^2 d x integral_0^2 f(x, y) d y$

    C. $integral_(-2)^1 d x integral_(x^2)^(x + 2) f(x, y) d y$

    D. $integral_0^1 d x integral_(x^2)^(x + 2) f(x, y) d y$
  ],
  a: [A.],
)

#question(
  [
    4. 设 $f(x, y)$ 是连续函数，则 $integral_0^4 d x integral_x^(2 sqrt(x)) f(x, y) d y =$（ #choice[A] ）。
    A. $integral_0^4 d y integral_(y^2/4)^y f(x, y) d x$

    B. $integral_0^4 d y integral_(-y)^(y^2/4) f(x, y) d x$

    C. $integral_0^4 d y integral_(1/4)^y f(x, y) d x$

    D. $integral_0^4 d y integral_(y^2/2)^y f(x, y) d x$
  ],
  a: [A.],
)

#question(
  [
    5. 若闭区域 $D$ 由直线 $x + y = 1, x = 0, y = 0$ 所围成，且 $integral_0^1 f(x) dif x = integral_0^1 x f(x) dif x$ ，则 $iint_D f(x) dif sigma =$（ #choice[B] ）。
    A. 2

    B. 0

    C. 0.5

    D. 1
  ],
  a: [B.],
)

#prob-type("三、填空题")

#question(
  [
    6. 已知闭区域 $D = {(x, y) | a <= x <= b, 0 <= y <= 1}$，且 $iint_D y f(x) d sigma = 1$，则 $integral_a^b f(x) d x =$ #ans[$2$]。
  ],
  a: [2],
)

#question(
  [
    7. 设闭区域 $D$ 由两坐标轴与直线 $x + y = 2$ 所围成，若将 $D$ 视为 $X$ 型区域，则其相应积分限为 #ans[$0 <= x <= 2, 0 <= y <= 2 - x$]；若将 $D$ 视为 $Y$ 型区域，则其相应积分限为 #ans[$0 <= y <= 2, 0 <= x <= 2 - y$]。
  ],
  a: [$(0 <= x <= 2, 0 <= y <= 2 - x), (0 <= y <= 2, 0 <= x <= 2 - y)$],
)

#question(
  [
    8. 设闭区域 $D$ 由曲线 $y = e^x$ 与直线 $x = 0, y = e$ 所围成，若将 $D$ 视为 $X$ 型区域，则其相应积分限为 #ans[$0 <= x <= 1, e^x <= y <= e$]；若将 $D$ 视为 $Y$ 型区域，则其相应积分限为 #ans[$1 <= y <= e, 0 <= x <= ln y$]。
  ],
  a: [$(0 <= x <= 1, e^x <= y <= e), (1 <= y <= e, 0 <= x <= ln y)$],
)

#question(
  [
    9. 设闭区域 $D$ 由曲线 $y^2 = 2x$ 与直线 $y = x - 4$ 所围成，若将 $D$ 视为 $X$ 型区域，则其相应积分限为 #ans[$0 <= x <= 2, -sqrt(2x) <= y <= sqrt(2x)$ 和 $2 <= x <= 8, x - 4 <= y <= sqrt(2x)$]；若将 $D$ 视为 $Y$ 型区域，则其相应积分限为 #ans[$-2 <= y <= 4, y^2/2 <= x <= y + 4$]。
  ],
  a: [X型：$0 <= x <= 2, -sqrt(2x) <= y <= sqrt(2x)$ 及 $2 <= x <= 8, x - 4 <= y <= sqrt(2x)$；Y型：$-2 <= y <= 4, y^2/2 <= x <= y + 4$。],
)

#prob-type("四、计算题")

#question(
  [
    10. 计算 $iint_D x sqrt(y) d sigma$，其中 $D$ 是由曲线 $y = sqrt(x), y = x^2$ 所围成的闭区域。
  ],
  a: [$6/55$],
)

#question(
  [
    11. 计算 $iint_D e^(x + y) d sigma$，其中闭区域 $D = {(x, y) | |x| + |y| <= 1}$。
  ],
  a: [$e - 1/e$],
)

#question(
  [
    12. 计算 $iint_D (x^2 + y^2 - x) d sigma$，其中 $D$ 是由直线 $y = 2, y = x$ 及 $y = 2x$ 所围成的闭区域。
  ],
  a: [$13/6$],
)

== 第二节 二重积分的计算法（2）

#prob-type("一、选择题")

#question(
  [
    1. 二次积分 $ integral_0^(pi/2) d theta integral_0^(cos theta) f(rho cos theta, rho sin theta) rho d rho $ 可写成（ #choice[D] ）
    A. $integral_0^1 d y integral_0^(sqrt(y - y^2)) f(x, y) d x$

    B. $integral_0^1 d y integral_0^(sqrt(1 - y^2)) f(x, y) d x$

    C. $integral_0^1 d x integral_0^1 f(x, y) d y$

    D. $integral_0^1 d x integral_0^(sqrt(x - x^2)) f(x, y) d y$
  ],
  a: [D.],
)

#question(
  [
    2. 设闭区域 $D$ 关于直线 $y = x$ 对称，则有 $iint_D f(x, y) d sigma = iint_D f(y, x) d sigma$。用此结论可得 $iint_(x^2 + y^2 <= 2) (x^2 + y^2/4) d sigma =$（ #choice[C] ）。
    A. $pi$

    B. $3/2 pi$

    C. $5/4 pi$

    D. $2 pi$
  ],
  a: [C.],
)

#prob-type("二、填空题")

#question(
  [
    3. 设闭区域 $D = {(x, y) | x^2 + y^2 <= 2x}$，则 $iint_D f(x, y) d sigma$ 在极坐标系下的二次积分可表示为
  ],
  a: [$integral_(-pi/2)^(pi/2) d theta integral_0^(2 cos theta) f(rho cos theta, rho sin theta) rho d rho$。],
)

#question(
  [
    4. 设闭区域 $D = {(x, y) | 0 <= y <= 1 - x, 0 <= x <= 1}$，则 $iint_D f(x, y) d sigma$ 在极坐标系下的二次积分可表示为
  ],
  a: [$integral_0^(pi/2) d theta integral_0^(1/(cos theta + sin theta)) f(rho cos theta, rho sin theta) rho d rho$。],
)

#question(
  [
    5. 将二次积分 $integral_0^1 d x integral_0^(sqrt(2 a x - x^2)) f(sqrt(x^2 + y^2)) d y$ 化为极坐标形式，结果为
  ],
  a: [$integral_0^(pi/2) d theta integral_0^(2 a cos theta) f(rho) rho d rho$。],
)

#question(
  [
    6. 若二重积分 $iint_D (x^5 + sin y^3 + 3) d sigma = 24$ ，则闭区域 $D$ 可用不等式表示成
  ],
  a: [$|x| <= 1, |y| <= 2$ （答案不唯一）],
)

#prob-type("三、计算题")

#question(
  [
    7. 计算 $iint_D x y^2 d sigma$，其中 $D$ 是由圆 $x^2 + y^2 = 4$ 及 $y$ 轴所围成的右半闭区域。
  ],
  a: [$64/15$],
)

#question(
  [
    8. 计算 $iint_D |1 - x^2 - y^2| d sigma$，其中闭区域 $D = {(x, y) | x^2 + y^2 <= 4}$。
  ],
  a: [$5 pi$],
)

#question(
  [
    9. 计算 $iint_D y/x d sigma$，其中 $D$ 是由圆 $x^2 + y^2 = 4, x^2 + y^2 = 1$ 及直线 $y = 0, y = x$ 所围成的在第一象限的闭区域。
  ],
  a: [$3/8 ln 2$ (注：原卷答案 $3 pi^2/64$ 可能有误，建议核对) ],
)

#question(
  [
    10. （附加题）计算 $iint_D (x + y) d sigma$ ，其中闭区域 $D = {(x, y) | x^2 + y^2 <= x + y}$ .
  ],
  a: [$(pi /2)$],
)

== 第三节 三重积分(1)

#prob-type("一、选择题")

#question(
  [
    1. 设空间闭区域 $Omega$ 由曲面 $z = x y$ 与平面 $y = x, x = 1$ 及 $z = 0$ 所围成，则 $iiint_Omega x y^2 z^3 d v =$（ #choice[D] ）。
    A. $1/361$

    B. $1/362$

    C. $1/363$

    D. $1/364$
  ],
  a: [D.],
)

#question(
  [
    2. 设空间闭区域 $Omega$ 由曲面 $z = x y$ 及平面 $x + y - 1 = 0, z = 0$ 所围成，将 $iiint_Omega f(x, y, z) d v$ 化成三次积分为（ #choice[C] ）。
    A. $integral_0^1 d y integral_0^y d x integral_0^(x y) f(x, y, z) d z$

    B. $integral_0^1 d x integral_0^1 d y integral_0^(x y) f(x, y, z) d z$

    C. $integral_0^1 d y integral_0^(1 - y) d x integral_0^(x y) f(x, y, z) d z$

    D. $integral_0^1 d x integral_0^x d y integral_0^(x y) f(x, y, z) d z$
  ],
  a: [C.],
)

#question(
  [
    3. 设空间闭区域 $Omega$ 由曲面 $y = sqrt(x)$ 及平面 $y = 0, z = 0, x + z = pi/2$ 所围成，下列将 $iiint_Omega f(x, y, z) d v$ 化成三次积分中不正确的是（ #choice[B] ）。
    A. $integral_0^(pi/2) d x integral_0^(sqrt(x)) d y integral_0^(pi/2 - x) f(x, y, z) d z$

    B. $integral_0^(pi/2) d y integral_0^(sqrt(y)) d x integral_0^(pi/2 - x) f(x, y, z) d z$

    C. $integral_0^(pi/2) d x integral_0^(pi/2 - x) d z integral_0^(sqrt(x)) f(x, y, z) d y$

    D. $integral_0^(pi/2) d z integral_0^(pi/2 - z) d x integral_0^(sqrt(x)) f(x, y, z) d y$
  ],
  a: [B.],
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
    5. 计算 $iiint_Omega x z d v$，其中空间闭区域 $Omega$ 由平面 $z = 0, z = y, y = 1$ 及曲面 $y = x^2$ 所围成。
  ],
  a: [0],
)

#question(
  [
    6. 计算 $iiint_Omega z d v$，其中空间闭区域 $Omega$ 由平面 $z = h$ 及曲面 $z = h/R sqrt(x^2 + y^2)$ ($R > 0, h > 0$) 所围成。
  ],
  a: [$pi h^2 R^2 / 4$],
)

== 第三节 三重积分(2)

#prob-type("一、选择题")

#question(
  [
    1. 已知 $Omega$ 是由曲面 $4z^2 = 25(x^2 + y^2)$ 及平面 $z = 5$ 所围成的空间闭区域，则 $iiint_Omega (x^2 + y^2) d v$ 在柱面坐标系下的三次积分为（ #choice[C] ）。
    A. $integral_0^(2 pi) d theta integral_0^2 rho^3 d rho integral_0^5 d z$

    B. $integral_0^(2 pi) d theta integral_0^4 rho^3 d rho integral_0^5 d z$

    C. $integral_0^(2 pi) d theta integral_0^2 rho^3 d rho integral_(5/2 rho)^5 d z$

    D. $integral_0^(2 pi) d theta integral_0^2 rho^2 d rho integral_0^5 d z$
  ],
  a: [C.],
)

#question(
  [
    2. 设有空间闭区域 $ Omega_1 = {(x, y, z) | x^2 + y^2 + z^2 <= R^2, z >= 0}, Omega_2 = {(x, y, z) | x^2 + y^2 + z^2 <= R^2, x >= 0, y >= 0, z >= 0} $，则（ #choice[C] ）。
    A. $iiint_(Omega_1) x d v = 4 iiint_(Omega_2) x d v$

    B. $iiint_(Omega_1) y d v = 4 iiint_(Omega_2) y d v$

    C. $iiint_(Omega_1) z d v = 4 iiint_(Omega_2) z d v$

    D. $iiint_(Omega_1) x y z d v = 4 iiint_(Omega_2) x y z d v$
  ],
  a: [C.],
)

#prob-type("二、填空题")

#question(
  [
    3. 设 $Omega$ 是由曲面 $z = x^2 + y^2$ 和 $z = 2 - x^2 - y^2$ 所围成的空间闭区域，则 $iiint_Omega f(x, y, z) d v$ 在柱面坐标系下的三次积分为
  ],
  a: [$integral_0^(2 pi) d theta integral_0^1 d rho integral_(rho^2)^(2 - rho^2) f(rho cos theta, rho sin theta, z) rho d z$。],
)

#question(
  [
    4. 设 $Omega$ 是由曲面 $x^2 + y^2 + z^2 = 1$ 所围成的空间闭区域，则 $iiint_Omega (z ln(x^2 + y^2 + z^2 + 1)) / (x^2 + y^2 + z^2 + 1) d v =$ #ans[$0$]。
  ],
  a: [0],
)

#prob-type("三、计算题")

#question(
  [
    5. 计算 $iiint_Omega x y d v$，其中 $Omega$ 是由柱面 $x^2 + y^2 = 1$ 及平面 $z = 1, z = 0, x = 0, y = 0$ 所围成且在第一卦限的空间闭区域。
  ],
  a: [$1/8$],
)

#question(
  [
    6. 计算 $iiint_Omega z^2 d v$，其中 $Omega$ 是由曲面 $x^2 + y^2 + z^2 = R^2$ 和 $x^2 + y^2 + z^2 = 2R z$ ($R > 0$) 所围成的空间闭区域。
  ],
  a: [$59/480 pi R^5$],
)

#question(
  [
    7. 计算 $iiint_Omega (y^2 + z^2) d v$，其中 $Omega$ 是由曲线 $ cases(y^2 = 2x, z = 0) $ 绕 $x$ 轴旋转一周所得的曲面与平面 $x = 5$ 所围成的空间闭区域。
  ],
  a: [$250/3 pi$],
)

#question(
  [
    8. （附加题）试分别利用柱面坐标和球面坐标计算 $iiint_Omega (x^2 + y^2 + z^2) d v$，其中 $Omega$ 是由曲面 $x^2 + y^2 + z^2 = 1$ 所围成的空间闭区域。
  ],
  a: [$4/5 pi$],
)

== 第四节 重积分的应用

#prob-type("一、选择题")

#question(
  [
    1. 球面 $x^2 + y^2 + z^2 = a^2$ 含在 $x^2 + y^2 = a x$ ($a > 0$) 内部的面积为（ #choice[B] ）。
    A. $4 integral_0^(pi/2) d theta integral_0^(a cos theta) a/sqrt(a^2 - r^2) r d r$

    B. $8 integral_0^(pi/2) d theta integral_0^(a cos theta) a/sqrt(a^2 - r^2) r d r$

    C. $16 integral_0^(pi/2) d theta integral_0^(a cos theta) a/sqrt(a^2 - r^2) r d r$

    D. $4 integral_(-pi/2)^(pi/2) d theta integral_0^(a cos theta) a/sqrt(a^2 - r^2) r d r$
  ],
  a: [B.],
)

#question(
  [
    2. 半径分别为 $R$ 和 $r$ ($0 < r < R$) 的两个圆所围成的均匀圆环状薄片（设面密度为 $rho$）关于其中心的转动惯量 $I_O =$（ #choice[B] ）。
    A. $pi rho (R^4 - r^4)$

    B. $1/2 pi rho (R^4 - r^4)$

    C. $1/4 pi rho (R^4 - r^4)$

    D. $1/8 pi rho (R^4 - r^4)$
  ],
  a: [B.],
)

#prob-type("二、填空题")

#question(
  [
    3. 设均匀平面薄片所占闭区域为 $D = {(x, y) | x^2/a^2 + y^2/b^2 <= 1, y >= 0}$，则其面积为 #ans[$pi a b / 2$]，其质心坐标为 #ans[$(0, 4 b / (3 pi))$]。
  ],
  a: [$pi a b / 2, (0, 4 b / (3 pi))$],
)

#question(
  [
    4. 设平面闭区域 $D$ 的形心坐标为 $(2, 3)$，其面积为 2，则 $iint_D x d sigma =$ #ans[$4$]， $iint_D y d sigma =$ #ans[$6$]。
  ],
  a: [4, 6],
)

#question(
  [
    5. 半圆形薄片 $x^2 + y^2 <= R^2$ ($y >= 0$) 的面密度 $rho = 1$，则其关于 $y$ 轴的转动惯量 $I_y =$ #ans[$pi R^4 / 8$]。
  ],
  a: [$pi R^4 / 8$],
)

#prob-type("三、计算题")

#question(
  [
    6. 求两个正交圆柱面 $x^2 + y^2 = R^2$ 及 $x^2 + z^2 = R^2$ 所围立体的体积与表面积
  ],
  a: [体积为 $(16/3) R^3$ ，表面积为 $"16R"^2$],
)

#question(
  [
    7. 在均匀半圆形薄片的直径上，要接上一个一边与直径等长的矩形薄片，为了使整个均匀薄片的质心恰好在圆心上，问：接上去的均匀矩形薄片另外一边的长度应为多少？
  ],
  a: [$sqrt (2/3) R$ ( $R$ 为半圆半径).],
)

#question(
  [
    8. 求由曲面 $z^2 = x^2 + y^2$ 与平面 $z = 1$ 所围成的立体的质心，设其密度为 $rho = 1$ .
  ],
  a: [$(0,0,(3/4))$],
)

#question(
  [
    9. 设均匀薄片（密度 $rho = 1$）所占的闭区域 $D$ 是 $x O y$ 面内由抛物线 $y^2 = 9/2 x$ 与直线 $x = 2$ 所围成的，求此均匀薄片关于 $x$ 轴和 $y$ 轴的转动惯量 $I_x, I_y$。
  ],
  a: [$I_x = 72/5, I_y = 96/7$],
)

== 总习题十

#prob-type("一、判断题")

#question(
  [
    1. 设闭区域 $D = {(x, y) | x^2 + y^2 <= 1}$，$D_1$ 为 $D$ 在第一象限的区域，则
    $ iint_D sqrt(1 - x^2 - y^2) d sigma = 4 iint_(D_1) sqrt(1 - x^2 - y^2) d sigma $ （ #choice[√] ）
  ],
  a: [√。],
)

#question(
  [
    2. 设闭区域 $D = {(x, y) | x^2 + y^2 <= 1}$，$D_1$ 为 $D$ 在第一象限的区域，则
    $ iint_D x y d sigma = 4 iint_(D_1) x y d sigma $ （ #choice[×] ）
  ],
  a: [×。],
)

#question(
  [
    3. 二重积分 $iint_D f(x, y) d sigma$ 的几何意义是以曲面 $z = f(x, y)$ 为曲顶，以区域 $D$ 为底面的曲顶柱体的体积。（ #choice[×] ）（注：需 $f(x,y) >= 0$）
  ],
  a: [×。],
)

#question(
  [
    4. 设空间闭区域 $Omega = {(x, y, z) | x^2 + y^2 + z^2 <= R^2, z >= 0}$，$Omega_1$ 为 $Omega$ 在第一卦限的区域，则 $iiint_Omega x d v = 4 iiint_(Omega_1) x d v$。（ #choice[×] ）（注：应该是 2 倍，关于 $y z$ 面不对称）
  ],
  a: [×。],
)

#prob-type("二、选择题")

#question(
  [
    5. 设闭区域 $D$ 由直线 $x = 0, y = 0, x + y = 1/2, x + y = 1$ 所围成，记 $I_1 = iint_D ln(x + y) d sigma$，$ I_2 = iint_D (x + y) d sigma, I_3 = iint_D sin(x + y) d sigma $，则 $I_1, I_2, I_3$ 间的大小关系为（ #choice[C] ）。
    A. $I_1 < I_2 < I_3$

    B. $I_3 < I_2 < I_1$

    C. $I_1 < I_3 < I_2$

    D. $I_2 < I_1 < I_3$
  ],
  a: [C.],
)

#question(
  [
    6. 设 $f(x, y)$ 是连续函数，则二次积分 $integral_(-6)^2 d x integral_((x^2/4) - 1)^(2 - x) f(x, y) d y =$（ #choice[D] ）。
    A. $integral_(-8)^2 d y integral_(2 sqrt (y + 1))^(2 - y) f(x, y) d x$

    B. $integral_(-8)^2 d y integral_(-6)^(2 - y) f(x, y) d x$

    C. $ integral_(-1)^2 d y integral_(-2 sqrt (y + 1))^(2 sqrt (y + 1)) f(x, y) d x + integral_2^8 d y integral_(2 sqrt (y + 1))^(2 - y) f(x, y) d x $

    D. $ integral_(-1)^0 d y integral_(-2 sqrt (y + 1))^(2 sqrt (y + 1)) f(x, y) d x + integral_0^8 d y integral_(-2 sqrt (y + 1))^(2 - y) f(x, y) d x $
  ],
  a: [D.],
)

#question(
  [
    7. 设 $Omega$ 是由曲面 $x^2 + y^2 + z^2 = 1$ 及平面 $x = 0, y = 0, z = 0$ 所围成的空间闭区域在第一卦限的部分，则 $iiint_Omega x y z d v =$（ #choice[A] ）。
    A. $1/48$

    B. $1/56$

    C. $1/64$

    D. $1/72$
  ],
  a: [A.],
)

#prob-type("三、计算题")

#question(
  [
    8. 计算 $integral_0^1 dif x integral_x^1 x^2 (e)^(-y^2) dif y .$
  ],
  a: [$(1/6)(1 - (2/e))$],
)

#question(
  [
    9. 计算 $iint_D (x^2 - y^2) d sigma$，其中闭区域 $D$ 由曲线 $y = sin x$ ($0 <= x <= pi$) 和直线 $y = 0$ 所围成。
  ],
  a: [$pi^2 - 40/9$],
)

#question(
  [
    10. 计算 $iint_D sqrt(R^2 - x^2 - y^2) d sigma$，其中闭区域 $D$ 由圆 $x^2 + y^2 = R x$ 所围成。
  ],
  a: [$(pi/3 - 4/9) R^3$],
)

#question(
  [
    11. 计算 $iiint_Omega 1/(1 + x + y + z)^3 d v$，其中空间闭区域 $Omega$ 由平面 $x = 0, y = 0, z = 0, x + y + z = 1$ 所围成。
  ],
  a: [$1/2 (ln 2 - 5/8)$],
)

#question(
  [
    12. 计算 $iiint_Omega (x^2 + y^2) d v$，其 $Omega$ 为曲线 $ cases(y^2 = 2z, x = 0) $ 绕 $z$ 轴旋转一周所得的曲面与平面 $z = 4$ 所围成的空间闭区域。
  ],
  a: [$128/3 pi$],
)

#question(
  [
    13. 一均匀物体（密度 $rho$ 为常数）占有的空间闭区域 $Omega$ 由曲面 $z = x^2 + y^2$ 和平面 $z = 0$ ， $|x| = a, |y| = a$ 所围成，求：
    （1）物体的体积；

    (2) 物体的质心；

    （3）物体关于 $z$ 轴的转动惯量
  ],
  a: [(1) $(8/3) a^4$ ; (2) $(0, 0, (7/15) a^2)$ ; (3) $(112/45) rho a^6$ .],
)

