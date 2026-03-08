#import "../template.typ": *

= 第十一章 曲线积分与曲面积分

== 第一节 对弧长的曲线积分

#prob-type("一、选择题")

#question(
  [
    1. 设 $L$ 为从点 $A(1, 0)$ 到点 $B(-1, 2)$ 的线段，则 $int_L (x + y) dif s =$（ #choice[B] ）。
A. $sqrt(2)$ #quad B. $2 sqrt(2)$ #quad C. 2 #quad D. 0
  ],
  a: [B.],
)

#question(
  [
    2. $oint_L (x^2 + y^2) dif s =$（ #choice[B] ），其中 $L$ 为圆 $x^2 + y^2 = 1$。
A. $int_(2 pi)^0 dif theta$ #quad B. $int_0^(2 pi) dif theta$ \
C. $int_0^(2 pi) r^2 dif theta$ #quad D. $int_0^(2 pi) sqrt(2) dif theta$
  ],
  a: [B.],
)

#question(
  [
  3. $int_L x dif s =$（ #choice[A] ），其中 $L$ 为抛物线 $y = x^2$ 上相应于 $x$ 从 0 到 1 的一段弧。
A. $1/12 (5 sqrt(5) - 1)$ #quad B. $5 sqrt(5) - 1$ \
C. $1/12$ #quad D. $1/8 (5 sqrt(5) - 1)$
],
  a: [A.],
)

#question(
  [
    4. 设 $O M$ 为从点 $O(0, 0)$ 到点 $M(1, 1)$ 的线段，则与 $int_(O M) e^(sqrt(x^2 + y^2)) dif s$ 不相等的积分是（ #choice[C] ）。
A. $int_0^1 sqrt(2) e^(sqrt(2) x) dif x$ #quad B. $int_0^1 sqrt(2) e^(sqrt(2) y) dif y$ \
C. $int_0^(sqrt(2)) e^r d r$ #quad D. $int_0^(sqrt(2)) e^r d r$ （注：选项 D 需核对，通常 C 和 D 中有一个是对弧长直接换元的误导项）
  ],
  a: [C.],
)

#prob-type("二、填空题")

#question([
  5. 设 $L$ 为曲线 $cases(x = 2 cos t, y = 2 sin t, z = t)$，介于 $t = 0$ 到 $t = pi$ 的一段弧，则 $int_L z / (x^2 + y^2) dif s =$ #ans[$sqrt(5) pi^2 / 8$]。
])

#question(
  [
    6. 设 $L: cases(x = a cos t, y = a sin t)$ ($0 <= t <= 2 pi, a > 0$)，则 $oint_L (x^2 + y^2)^n dif s =$ #ans[$2 pi a^(2 n + 1)$]。
  ],
  a: [$2 pi a^(2 n + 1)$],
)

#question(
  [
    7. 设在 $x O y$ 面内有一线密度为 $mu(x, y)$ 的曲线弧 $L$，则此曲线弧关于 $x$ 轴的转动惯量为 $I_x =$ #ans[$int_L y^2 mu(x, y) dif s$]，关于 $y$ 轴的转动惯量为 $I_y =$ #ans[$int_L x^2 mu(x, y) dif s$]，其质心坐标 $(overline(x), overline(y))$ 中 $overline(x) =$ #ans[$(int_L x mu(x, y) dif s) / (int_L mu(x, y) dif s)$]，$overline(y) =$ #ans[$(int_L y mu(x, y) dif s) / (int_L mu(x, y) dif s)$]。
  ],
  a: [$I_x = int_L y^2 mu dif s, I_y = int_L x^2 mu dif s, overline(x) = (int_L x mu dif s)/M, overline(y) = (int_L y mu dif s)/M$],
)

#prob-type("三、计算题")

#question(
  [
  8. 计算 $int_L (2 x - y) dif s$，其中 $L$ 为联结点 $(0, 0), (1, 0), (0, 1)$ 的闭折线。
],
  a: [2],
)

#question(
  [
    9. 计算 $oint_L x dif s$，其中 $L$ 为由直线 $y = x$ 及抛物线 $y = x^2$ 所围成闭区域的整个边界。
  ],
  a: [$sqrt(2)/2 + 1/12 (5 sqrt(5) - 1)$],
)

#question(
  [
    10. 计算 $oint_L e^(sqrt(x^2 + y^2)) dif s$，其中 $L$ 为圆 $x^2 + y^2 = a^2$，直线 $y = x$ 和 $x$ 轴在第一象限所围成扇形的整个边界。
  ],
  a: [$e^a (2 + pi a / 4) - 2$],
)

#question(
  [
    11. 计算 $int_L x y z dif s$，其中 $L$ 为曲线弧 $x = t, y = 2/3 sqrt(2 t^3), z = 1/2 t^2$ ($0 <= t <= 1$)。
  ],
  a: [$16 sqrt(2) / 143$],
)

#question(
  [
    12. （附加题）计算 $oint_L (2 y^2 + z^2) dif s$，其中 $L$ 为球面 $x^2 + y^2 + z^2 = a^2$ 与平面 $x = y$ 相交的圆。
  ],
  a: [$2 pi a^3$],
)

== 第二节 对坐标的曲线积分

#prob-type("一、选择题")

#question(
  [
    1. 设 $L$ 为抛物线 $y = x^2$ 上从点 $A(1, 1)$ 到点 $B(0, 0)$ 的一段弧，则 $int_L x dif y =$（ #choice[C] ）。
A. $int_0^1 2x^2 dif x$ #quad B. $int_1^0 x dif y$ \
C. $int_1^0 2x^2 dif x$ #quad D. $int_0^1 sqrt(y) dif y$
  ],
  a: [C.],
)

#question(
  [
  2. 设 $L$ 为从点 $(a, 0)$ 到点 $(-a, 0)$ 的线段，则 $int_L (x + y^2) dif x =$（ #choice[D] ）。
A. $a^2/2$ #quad B. $2a$ #quad C. 1 #quad D. 0
],
  a: [D.],
)

#question(
  [
    3. 设 $L$ 为抛物线 $2y = x^2$ 上从点 $A(1, 1/2)$ 到点 $B(2, 2)$ 的一段弧，则 $int_L (2x/y) dif x - (x^2/y^2) dif y =$（ #choice[B] ）。
A. -3 #quad B. 0 #quad C. $3/2$ #quad D. 3
  ],
  a: [B.],
)

#question(
  [
  4. 设 $L$ 为从点 $(0, 0)$ 沿折线 $y = 1 - |x - 1|$ 到点 $A(2, 0)$ 的折线段，则 $int_L -y dif x + x dif y =$（ #choice[D] ）。
A. 0 #quad B. -1 #quad C. 2 #quad D. -2
],
  a: [D.],
)

#prob-type("二、填空题")

#question(
  [
    5. 设 $L$ 为抛物线 $y = x^2$ 上从点 $A(0, 0)$ 到点 $B(1, 1)$ 的一段弧，则 $int_L x dif y =$ #ans[$2/3$]。
  ],
  a: [2/3],
)

#question(
  [
    6. 设 $L$ 为曲线 $y = sqrt(x)$ 上从点 $A(0, 0)$ 到点 $B(1, 1)$ 的一段弧，则将对坐标的曲线积分 $int_L P(x, y) dif x + Q(x, y) dif y$ 化为对弧长的曲线积分是
  ],
  a: [$int_L [ (2 sqrt(x)) /(sqrt(1 + 4x)) P(x, y) + 1 /(sqrt(1 + 4x)) Q(x, y) ] dif s$。],
)

#question(
  [
  7. 设 $L$ 是上半圆 $x^2 + y^2 = 2x$ 从点 $(0, 0)$ 到点 $(1, 1)$ 的一段弧，则将对坐标的曲线积分 $int_L P(x, y) dif x + Q(x, y) dif y$ 化为对弧长的曲线积分是
],
  a: [$int_L [ -y P(x, y) + (x - 1) Q(x, y) ] dif s$。],
)

#question(
  [
    8. 在力 $bold(F) = (x, -y, x)$ 的作用下，质点从点 $(0, 0, 0)$ 沿曲线 $L: cases(x = t, y = 2t, z = t^2)$ 移至点 $(1, 2, 1)$，则力 $bold(F)$ 所做的功为
  ],
  a: [$-5/6$],
)

#prob-type("三、计算题")

#question(
  [
    9. 计算 $int_L (x^2 - y^2) dif x$，其中 $L$ 为抛物线 $y = x^2$ 上从点 $(0, 0)$ 到点 $(2, 4)$ 的一段弧。
  ],
  a: [$-56/15$],
)

#question(
  [
    10. 计算 $I = int_(O A) (x^2 - y^2) dif x + x y dif y$，其中点 $O(0, 0)$，点 $A(1, 1)$， $O A$ 为：
    (1) 直线 $y = x$ 上从点 $O$ 到点 $A$ 的线段；
    (2) 从点 $O$ 经点 $(1, 0)$ 到点 $A$ 的折线段；

    (3) 抛物线 $y = x^2$ 上从点 $O$ 到点 $A$ 的一段弧；
    (4) 从点 $O$ 经点 $(0, 1)$ 到点 $A$ 的折线段.
  ],
  a: [(1) $1/3$；(2) $5/6$；(3) $8/15$；(4) $-2/3$。],
)

#question(
  [
    11. 计算 $int_L (x^2 + 2x y) dif x + (x^2 + y^4) dif y$，其中 $L$ 为：
    (1) 沿抛物线 $y = x^2$ 从点 $O(0, 0)$ 到点 $A(1, 1)$ 的一段弧；

    (2) 沿直线从点 $O(0, 0)$ 经点 $B(1, 0)$ 到点 $A(1, 1)$ 的折线段；

    (3) 沿直线从点 $O(0, 0)$ 经点 $C(0, 1)$ 到点 $A(1, 1)$ 的折线段；

    (4) 沿曲线 $y = sin(pi x / 2)$ 从点 $O(0, 0)$ 到点 $A(1, 1)$ 的一段弧。
  ],
  a: [经计算，(1), (2), (3), (4) 的结果均为 $23/15$。],
)

== 第三节 格林公式及其应用(1)

#prob-type("一、选择题")

#question(
  [
    1. 设有界闭区域 $D$ 由分段光滑曲线 $L$ 围成，$L$ 取正向。若函数 $P(x, y), Q(x, y)$ 在 $D$ 上具有一阶连续偏导数，则 $oint_L P dif x + Q dif y =$（ #choice[D] ）。
A. $iint_D (partial P / partial y - partial Q / partial x) dif sigma$ #quad B. $iint_D (partial Q / partial y - partial P / partial x) dif sigma$ \
C. $iint_D (partial P / partial x - partial Q / partial y) dif sigma$ #quad D. $iint_D (partial Q / partial x - partial P / partial y) dif sigma$
  ],
  a: [D.],
)

#question(
  [
    2. 设 $L: x^2 + y^2 = a^2$，取逆时针方向，则 $oint_L x y^2 dif y - x^2 y dif x =$（ #choice[C] ）。
A. $pi a^2 / 2$ #quad B. $-pi a^4 / 2$ #quad C. $pi a^4 / 2$ #quad D. $-pi a^4$
  ],
  a: [C.],
)

#question(
  [
    3. 设面积为 3 的平面有界闭区域 $D$ 由分段光滑曲线 $L$ 围成，$L$ 取正向，则 $oint_L y dif x + 2 dif y =$（ #choice[B] ）。
A. 3 #quad B. -3 #quad C. -1 #quad D. 无法计算
  ],
  a: [B.],
)

#prob-type("二、填空题")

#question([
  4. 设 $L: x^2 + y^2 = 9$，取顺时针方向，则 $oint_L (2x - y + 4) dif x + (5y + 3x - 6) dif y =$ #ans[$36 pi$]。
])

#question(
  [
    5. 设 $L$ 为椭圆 $x^2/a^2 + y^2/b^2 = 1$ 的正向边界，则 $oint_L x dif y - y dif x =$ #ans[$2 pi a b$]。
  ],
  a: [$2 pi a b$],
)

#question(
  [
    6. 设 $L$ 为圆 $x^2 + y^2 = 1$ 上从点 $(1, 0)$ 经点 $(0, 1)$ 到点 $(-1, 0)$ 的一段弧，则 $int_L e^(y^2) dif y =$ #ans[$0$]。
  ],
  a: [0],
)

#prob-type("三、计算题")

#question(
  [
    7. 利用格林公式计算 $iint_D x dif sigma$，其中 $D$ 是以三点 $O(0, 0), A(2, 0), B(2, 2)$ 为顶点的三角形闭区域。
  ],
  a: [$8/3$],
)

#question(
  [
    8. 计算 $oint_L (2x y - x^2) dif x + (x + y^2) dif y$，其中 $L$ 为由抛物线 $y = x^2$ 和 $y^2 = x$ 所围成的区域的正向边界曲线。
  ],
  a: [$1/30$],
)

#question(
  [
    9. 计算 $int_L (e^x sin y - m y) dif x + (e^x cos y - m) dif y$，其中 $L$ 为圆 $x^2 + y^2 = a x$ ($a > 0$) 上从点 $(a, 0)$ 到点 $(0, 0)$ 的上半部分。
  ],
  a: [$pi m a^2 / 8$],
)

#question(
  [
    10. 计算 $oint_L ((x + y) dif x - (x - y) dif y) / (x^2 + y^2)$，其中 $L$ 为一条无重点、分段光滑且不经过坐标原点的连续闭曲线，取逆时针方向。
  ],
  a: [不含坐标原点：0；含坐标原点：$-2 pi$。],
)

== 第三节 格林公式及其应用（2）

#prob-type("一、选择题")

#question(
  [
  1. 设函数 $f(x)$ 连续可微且 $f(0) = -2$， $int_L (y sin 2x - y f(x) tan x) dif x + f(x) dif y$ 与路径无关，则 $f(x) =$（ #choice[B] ）。
A. $-2/3 cos^2 x - 4/(3 cos x)$ #quad B. $-2 cos^2 x$ \
C. $-2 cos x$ #quad D. $-2/3 cos x - 4/(3 cos x)$
],
  a: [B.],
)

#question(
  [
    2. $int_L (2x(x^2 + y^2)^alpha)/y dif x - (x^2(x^2 + y^2)^alpha)/y^2 dif y$ 在不与 $x$ 轴相交的区域上与路径无关，则 $alpha =$（ #choice[D] ）。
A. $1/2$ #quad B. $-1/2$ #quad C. 任意值 #quad D. 0
  ],
  a: [D.],
)

#question(
  [
  3. 若 $int_L (x^2 - 3y) dif x + (a x - sin^2 y) dif y$ 与路径无关，则 $a =$（ #choice[B] ）。
A. $-1/3$ #quad B. $-3$ #quad C. $1/3$ #quad D. 3
],
  a: [B.],
)

#question(
  [
    4. 下列式子中不是某一函数 $u(x,y)$ 的全微分的是（#choice[D]）
A. $(x + 2 y) dif x + (2 x + y) dif y$ #quad B. $2 x y dif x + x^2 dif y$ \
C. $e^(y) dif x + (x e^(y) - 2 y) dif y$ #quad D. $(x^2 + y^2) dif x + x y dif y$
  ],
  a: [D.],
)

#prob-type("二、填空题")

#question(
  [
  5. 设有函数 $u(x, y)$，已知 $u(0, 0) = 1$，且全微分 $d u = (2x cos y - y^lambda sin x) dif x + (2y cos x - x^lambda sin y) dif y$，则 $lambda =$ #ans[$2$]，$u(x, y) =$ #ans[$x^2 cos y + y^2 cos x + 1$]。
],
  a: [$lambda = 2, u(x, y) = x^2 cos y + y^2 cos x + 1$],
)

#question(
  [
    6. 为使得 $int_(A B) f(x, y)(y dif x + x dif y)$ 与路径无关，则可微函数 $f(x, y)$ 应满足 #ans[$x partial f / partial x = y partial f / partial y$]。
  ],
  a: [$x partial f / partial x = y partial f / partial y$],
)

#prob-type("三、计算题")

#question(
  [
    7. 证明：曲线积分 $int_((1, 2))^((3, 4)) (6x y^2 - y^3) dif x + (6x^2 y - 3x y^2) dif y$ 在整个 $x O y$ 面内与路径无关，并计算积分值。
  ],
  a: [证明略；结果为 152。],
)

#question(
  [
    8. 验证：$(3x^2 y + 8x y^2) dif x + (x^3 + 8x^2 y + 12y e^y) dif y$ 在整个 $x O y$ 面内是某一函数 $u(x, y)$ 的全微分，并求出这样的一个 $u(x, y)$。
  ],
  a: [验证略；$u(x, y) = x^3 y + 4x^2 y^2 + 12(y - 1) e^y + C$。],
)

#question(
  [
  9. 计算 $int_L e^x cos y dif y + e^x sin y dif x$，其中 $L$ 为点 $O(0, 0)$ 沿摆线 $x = a(t - sin t), y = a(1 - cos t)$ 到点 $A(a(pi/2 - 1), a)$ ($a > 0$) 的一段弧。
],
  a: [$e^(a(pi/2 - 1)) sin a$],
)

#question(
  [
    10. （附加题）设 $Q(x, y)$ 在 $x O y$ 面上具有一阶连续偏导数，$int_L 2x y dif x + Q(x, y) dif y$ 与路径无关，并且对于任意的 $t$，有 $int_((0, 0))^((t, 1)) 2x y dif x + Q(x, y) dif y = int_((0, 0))^((1, t)) 2x y dif x + Q(x, y) dif y$，求 $Q(x, y)$。
  ],
  a: [$x^2 + 2y - 1$],
)

== 第四节 对面积的曲面积分

#prob-type("一、选择题")

#question(
  [
    1. 设 $Sigma$ 为抛物面 $z = 2 - x^2 - y^2$ 在 $x O y$ 面上方的部分，则 $iint_Sigma dif S =$（ #choice[D] ）。
A. $int_0^(2 pi) dif theta int_0^1 sqrt(1 + 4 r^2) r d r$ #quad B. $int_0^(2 pi) dif theta int_0^2 sqrt(1 + 4 r^2) r d r$ \
C. $int_0^(2 pi) dif theta int_0^2 (2 - r^2) sqrt(1 + 4 r^2) r d r$ #quad D. $int_0^(2 pi) dif theta int_0^(sqrt(2)) sqrt(1 + 4 r^2) r d r$
  ],
  a: [D.],
)

#question(
  [
  2. 设有一曲面 $Sigma$，其面密度为 $rho(x, y, z)$，则曲面 $Sigma$ 关于 $x$ 轴的转动惯量为（ #choice[D] ）。
A. $iint_Sigma x dif S$ #quad B. $iint_Sigma x rho(x, y, z) dif S$ \
C. $iint_Sigma x^2 dif S$ #quad D. $iint_Sigma (y^2 + z^2) rho(x, y, z) dif S$
],
  a: [D.],
)

#prob-type("二、填空题")

#question(
  [
    3. 设 $Sigma$ 为柱面 $x^2 + y^2 = a^2$ ($a > 0$) 在 $0 <= z <= h$ 之间的部分，则 $iint_Sigma dif S =$ #ans[$2 pi a h$]，$iint_Sigma x dif S =$ #ans[$0$]，$iint_Sigma x^2 dif S =$ #ans[$pi h a^3$]。
  ],
  a: [$2 pi a h, 0, pi h a^3$],
)

#question(
  [
    4. 设 $Sigma$ 为球面 $z = 1 + sqrt(1 - x^2 - y^2)$，则 $iint_Sigma (x^2 + y^2 + z^2 / 2z) dif S =$ #ans[$4 pi$]。（注：表达式中 $z^2 / 2z$ 疑为 $z/2$ 或类似项，建议核对）
  ],
  a: [$4 pi$],
)

#question(
  [
    5. 设 $Sigma$ 为圆锥面 $z = sqrt(x^2 + y^2)$ 被圆柱面 $x^2 + y^2 = 2 a x$ ($a > 0$) 所截的部分，则 $iint_Sigma (x y + y z + z x) dif S =$ #ans[$64 sqrt(2) / 15 a^4$]。
  ],
  a: [$64 sqrt(2) / 15 a^4$],
)

#prob-type("三、计算题")

#question(
  [
  6. 计算 $iint_Sigma (z + 2x + 4/3 y) dif S$，其中 $Sigma$ 为平面 $x/2 + y/3 + z/4 = 1$ 在第一卦限的部分。
],
  a: [$4 sqrt(61)$],
)

#question(
  [
    7. 计算 $iint_Sigma (x + y + z) dif S$，其中 $Sigma$ 为球面 $x^2 + y^2 + z^2 = a^2$ 在 $z >= h$ ($0 < h < a$) 的部分。
  ],
  a: [$pi a(a^2 - h^2)$],
)

#question(
  [
  8. 计算 $iint_Sigma (x^2 + 1/2 y^2 + 1/4 z^2) dif S$，其中 $Sigma$ 为球面 $x^2 + y^2 + z^2 = R^2$。
],
  a: [$7/3 pi R^4$],
)

#question(
  [
    9. 求球面 $z = sqrt(a^2 - x^2 - y^2)$ 在柱面 $x^2 + y^2 = a x$ 内部的表面积。
  ],
  a: [$a^2 (pi - 2)$],
)

#question(
  [
    10. 求抛物面壳 $z = 1/2 (x^2 + y^2)$ ($0 <= z <= 1$) 的质量，已知壳的面密度为 $rho = z$。
  ],
  a: [$2/15 pi (6 sqrt(3) + 1)$],
)

== 第五节 对坐标的曲面积分

#prob-type("一、选择题")

#question(
  [
    1. 设 $Sigma$ 为平面 $z = 0$ ($|x| <= 1, |y| <= 1$)，方向向下，则 $iint_Sigma dif x dif y =$（ #choice[C] ）。
A. 1 #quad B. $iint_(D_(x y)) dif x dif y$ #quad C. $-iint_(D_(x y)) dif x dif y$ #quad D. 0
  ],
  a: [C.],
)

#question(
  [
    2. 设 $Sigma$ 为平面 $z = 0$ ($x^2 + y^2 <= R^2$) 的上侧，则 $iint_Sigma (x^2 + y^2) dif x dif y =$（ #choice[C] ）。
A. $iint_(x^2 + y^2 <= R^2) R^2 dif x dif y = pi R^4$ #quad B. $-iint_(x^2 + y^2 <= R^2) R^2 dif x dif y = -pi R^4$ \
C. $int_0^(2 pi) dif theta int_0^R r^3 d r = pi R^4 / 2$ #quad D. 0
  ],
  a: [C.],
)

#prob-type("二、填空题")

#question(
  [
  3. 设 $Sigma$ 为方程 $z = z(x, y)$ 所给曲面的下侧，$D_(x y)$ 为曲面 $Sigma$ 在 $x O y$ 面上的投影区域，则曲面积分 $iint_Sigma R(x, y, z) dif x dif y$ 可化为二重积分
],
  a: [$-iint_(D_(x y)) R(x, y, z(x, y)) dif x dif y$。],
)

#question(
  [
    4. 设 $Sigma$ 是球面 $x^2 + y^2 + z^2 = a^2$ 的外侧，则 $iint_Sigma z dif x dif y =$ #ans[$2/3 pi a^3$]。
  ],
  a: [$2/3 pi a^3$],
)

#question(
  [
    5. 设 $Sigma$ 是柱面 $x^2 + y^2 = 4$ 介于 $1 <= z <= 3$ 之间的部分，其法向量指向 $z$ 轴，则 $iint_Sigma sqrt(x^2 + y^2 + z^2) dif x dif y =$ #ans[$0$]。
  ],
  a: [0],
)

#question(
  [
  6. $iint_Sigma z dif x dif y + x dif y dif z + y dif z dif x =$ #ans[$6 pi a^2$]，其中 $Sigma$ 为柱面 $x^2 + y^2 = a^2$ 被平面 $z = 1$ 和 $z = 4$ 所截的在第一卦限部分的前侧。
],
  a: [$6 pi a^2$],
)

#question(
  [
    7. 设 $Sigma$ 为平面 $3x + 2y + 2 sqrt(3) z = 6$ 在第一卦限部分的上侧，将 $iint_Sigma R dif x dif y + P dif y dif z + Q dif z dif x$ 化为对面积的曲面积分是
  ],
  a: [$iint_Sigma ( 2 sqrt(3) / 5 R + 3 / 5 P + 2 / 5 Q ) dif S$。],
)

#prob-type("三、计算题")

#question(
  [
    8. 计算下列对坐标的曲面积分：
    (1) $iint_Sigma x^2 y^2 z dif x dif y$，其中 $Sigma$ 为球面 $x^2 + y^2 + z^2 = R^2$ 的下半部分的下侧；

    (2) $iint_Sigma z dif x dif y + x dif y dif z + y dif z dif x$，其中 $Sigma$ 为柱面 $x^2 + y^2 = 1$ 被平面 $z = 0$ 及 $z = 3$ 所截的在第一卦限内的部分的前侧；

    (3) $iint_Sigma [f(x, y, z) + x] dif y dif z + [2 f(x, y, z) + y] dif z dif x + [f(x, y, z) + z] dif x dif y$，其中 $f(x, y, z)$ 为连续函数，$Sigma$ 为平面 $x - y + z = 1$ 在第四卦限部分的上侧。
  ],
  a: [(1) $2/105 pi R^7$；(2) $3/2 pi$；(3) $1/2$。],
)

#prob-type("四、证明题")

#question(
  [
  9. 设 $R$ 是定义在光滑曲面 $S: z = z(x, y), (x, y) in D_(x y)$ 上的连续函数，以 $S$ 的上侧为正侧（ $S$ 的法线方向与 $z$ 轴成锐角），证明： $iint_S R(x, y, z) dif x dif y = iint_(D_(x y)) R(x, y, z(x, y)) dif x dif y$。
],
  a: [证明略。],
)

== 第六节 高斯公式 通量与散度

#prob-type("一、选择题")

#question(
  [
    1. 设函数 $f(u)$ 具有连续导数，$Sigma$ 是曲面 $y = x^2 + z^2$ 与 $y = 8 - x^2 - z^2$ 所围成立体表面的外侧，则 $iint_Sigma 1/y f(x/y) dif y dif z + 1/x f(x/y) dif z dif x + z dif x dif y =$（ #choice[C] ）。
A. $16 pi$ #quad B. $-16 pi$ #quad C. $-8 pi$ #quad D. 因 $f(u)$ 未知, 故无法确定
  ],
  a: [C.],
)

#question(
  [
    2. 设 $Sigma$ 是球面 $x^2 + y^2 + z^2 = a^2$ 的外侧，则 $iint_Sigma z dif x dif y =$（ #choice[B] ）。
A. 0 #quad B. $4/3 pi a^3$ #quad C. $4 pi a^3$ #quad D. $1/2 pi a^4$
  ],
  a: [B.],
)

#question(
  [
    3. 设流速场 $bold(v) = (0, 0, 1)$，则流过球面 $x^2 + y^2 + z^2 = R^2$ 的通量为（ #choice[C] ）。
A. 0 #quad B. $4 pi R^2$ #quad C. $4/3 pi R^3$ #quad D. 1
  ],
  a: [C.],
)

#prob-type("二、填空题")

#question(
  [
  4. 设 $cos alpha, cos beta, cos gamma$ 是光滑闭曲面 $Sigma$ 的外法向量的方向余弦，$Sigma$ 所围的空间闭区域为 $Omega$（坐标原点在 $Omega$ 外），则用高斯公式化曲面积分为重积分时，有 $iint_Sigma (x cos alpha + y cos beta + z cos gamma) /(sqrt(x^2 + y^2 + z^2)) dif S =$ #ans[$iiint_Omega 2/(sqrt(x^2 + y^2 + z^2)) dif v$]。
],
  a: [$iiint_Omega 2/(sqrt(x^2 + y^2 + z^2)) dif v$],
)

#question(
  [
    5. 设 $Omega$ 是由光滑闭曲面 $Sigma$ 所围成的空间闭区域，其体积记为 $V$，则沿 $Sigma$ 外侧的积分 $iint_Sigma (z - y) dif x dif y + (y - x) dif z dif x + (x - z) dif y dif z =$ #ans[$0$]。
  ],
  a: [0],
)

#question(
  [
    6. 设 $Sigma$ 为球面 $x^2 + y^2 + z^2 = a^2$，则 $iint_Sigma (x^2 + y^2 + z^2) dif S =$ #ans[$4 pi a^4$]。
  ],
  a: [$4 pi a^4$],
)

#question(
  [
    7. 设空间闭区域 $Omega$ 由曲面 $z = a^2 - x^2 - y^2$ 与平面 $z = 0$ 所围成, 其中 $a$ 为正整数, 记闭区域 $Omega$ 的表面外侧为 $S, Omega$ 的体积为 $V$ , 则 $iint_S x^2 y z^2 dif y dif z - x y^2 z^2 dif z dif x + z (1 + x y z) dif x dif y =$ #ans[$iiint_Omega (2 x y z^2 - 2 x y^2 z + 1 + x y z) dif v$]。
  ],
  a: [$iiint_Omega (2 x y z^2 - 2 x y^2 z + 1 + x y z) dif v$],
)

#question(
  [
    8. 设有向量场 $bold(A) = (x^2 y + y^3) bold(i) + (x^3 - x y^2) bold(j)$，则 $div bold(A) =$ #ans[$0$]。
  ],
  a: [0],
)

#question(
  [
    9. 向量场 $bold(A) = (x^2 y z, z y^2 x, x y z^2)$ 在点 $M(1, 3, 2)$ 处的散度 $div bold(A) =$ #ans[$30$]。
  ],
  a: [30],
)

#question(
  [
    10. 设函数 $u = ln sqrt(x^2 + y^2 + z^2)$，则 $div(grad u) |_((1, 1, 1)) =$ #ans[$1/3$]。
  ],
  a: [1/3],
)

#prob-type("三、计算题")

#question(
  [
    11. 求向量场 $bold(A)$ 的散度，其中 $bold(A) = e^(x y) bold(i) + cos(x y) bold(j) + cos(x z^2) bold(k)$。
  ],
  a: [$y e^(x y) - x sin(x y)$],
)

#question(
  [
    12. 利用高斯公式计算下列曲面积分：
    (1) $iint_Sigma x^2 dif y dif z + y^2 dif z dif x + z^2 dif x dif y$，其中 $Sigma$ 为平面 $x = 0, y = 0, z = 0, x = a, y = a, z = a$ 所围成立体表面的外侧；

    (2) $iint_Sigma x^3 dif y dif z + y^3 dif z dif x + z^3 dif x dif y$，其中 $Sigma$ 为球面 $x^2 + y^2 + z^2 = a^2$ 的外侧；

    (3) $iint_Sigma x dif y dif z + y dif z dif x + z dif x dif y$，其中 $Sigma$ 为介于 $z = 0, z = 3$ 之间的圆柱体 $x^2 + y^2 <= 9$ 的整个表面的外侧。
  ],
  a: [(1) $3 a^4$；(2) $12/5 pi a^5$；(3) $81 pi$。],
)

#question(
  [
  13. 求向量场 $bold(A) = (2x + 3z) bold(i) - (x z + y) bold(j) + (y^2 + 2z) bold(k)$ 穿过曲面 $Sigma$ 流向指定侧的通量，其中 $Sigma$ 是以点 $(3, -1, 2)$ 为球心，半径 $R = 3$ 的球面，流向外侧。
],
  a: [$108 pi$],
)

== 第七节 斯托克斯公式 环流量与旋度

#prob-type("一、选择题")

#question(
  [
    1. 设有曲线 $Gamma : cases(x^2 + y^2 + z^2 = a^2, x + y + z = 0)$ 从 $z$ 轴正向看去为逆时针方向，则 $oint_Gamma y dif x + z dif y + x dif z =$（ #choice[C] ）。
A. $sqrt(2) pi a^2$ #quad B. $-sqrt(2) pi a^2$ \
C. $-sqrt(3) pi a^2$ #quad D. $sqrt(3) pi a^2$
  ],
  a: [C.],
)

#question(
  [
    2. $oint_L (z - y) dif x + (x - z) dif y + (y - x) dif z =$（ #choice[B] ），其中 $L$ 为以三点 $A(a, 0, 0), B(0, a, 0), C(0, 0, a)$ 为顶点的三角形边界，沿 $A B C A$ 的方向。
A. $3 a^2$ #quad B. $-3 a^2$ #quad C. $sqrt(3) a^2$ #quad D. $-sqrt(3) a^2$
  ],
  a: [B.],
)

#question(
  [
    3. 若 $L$ 为平面 $x cos alpha + y cos beta + z cos gamma = rho$ 上的闭曲线, 它所包围区域的面积为 $S$ , 则$oint_L (cos alpha dif x + cos beta dif y + cos gamma dif z) =$ #ans[$0$] , 其中 $L$ 依正向进行.
A. 0 #quad B. S #quad C. $2 S$ #quad D. $sqrt(2) S$
  ],
  a: [A.],
)

#prob-type("二、填空题")

#question(
  [
  4. 向量场 $bold(A) = (x + y + z, y x, z)$ 的旋度 $rot bold(A) =$ #ans[$(0, 1, y - 1)$]。
],
  a: [$(0, 1, y - 1)$],
)

#question(
  [
    5. 设函数 $f(x, y, z)$ 具有二阶连续偏导数，则 $rot(grad f) =$ #ans[$bold(0)$]。
  ],
  a: [$bold(0)$],
)

#question(
  [
    6. 设函数 $u = ln sqrt(x^2 + y^2 + z^2)$，则 $rot(grad u) |_((1, 0, 1)) =$ #ans[$bold(0)$]。
  ],
  a: [$bold(0)$],
)

#question(
  [
  7. 设 $L$ 为柱面 $x^2 + y^2 = 1$ 与平面 $y + z = 0$ 的交线，从 $z$ 轴正向看去为逆时针方向，则 $oint_L z dif x + y dif z =$ #ans[$pi$]。
],
  a: [pi],
)

#question(
  [
    8. 设 $L$ 为柱面 $x^2 + y^2 = 1$ 与平面 $z = x + y$ 的交线，从 $z$ 轴正向看去为逆时针方向，则 $oint_L x z dif x + x dif y + y^2/2 dif z =$ #ans[$pi$]。
  ],
  a: [pi],
)

#prob-type("三、计算题")

#question(
  [
    9. 利用斯托克斯公式计算积分 $oint_Gamma y dif x + z dif y + x dif z$，其中 $Gamma$ 为圆 $x^2 + y^2 + z^2 = a^2, x + y + z = 0$，从 $x$ 轴正向看去为逆时针方向。
  ],
  a: [$-sqrt(3) pi a^2$],
)

#question(
  [
    10. 求向量场 $bold(A) = (2z - 3y) bold(i) + (3x - z) bold(j) + (y - 2x) bold(k)$ 的旋度。
  ],
  a: [$(2, 4, 6)$],
)

== 总习题十一

#prob-type("一、选择题")

#question(
  [
    1. 设 $L$ 为以三点 $O(0,0), A(1,0), B(0,1)$ 为顶点的三角形边界，则 $int_L (x + y) dif s =$ （#choice[C]）。
A. $sqrt(2)$ #quad B. $2 + sqrt(2)$ #quad C. $1 + sqrt(2)$ #quad D. $1 + 2 sqrt(2)$
  ],
  a: [C.],
)

#question(
  [
    2. 设 $L$ 为抛物线 $y^2 = x$ 上从点 $A(1, -1)$ 到点 $B(1, 1)$ 的一段弧，$P(x, y)$ 是连续函数，则 $int_L P(x, y) dif x =$（ #choice[D] ）。
A. $2 int_0^1 P(x, sqrt(x)) dif x$ #quad B. $2 int_(-1)^0 P(x, -sqrt(x)) dif x$ \
C. $int_0^1 P(x, -sqrt(x)) dif x + int_0^1 P(x, sqrt(x)) dif x$ #quad D. $int_1^0 P(x, -sqrt(x)) dif x + int_0^1 P(x, sqrt(x)) dif x$
  ],
  a: [D.],
)

#question(
  [
  3. 设 $L$ 为圆 $x^2 + y^2 = -2x$ 的正向边界，则 $oint_L (x^3 - y) dif x + (x - y^3) dif y =$（ #choice[D] ）。
A. $-2 pi$ #quad B. 0 #quad C. $3/2 pi$ #quad D. $2 pi$
],
  a: [D.],
)

#question(
  [
    4. 设 $Sigma$ 为平面 $2x + 2y + z - 2 = 0$ 被三个坐标面所截的在第一卦限的部分，则 $iint_Sigma (2x + 2y + z) dif S =$（ #choice[C] ）。
A. $3/4$ #quad B. $3/2$ #quad C. 3 #quad D. 6
  ],
  a: [C.],
)

#question(
  [
    5. 已知 $( (x + a y) dif x + y dif y ) / (x + y)^2$ 为某个函数的全微分，则 $a =$（ #choice[D] ）。
A. -1 #quad B. 0 #quad C. 1 #quad D. 2
  ],
  a: [D.],
)

#question(
  [
    6. 设 $int_L x y^2 dif x + y (x) dif y$ 与路径无关，其中 $(x)$ 具有连续导数，且 $(0) = 0$ ，则 $int_(0,0)^(1,1) x y^2 dif x + y (x) dif y =$（ #choice[B] ）。
A. $3/8$ #quad B. $1/2$ #quad C. $3/4$ #quad D. 1
  ],
  a: [B.],
)

#question(
  [
  7. 设 $S$ 是平面 $x + y + z = 4$ 被柱面 $x^2 + y^2 = 1$ 截出的有限部分，则 $iint_S y dif S =$（ #choice[A] ）。
A. 0 #quad B. $4/3 sqrt(3)$ #quad C. $4 sqrt(3)$ #quad D. $pi$
],
  a: [A.],
)

#prob-type("二、填空题")

#question([
  8. 设 $L$ 为圆 $x^2 + y^2 = a^2$ 在第一象限的部分，则 $int_L x y dif s =$ #ans[$1/2 a^3$]。
])

#question(
  [
    9. 设 $L$ 为抛物线 $y = x^2$ 上从点 $O(0, 0)$ 到点 $A(1, 1)$ 的一段弧，则 $int_L x y dif x + (y - x) dif y =$ #ans[$1/12$]。
  ],
  a: [1/12],
)

#question(
  [
    10. 设有一质量分布均匀的曲面 $Sigma$，在点 $(x, y, z)$ 处的面密度为 $rho(x, y, z)$，则该曲面关于 $z$ 轴的转动惯量 $I_z =$ #ans[$iint_Sigma (x^2 + y^2) rho dif S$]。
  ],
  a: [$iint_Sigma (x^2 + y^2) rho dif S$],
)

#question(
  [
  11. 设光滑闭曲面 $Sigma$ 围成的空间区域为 $Omega$，则利用高斯公式化曲面积分为重积分时，有 $iint_Sigma x y dif x dif y + z x dif z dif x + y z dif y dif z =$ #ans[$0$]。
],
  a: [0],
)

#question(
  [
    12. 设 $L$ 为 $x O y$ 面上沿顺时针方向绕行的闭曲线，且 $oint_L (x - 2y) dif x + (4x + 3y) dif y = -9$，则 $L$ 所围成平面区域 $D$ 的面积为 #ans[$3/2$]。
  ],
  a: [3/2],
)

#question(
  [
    13. 设 $(a x y^3 - y^2 cos x) dif x + (1 + b y sin x + 3x^2 y^2) dif y$ 是某个二元函数 $f(x, y)$ 的全微分，则 $a, b$ 的值分别为 #ans[$a = 2, b = -2$]。
  ],
  a: [$a = 2, b = -2$],
)

#question(
  [
  14. 设 $L$ 为圆 $x^2 + y^2 = 1$，取顺时针方向，则 $I_1 = oint_L x^6 dif s$ 与 $I_2 = oint_L y^6 dif s$ 的大小关系是 #ans[$I_1 = I_2$]。
],
  a: [$I_1 = I_2$],
)

#question(
  [
    15. 设函数 $P(x, y, z)$ 在空间有界闭区域 $V$ 上具有一阶连续偏导数，$Sigma$ 为 $V$ 的光滑边界曲面的外侧，由高斯公式得 $iint_Sigma P(x, y, z) dif y dif z =$ #ans[$iiint_V partial P / partial x dif v$]。
  ],
  a: [iiint_V partial P / partial x dif v],
)

#prob-type("三、计算题")

#question(
  [
    16. 计算 $oint_L sqrt(x^2 + y^2) dif s$，其中 $L$ 为圆 $x^2 + y^2 = a x$。
  ],
  a: [$2 a^2$],
)
