#import "../template.typ": *

= 第十章 重 积 分

== 第一节 二重积分的概念与性质

#prob-type("一、选择题")

#question(
  [
    1. $iint_D f(x, y) dif sigma = lim_(lambda arrow 0) sum_(i=1)^n f(xi_i, eta_i) Delta sigma_i$ 中 $lambda$ 是（ #choice[D] ）。
    A. 最大小区间长度 #quad B. 小区域最大面积 #quad C. 小区域直径 #quad D. 小区域最大直径
  ],
  p: [
    在二重积分定义中，$lambda$ 表示分割区域 $D$ 后，各小区域 $D_i$ 直径的最大值：$lambda = max_{1 <= i <= n} \{ "diam"(D_i) \}$。
  ],
)

#question(
  [
    2. 能使得等式 $iint_D dif sigma = 1$ 成立的积分区域 $D$ 为（ #choice[B] ）。
    A. 由直线 $y = x, x = 1, y = 0$ 所围成的平面区域 #quad B. 由直线 $y = 2x, x = 1, y = 0$ 所围成的平面区域 \
    C. 由直线 $|x| + |y| = 1$ 所围成的平面区域 #quad D. 由曲线 $y = sin x$ ($0 <= x <= pi$) 与直线 $y = 0$ 所围成的平面区域
  ],
  p: [
    $iint_D dif sigma = sigma(D)$ 为区域 $D$ 的面积。 \
    A. $sigma(D) = 1/2 times 1 times 1 = 0.5$ \
    B. $sigma(D) = 1/2 times 1 times 2 = 1$ \
    C. $sigma(D) = 2$ \
    D. $sigma(D) = int_0^pi sin x dif x = 2$
  ],
)

#question(
  [
    3. 设 $D$ 是由直线 $x = 0, y = 0, x + y = 3, x + y = 5$ 所围成的闭区域，记 $I_1 = iint_D ln(x + y) dif sigma, I_2 = iint_D ln^2(x + y) dif sigma$，则（ #choice[A] ）。
    A. $I_1 < I_2$ #quad B. $I_1 > I_2$ #quad C. $I_2 = 2 I_1$ #quad D. 无法比较
  ],
  p: [
    在区域 $D$ 上，$3 <= x + y <= 5$。 \
    由于 $x + y >= 3 > e$，有 $ln(x + y) > 1$。 \
    故 $ln^2(x + y) > ln(x + y)$，从而 $I_2 > I_1$。
  ],
)

#prob-type("二、填空题")

#question(
  [
    4. 设曲顶柱体的顶部曲面函数 $z = f(x, y)$，它的底部区域为 $D$，则曲顶柱体的体积可表示为 #ans[$iint_D |f(x, y)| dif sigma$]。
  ],
  p: [
    曲顶柱体的体积元素为 $dif V = |z| dif sigma = |f(x, y)| dif sigma$。 \
    积分得 $V = iint_D |f(x, y)| dif sigma$。
  ],
)

#question(
  [
    5. 设闭区域 $D = {(x, y) | x^2 + y^2 <= 1}$，则 $iint_D dif sigma =$ #ans[$pi$] 。
  ],
  p: [
    $iint_D dif sigma = sigma(D) = pi times 1^2 = pi$。
  ],
)

#question(
  [
    6. 设闭区域 $D = {(x, y) | x^2 + y^2 <= a^2, x >= 0, y >= 0}$ ($a > 0$)，则 $iint_D sqrt(a^2 - x^2 - y^2) dif sigma =$ #ans[$pi a^3 / 6$]。
  ],
  p: [
    变换为极坐标：$x = r cos theta, y = r sin theta$。 \
    $I = int_0^(pi/2) dif theta int_0^a sqrt(a^2 - r^2) r dif r = pi/2 times [-1/3 (a^2 - r^2)^(3/2)]_0^a = pi a^3 / 6$。
  ],
)

#question(
  [
    7. 设一平面薄片在 $x O y$ 面内占有区域 $D$，其面密度函数为 $rho = (x^2 + y^2) / 2$，则此薄片的质量可表示为 #ans[$1/2 iint_D (x^2 + y^2) dif sigma$]。
  ],
  p: [
    $M = iint_D rho(x, y) dif sigma = iint_D 1/2 (x^2 + y^2) dif sigma = 1/2 iint_D (x^2 + y^2) dif sigma$。
  ],
)

#prob-type("三、计算题")

#question(
  [
    8. 利用二重积分的性质估计二重积分 $I = iint_D (x^2 + y^2 + 2) dif sigma$ 的值，其中积分区域 $D = {(x, y) | |x| + |y| <= 1}$。
  ],
  p: [
    $sigma(D) = 2$。 \
    在 $D$ 上，$0 <= x^2 + y^2 <= 1 ⇒ 2 <= x^2 + y^2 + 2 <= 3$。 \
    由估值定理：$2 times sigma(D) < I < 3 times sigma(D) ⇒ 4 < I < 6$。
  ],
  a: [$4 < I < 6$],
)

== 第二节 二重积分的计算法（1）

#prob-type("一、判断题（如果错误，请加以改正）")

#question(
  [
    1. 设闭区域 $D$ 由直线 $y = x, y = 1, x = 3$ 所围成，要计算 $iint_D 1/(y ln x) dif sigma$。
    （1）既可将 $D$ 视为 $X$ 型区域，也可视为 $Y$ 型区域；（ #choice[√] ）

    （2）若将 $D$ 视为 $X$ 型区域，则其相应积分限为 $1 <= x <= 3, 1 <= y <= x$；（ #choice[√] ）

    （3）该积分的结果为 2。（ #choice[√] ）
  ],
  a: [(1) √；(2) √；(3) √。],
  p: [
    $X$ 型：$1 <= x <= 3, 1 <= y <= x$。 \
    $I = int_1^3 dif x int_1^x 1/(y ln x) dif y = int_1^3 1/ln x [ln y]_1^x dif x = int_1^3 1 dif x = 2$。
  ],
)

#prob-type("二、选择题")

#question(
  [
    2. 设闭区域 $D$ 由 $x$ 轴和 $y = sin x$ ($0 <= x <= pi$) 所围成，则 $iint_D y dif sigma =$（ #choice[B] ）。
    A. $pi/6$ #quad B. $pi/4$ #quad C. $pi/3$ #quad D. $pi/2$
  ],
  p: [
    $I = int_0^pi dif x int_0^(sin x) y dif y = 1/2 int_0^pi sin^2 x dif x = 1/2 times pi/2 = pi/4$。
  ],
)

#question(
  [
    3. 设闭区域 $D$ 由 $y = x^2$ 和 $y = x + 2$ 所围成，则 $iint_D f(x, y) dif sigma =$（ #choice[A] ）。
    A. $int_(-1)^2 dif x int_(x^2)^(x + 2) f(x, y) dif y$ #quad B. $int_(-1)^2 dif x int_0^2 f(x, y) dif y$ \
    C. $int_(-2)^1 dif x int_(x^2)^(x + 2) f(x, y) dif y$ #quad D. $int_0^1 dif x int_(x^2)^(x + 2) f(x, y) dif y$
  ],
  p: [
    联立 $y = x^2$ 与 $y = x + 2 ⇒ x^2 - x - 2 = 0 ⇒ x = -1, 2$。 \
    $D = \{ (x, y) | -1 <= x <= 2, x^2 <= y <= x + 2 \}$。
  ],
)

#question(
  [
    4. 设 $f(x, y)$ 是连续函数，则 $int_0^4 dif x int_x^(2 sqrt(x)) f(x, y) dif y =$（ #choice[A] ）。
    A. $int_0^4 dif y int_(y^2/4)^y f(x, y) dif x$ #quad B. $int_0^4 dif y int_(-y)^(y^2/4) f(x, y) dif x$ \
    C. $int_0^4 dif y int_(1/4)^y f(x, y) dif x$ #quad D. $int_0^4 dif y int_(y^2/2)^y f(x, y) dif x$
  ],
  p: [
    原积分区域 $D$: $0 <= x <= 4, x <= y <= 2 sqrt(x)$。 \
    边界为 $y = x, x = y^2/4$。 \
    交换次序得：$0 <= y <= 4, y^2/4 <= x <= y$。
  ],
)

#question(
  [
    5. 若闭区域 $D$ 由直线 $x + y = 1, x = 0, y = 0$ 所围成，且 $int_0^1 f(x) dif x = int_0^1 x f(x) dif x$ ，则 $iint_D f(x) dif sigma =$（ #choice[B] ）。
    A. 2 #quad B. 0 #quad C. 0.5 #quad D. 1
  ],
  p: [
    $iint_D f(x) dif sigma = int_0^1 f(x) dif x int_0^(1 - x) dif y = int_0^1 (1 - x) f(x) dif x = int_0^1 f(x) dif x - int_0^1 x f(x) dif x = 0$。
  ],
)

#prob-type("三、填空题")

#question(
  [
    6. 已知闭区域 $D = {(x, y) | a <= x <= b, 0 <= y <= 1}$，且 $iint_D y f(x) dif sigma = 1$，则 $int_a^b f(x) dif x =$ #ans[$2$]。
  ],
  p: [
    $iint_D y f(x) dif sigma = (int_a^b f(x) dif x) (int_0^1 y dif y) = 1/2 int_a^b f(x) dif x = 1 ⇒ int_a^b f(x) dif x = 2$。
  ],
)

#question(
  [
    7. 设闭区域 $D$ 由两坐标轴与直线 $x + y = 2$ 所围成，若将 $D$ 视为 $X$ 型区域，则其相应积分限为 #ans[$0 <= x <= 2, 0 <= y <= 2 - x$]；若将 $D$ 视为 $Y$ 型区域，则其相应积分限为 #ans[$0 <= y <= 2, 0 <= x <= 2 - y$]。
  ],
  p: [
    区域边界为 $x=0, y=0, x+y=2$。 \
    $X$ 型：$0 <= x <= 2, 0 <= y <= 2 - x$。 \
    $Y$ 型：$0 <= y <= 2, 0 <= x <= 2 - y$。
  ],
)

#question(
  [
    8. 设闭区域 $D$ 由曲线 $y = e^x$ 与直线 $x = 0, y = e$ 所围成，若将 $D$ 视为 $X$ 型区域，则其相应积分限为 #ans[$0 <= x <= 1, e^x <= y <= e$]；若将 $D$ 视为 $Y$ 型区域，则其相应积分限为 #ans[$1 <= y <= e, 0 <= x <= ln y$]。
  ],
  p: [
    $X$ 型：$0 <= x <= 1, e^x <= y <= e$。 \
    $Y$ 型：$1 <= y <= e, 0 <= x <= ln y$。
  ],
)

#question(
  [
    9. 设闭区域 $D$ 由曲线 $y^2 = 2x$ 与直线 $y = x - 4$ 所围成。
    若将 $D$ 视为 $X$ 型区域，则其相应积分限为
    #ans[$0 <= x <= 2, -sqrt(2x) <= y <= sqrt(2x)$ 和 $2 <= x <= 8, x - 4 <= y <= sqrt(2x)$]；
    若将 $D$ 视为 $Y$ 型区域，则其相应积分限为
    #ans[$-2 <= y <= 4, y^2/2 <= x <= y + 4$]。
  ],
  p: [
    联立 $x = y^2/2$ 与 $x = y + 4 ⇒ y^2/2 - y - 4 = 0 ⇒ y = -2, 4$。 \
    $Y$ 型：$-2 <= y <= 4, y^2/2 <= x <= y + 4$。
  ],
)

#prob-type("四、计算题")

#question(
  [
    10. 计算 $iint_D x sqrt(y) dif sigma$，其中 $D$ 是由曲线 $y = sqrt(x), y = x^2$ 所围成的闭区域。
  ],
  p: [
    $I = int_0^1 x dif x int_{x^2}^{sqrt(x)} y^{1/2} dif y = int_0^1 x [2/3 y^{3/2}]_{x^2}^{sqrt(x)} dif x$ \
    $= 2/3 int_0^1 (x^{7/4} - x^4) dif x = 2/3 [4/11 x^{11/4} - 1/5 x^5]_0^1 = 6/55$。
  ],
  a: [$6/55$],
)

#question(
  [
    11. 计算 $iint_D e^(x + y) dif sigma$，其中闭区域 $D = {(x, y) | |x| + |y| <= 1}$。
  ],
  p: [
    $I = int_{-1}^1 e^x [e^y]_{|x|-1}^{1-|x|} dif x = int_{-1}^1 e^x (e^{1-|x|} - e^{|x|-1}) dif x$ \
    $= int_{-1}^0 (e^{2x+1} - e^{-1}) dif x + int_0^1 (e - e^{2x-1}) dif x = e - e^{-1}$。
  ],
  a: [$e - 1/e$],
)

#question(
  [
    12. 计算 $iint_D (x^2 + y^2 - x) dif sigma$，其中 $D$ 是由直线 $y = 2, y = x$ 及 $y = 2x$ 所围成的闭区域。
  ],
  p: [
    $I = int_0^2 dif y int_{y/2}^y (x^2 + y^2 - x) dif x$ \
    $iint_D x^2 dif sigma = int_0^2 1/3 (y^3 - y^3/8) dif y = 7/6$ \
    $iint_D y^2 dif sigma = int_0^2 y^2 (y - y/2) dif y = 2$ \
    $iint_D x dif sigma = int_0^2 1/2 (y^2 - y^2/4) dif y = 1$ \
    $I = 7/6 + 2 - 1 = 13/6$。
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
  p: [
    $r = cos theta ⇒ r^2 = r cos theta ⇒ x^2 + y^2 = x$。 \
    由于 $0 <= theta <= pi/2$，区域在第一象限，即 $y = sqrt(x - x^2), 0 <= x <= 1$。
  ],
)

#question(
  [
    2. 设闭区域 $D$ 关于直线 $y = x$ 对称，则有 $iint_D f(x, y) dif sigma = iint_D f(y, x) dif sigma$。用此结论可得 $iint_(x^2 + y^2 <= 2) (x^2 + y^2/4) dif sigma =$（ #choice[C] ）。
    A. $pi$ #quad B. $3/2 pi$ #quad C. $5/4 pi$ #quad D. $2 pi$
  ],
  p: [
    $I = 5/8 iint_D (x^2 + y^2) dif sigma = 5/8 int_0^{2pi} dif theta int_0^{sqrt(2)} r^3 dif r = 5/4 pi$。
  ],
)

#prob-type("二、填空题")

#question(
  [
    3. 设闭区域 $D = {(x, y) | x^2 + y^2 <= 2x}$，则 $iint_D f(x, y) dif sigma$ 在极坐标系下的二次积分可表示为
  ],
  a: [$int_(-pi/2)^(pi/2) dif theta int_0^(2 cos theta) f(rho cos theta, rho sin theta) rho dif rho$。],
  p: [
    $r^2 <= 2r cos theta ⇒ r <= 2 cos theta, -pi/2 <= theta <= pi/2$。
  ],
)

#question(
  [
    4. 设闭区域 $D = {(x, y) | 0 <= y <= 1 - x, 0 <= x <= 1}$，则 $iint_D f(x, y) dif sigma$ 在极坐标系下的二次积分可表示为
  ],
  a: [$int_0^(pi/2) dif theta int_0^(1/(cos theta + sin theta)) f(rho cos theta, rho sin theta) rho dif rho$。],
  p: [
    $x + y = 1 ⇒ r(cos theta + sin theta) = 1, 0 <= theta <= pi/2$。
  ],
)

#prob-type("三、计算题")

#question(
  [
    7. 计算 $iint_D x y ^2 dif sigma$，其中 $D$ 是由圆 $x^2 + y^2 = 4$ 及 $y$ 轴所围成的右半闭区域。
  ],
  p: [
    $I = int_{-pi/2}^{pi/2} cos theta sin^2 theta dif theta int_0^2 r^4 dif r = [1/3 sin^3 theta]_{-pi/2}^{pi/2} times [1/5 r^5]_0^2 = 64/15$。
  ],
  a: [$64/15$],
)

#question(
  [
    8. 计算 $iint_D |1 - x^2 - y^2| dif sigma$，其中闭区域 $D = {(x, y) | x^2 + y^2 <= 4}$。
  ],
  p: [
    $I = 2pi (int_0^1 (1 - r^2) r dif r + int_1^2 (r^2 - 1) r dif r) = 2pi (1/4 + 9/4) = 5pi$。
  ],
  a: [$5 pi$],
)

== 第三节 三重积分(1)

#prob-type("三、计算题")

#question(
  [
    5. 计算 $iiint_Omega x z dif v$，其中空间闭区域 $Omega$ 由平面 $z = 0, z = y, y = 1$ 及曲面 $y = x^2$ 所围成。
  ],
  p: [
    区域 $Omega$ 关于 $x = 0$ 对称，被积函数 $x z$ 对 $x$ 是奇函数，故积分值为 0。
  ],
  a: [0],
)

#question(
  [
    6. 计算 $iiint_Omega z dif v$，其中空间闭区域 $Omega$ 由平面 $z = h$ 及曲面 $z = h/R sqrt(x^2 + y^2)$ ($R > 0, h > 0$) 所围成。
  ],
  p: [
    柱面坐标：$0 <= theta <= 2pi, 0 <= r <= R, h/R r <= z <= h$。 \
    $I = 2pi int_0^R r dif r int_{h/R r}^h z dif z = pi h^2 int_0^R r (1 - r^2/R^2) dif r = 1/4 pi R^2 h^2$。
  ],
  a: [$pi h^2 R^2 / 4$],
)

== 第三节 三重积分(2)

#prob-type("三、计算题")

#question(
  [
    5. 计算 $iiint_Omega x y  dif v$，其中 $Omega$ 是由柱面 $x^2 + y^2 = 1$ 及平面 $z = 1, z = 0, x = 0, y = 0$ 所围成且在第一卦限的空间闭区域。
  ],
  p: [
    $I = int_0^1 dif z int_0^{pi/2} sin theta cos theta dif theta int_0^1 r^3 dif r = 1 times 1/2 times 1/4 = 1/8$。
  ],
  a: [$1/8$],
)

#question(
  [
    7. 计算 $iiint_Omega (y^2 + z^2) dif v$，其中 $Omega$ 是由曲线 $cases(y^2 = 2x, z = 0)$ 绕 $x$ 轴旋转一周所得的曲面与平面 $x = 5$ 所围成的空间闭区域。
  ],
  p: [
    $I = int_0^5 dif x int_0^{2pi} dif theta int_0^{sqrt(2x)} r^3 dif r = 2pi int_0^5 1/4 (2x)^2 dif x = 2pi [1/3 x^3]_0^5 = 250/3 pi$。
  ],
  a: [$250/3 pi$],
)

#question(
  [
    8. （附加题）试分别利用柱面坐标和球面坐标计算 $iiint_Omega (x^2 + y^2 + z^2) dif v$，其中 $Omega$ 是由曲面 $x^2 + y^2 + z^2 = 1$ 所围成的空间闭区域。
  ],
  p: [
    球面坐标：$I = int_0^{2pi} dif theta int_0^pi sin phi dif phi int_0^1 r^4 dif r = 4/5 pi$。 \
    柱面坐标：$I = 2pi int_0^1 rho dif rho int_{-sqrt(1-rho^2)}^{sqrt(1-rho^2)} (rho^2 + z^2) dif z = 4/5 pi$。
  ],
  a: [$4/5 pi$],
)

== 第四节 重积分的应用

#prob-type("三、计算题")

#question(
  [
    6. 求两个正交圆柱面 $x^2 + y^2 = R^2$ 及 $x^2 + z^2 = R^2$ 所围立体的体积与表面积
  ],
  p: [
    $V = 8 int_0^R (R^2 - x^2) dif x = 16/3 R^3$。 \
    $S = 16 R int_0^R (R^2 - x^2)^{-1/2} sqrt(R^2 - x^2) dif x = 16 R^2$。
  ],
  a: [$V = 16/3 R^3, S = 16 R^2$],
)

#question(
  [
    8. 求由曲面 $z^2 = x^2 + y^2$ 与平面 $z = 1$ 所围成的立体的质心，设其密度为 $rho = 1$ .
  ],
  p: [
    $bar(x)=0, bar(y)=0$。$V = pi/3$。 \
    $M_{x y} = int_0^1 z dot pi z^2 dif z = 1/4 pi ⇒ bar(z) = (pi/4) / (pi/3) = 3/4$。
  ],
  a: [$(0, 0, 3/4)$],
)

== 总习题十

#prob-type("一、判断题")

#question(
  [
    1. 设闭区域 $D = {(x, y) | x^2 + y^2 <= 1}$，$D_1$ 为 $D$ 在 first 象限的区域，则
    $iint_D sqrt(1 - x^2 - y^2) dif sigma = 4 iint_(D_1) sqrt(1 - x^2 - y^2) dif sigma$ （ #choice[√] ）
  ],
  p: [
    被积函数关于 $x, y$ 均为偶函数，且区域 $D$ 对称分布于四个象限。
  ],
)

#question(
  [
    2. 设闭区域 $D = {(x, y) | x^2 + y^2 <= 1}$，$D_1$ 为 $D$ 在第一象限的区域，则
      $iint_D x y  dif sigma = 4 iint_(D_1) x y  dif sigma$ （ #choice[×] ）
  ],
  p: [
    $x y$ 在 $D$ 上对 $x, y$ 奇对称，全域积分为 0，而第一象限积分为正。
  ],
)

#question(
  [
    3. 二重积分 $iint_D f(x, y) dif sigma$ 的几何意义是以曲面 $z = f(x, y)$ 为曲顶，以区域 $D$ 为底面的曲顶柱体的体积。（ #choice[×] ）
  ],
  p: [
    二重积分表示带符号的体积，仅当 $f(x, y) >= 0$ 时才等于通常意义的体积。
  ],
)

#question(
  [
    4. 设空间闭区域 $Omega = {(x, y, z) | x^2 + y^2 + z^2 <= R^2, z >= 0}$，$Omega_1$ 为 $Omega$ 在第一卦限的区域，则 $iiint_Omega x dif v = 4 iiint_(Omega_1) x dif v$。（ #choice[×] ）
  ],
  p: [
    被积函数 $x$ 对 $x$ 轴奇对称值抵消，在 $Omega$ 上积分为 0。
  ],
)

#prob-type("二、选择题")

#question(
  [
    7. 设 $Omega$ 是由曲面 $x^2 + y^2 + z^2 = 1$ 及平面 $x = 0, y = 0, z = 0$ 所围成的空间闭区域在第一卦限的部分，则 $iiint_Omega x y  z dif v =$（ #choice[A] ）。
  ],
  p: [
    球面坐标：$I = int_0^1 r^5 dif r int_0^{pi/2} sin theta cos theta dif theta int_0^{pi/2} sin^3 phi cos phi dif phi = 1/6 times 1/2 times 1/4 = 1/48$。
  ],
)

#prob-type("三、计算题")

#question(
  [
    8. 计算 $int_0^1 dif x int_x^1 x^2 e^(-y^2) dif y .$
  ],
  p: [
    交换次序：$I = int_0^1 e^{-y^2} dif y int_0^y x^2 dif x = 1/3 int_0^1 y^3 e^{-y^2} dif y = 1/6 (1 - 2/e)$。
  ],
)

#question(
  [
    10. 计算 $iint_D sqrt(R^2 - x^2 - y^2) dif sigma$，其中闭区域 $D$ 由圆 $x^2 + y^2 = R x$ 所围成。
  ],
  p: [
    极坐标：$I = int_{-pi/2}^{pi/2} dif theta int_0^{R cos theta} sqrt(R^2 - r^2) r dif r = (pi/3 - 4/9) R^3$。
  ],
)

#question(
  [
    13. 一均匀物体（密度 $rho$ 为常数）占有的空间闭区域 $Omega$ 由曲面 $z = x^2 + y^2$ 和平面 $z = 0$ ， $|x| = a, |y| = a$ 所围成，求：
      （1）物体的体积； (2) 物体的质心； （3）物体关于 $z$ 轴的转动惯量
  ],
  p: [
    (1) $V = iint_D (x^2 + y^2) dif sigma = 8/3 a^4$。 \
    (2) $bar(x)=0, bar(y)=0, bar(z) = M_{x y}/V = (56/45 a^6) / (8/3 a^4) = 7/15 a^2$。 \
    (3) $I_z = rho iint_D (x^2+y^2)^2 dif sigma = 112/45 rho a^6$。
  ],
  a: [(1) $8/3 a^4$; (2) $(0, 0, 7/15 a^2)$; (3) $112/45 rho a^6$],
)
