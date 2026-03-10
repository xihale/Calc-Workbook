#import "../template.typ": *

= 第九章 多元函数微分法及其应用

== 第一节 多元函数的基本概念

#prob-type("一、选择题")

#question(
  [
    1. $lim_((x,y) arrow (0,0)) (x^2 y)/(x^4 + y^2) =$（ #choice[B] ）
    A. $0$ #quad B. 不存在 #quad C. $1/2$ #quad D. 存在但不等于 $0$ 或 $1/2$
  ],
  p: [沿直线 $y = k x^2$ 趋于原点，$I = lim_{x arrow 0} (x^2 dot k x^2)/(x^4 + k^2 x^4) = k / (1 + k^2)$。其值随 $k$ 的变化而变化，故极限不存在。],
)

#question(
  [
    2. 设函数 $f(x, y) = cases(x sin(1/y) + y sin(1/x) & "if" x y != 0, 0 & "if" x y = 0)$ 则 $lim_((x, y) arrow (0, 0)) f(x, y) =$（ #choice[C] ）。
    A. 不存在 #quad B. 1 #quad C. 0 #quad D. 2
  ],
  p: [由于 $|sin u| \le 1$，故 $|f(x, y)| \le |x| + |y|$。由夹逼准则可知极限为 0。],
)

#question(
  [
    3. 设函数 $f(x, y) = cases((x y)/(sqrt(x^2 + y^2)) & "if" x^2 + y^2 != 0, 0 & "if" x^2 + y^2 = 0)$ 则 $f(x, y)$ （ #choice[A] ）。
    A. 处处连续 #quad B. 处处有极限，但不连续 #quad C. 仅在点 $(0,0)$ 处连续 #quad D. 除点 $(0,0)$ 外处处连续
  ],
  p: [在除 $(0, 0)$ 外的点明显连续。在 $(0, 0)$ 点利用极坐标：$f = (r^2 cos theta sin theta) / r = r cos theta sin theta arrow 0$ ($r arrow 0$)。极限等于函数值，故在原点也连续。],
)

#prob-type("二、填空题")

#question(
  [
    4. 函数 $z = sqrt(ln(x + y))$ 的定义域为 #ans[${(x, y) | x + y >= 1}$]。
  ],
  p: [需 $ln(x+y) >= 0 => x+y >= 1$。],
)

#question(
  [
    5. 设函数 $f(x, y) = x^2 + y^2 + x y ln (y/x)$，则 $f(k x, k y) =$ #ans[$k^2 f(x, y)$]。
  ],
)

#question(
  [
    6. $lim_((x,y) arrow (0,1)) (ln (y + e^(x^2))) (sqrt(x^2 + y^2)) =$ #ans[$ln 2$]。
  ],
)

#question(
  [
    7. 设函数 $f(x, y) = cases((tan (x^2 + y^2))/(x^2 + y^2) & (x, y) != (0, 0), A & (x, y) = (0, 0))$ 要使得 $f(x, y)$ 在点 $(0,0)$处连续，则 $A =$ #ans[$1$]。
  ],
)

#question(
  [
    8. 函数 $f(x, y) = (x^2 - y^2)^(-1) cos (y/x)$ 的间断点为 #ans[${(x,y) | y = plus.minus x}$]。
  ],
  p: [间断点为使分母为 0 的点：$x^2 - y^2 = 0 => y = plus.minus x$。],
)

#prob-type("三、计算题")

#question(
  [
    9. 求下列函数的定义域，并画出定义域的图形：
      (1) $z = sqrt(1 - x^2 - y^2)$；
      (2) $z = ln (x + y)$；
      (3) $z = 1 / ln (x + y)$；
      (4) $z = ln (x y - 1)$。
  ],
  a: [
    (1) $x^2 + y^2 <= 1$（单位圆盘内部及边界）；
    (2) $x + y > 0$（直线 $y = -x$ 右上方半平面）；
    (3) $x + y > 0$ 且 $x + y != 1$；
    (4) $x y > 1$（双曲线 $x y = 1$ 之间的区域）。
  ],
)

#question(
  [
    10. 求下列极限：
    (1) $lim_((x,y) arrow (0,0))((2 - sqrt(x y + 4))/(x y))$ ;

    (2) $lim_((x,y) arrow (0,0)) (x y)( sqrt(2 - e^(x y)) - 1);$

    (3) $lim_((x,y) arrow (2,0))((tan x y)/y)$ ;

    (4) $lim_((x,y) arrow (0,0))((1 - cos (x^2 + y^2))/((x^2 + y^2) e^(x^2 y^2))).$
  ],
  a: [(1) $-(1/4)$ ;
    (2) -2;
    (3) 2;
    (4) 0。],
)

== 第二节 偏导数

#prob-type("一、选择题")

#question(
  [
    1. 设函数 $u = arctan(y/x)$，则 $(partial u) / (partial x) =$ （ #choice[B] ）。
    A. $x/(x^2 + y^2)$ #quad B. $-y/(x^2 + y^2)$ #quad C. $y/(x^2 + y^2)$ #quad D. $-x/(x^2 + y^2)$
  ],
  p: [$(partial u) / (partial x) = (1 / (1 + (y/x)^2)) dot (-y/x^2) = (x^2 / (x^2 + y^2)) dot (-y/x^2) = -y/(x^2 + y^2)$。],
)

#question(
  [
    2. 设函数 $f(x, y) = sqrt(y/x)$，则 $f_x'(2, 1) =$（ #choice[A] ）。
    A. $-1/4$ #quad B. $1/4$ #quad C. $-1/2$ #quad D. $1/2$
  ],
  p: [$f_x' = 1/(2 sqrt(y/x)) dot (-y/x^2) = -1/2 sqrt(x/y) dot y/x^2$。代入 $(2, 1)$ 得 $f_x'(2,1) = -1/2 sqrt(2) dot 1/4 = -sqrt(2)/8$。
    *注：原选项 A 为 -1/4，可能被积函数为 $y/x$ 等。若按 $sqrt(y/x)$ 计算则为 $-1/4$ 需满足 $f_x' = -1/(2x) sqrt(y/x) = -1/4 dot 1/sqrt(2)$。重新核对：$f = y^{1/2} x^{-1/2} => f_x' = -1/2 y^{1/2} x^{-3/2} = -y^{1/2} / (2 x sqrt(x))$。代入 $(2,1)$ 得 $-1/(4 sqrt(2))$。若题目是 $f=y/x$ 则正确。在此保留过程。*],
)

#question(
  [
    3. 设函数 $z = y^x$，则 $((partial z) / (partial x) + (partial z) / (partial y)) |_(x=2, y=1) =$ （ #choice[A] ）。
    A. 2 #quad B. $1 + ln 2$ #quad C. 0 #quad D. 1
  ],
  p: [$z_x = y^x ln y$, $z_y = x y^{x-1}$。在 $(2, 1)$ 处，$z_x = 1^2 ln 1 = 0$, $z_y = 2 dot 1^1 = 2$。故 $0 + 2 = 2$。],
)

#prob-type("二、填空题")

#question(
  [
    4. 设函数 $z = sin(3x - y) + y$，则 $((partial z) / (partial x)) |_(x=2, y=1) =$ #ans[$3 cos 5$]。
  ],
)

#question(
  [
    5. 设函数 $u = x y + y/(x^3)$，则 $((partial^2 u) / (partial x^2)) =$ #ans[$2y/(x^3)$]。
  ],
)

#question(
  [
    6. 设函数 $u = x ln(x y)$，则 $((partial^2 u) / (partial x partial y)) =$ #ans[$1/y$]。
  ],
)

#prob-type("三、计算题")

#question(
  [
    7. 求下列函数的偏导数：
    (1) $z = sqrt(ln(x y))$；

    (2) $z = (1 + x y)^y$；

    (3) $u = x^(y/z)$；

    (4) $u = (x - y)^z$。
  ],
  p: [
    (1) $(partial z) / (partial x) = 1/(2x sqrt(ln(x y))), (partial z) / (partial y) = 1/(2y sqrt(ln(x y)))$；

    (2) $(partial z) / (partial x) = y^2 (1 + x y)^(y - 1), (partial z) / (partial y) = (1 + x y)^y [ln(1 + x y) + (x y)/(1 + x y)]$；

    (3) $(partial u) / (partial x) = (y/z) x^((y/z) - 1), (partial u) / (partial y) = (1/z) x^(y/z) ln x, (partial u) / (partial z) = (-y/(z^2)) x^(y/z) ln x$；

    (4) $(partial u) / (partial x) = z(x - y)^(z - 1), (partial u) / (partial y) = -z(x - y)^(z - 1), (partial u) / (partial z) = (x - y)^z ln(x - y)$。
  ],
)

#question(
  [
    8. 求下列函数的二阶偏导数 $(partial^2 z) / (partial x^2), (partial^2 z) / (partial y^2), (partial^2 z) / (partial x partial y)$：
    (1) $z = arctan(y/x)$；

    (2) $z = y^x$。
  ],
  p: [
    (1) $(partial^2 z) / (partial x^2) = (2 x y)/((x^2 + y^2)^2), (partial^2 z) / (partial y^2) = -(2 x y)/((x^2 + y^2)^2), (partial^2 z) / (partial x partial y) = (y^2 - x^2)/((x^2 + y^2)^2)$；

    (2) $(partial^2 z) / (partial x^2) = y^x ln^2 y, (partial^2 z) / (partial y^2) = x(x - 1)y^(x - 2), (partial^2 z) / (partial x partial y) = y^(x - 1)(1 + x ln y)$。
  ],
)

#prob-type("四、证明题")

#question(
  [
    9. 设函数 $z = e^(-(1/x + 1/y))$，求证：$x^2 ((partial z) / (partial x)) + y^2 ((partial z) / (partial y)) = z$。
  ],
  p: [
    设 $phi(x, y)=-(1/x+1/y)$，则 $z=e^{phi}$。
    由链式法则
    $z_x=e^{phi} phi_x=z dot (1/x^2)=z/x^2$，
    $z_y=e^{phi} phi_y=z dot (1/y^2)=z/y^2$。

    因而
    $x^2 z_x + y^2 z_y = x^2 dot z/x^2 + y^2 dot z/y^2 = z+z = 2z$。

    所以按计算结果应为
    $x^2 ((partial z) / (partial x)) + y^2 ((partial z) / (partial y)) = 2z$；
    若题面写成 $=z$，则应视为原题笔误。
  ],
)

== 第三节 全微分

#prob-type("一、选择题")

#question(
  [
    1. 函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处两个偏导数 $f_x'(x_0, y_0), f_y'(x_0, y_0)$ 存在是 $f(x, y)$ 在该点处全微分存在的（#choice[C]）.
    A. 充分条件 #quad B. 充要条件 #quad C. 必要条件 #quad D. 无关条件
  ],
  p: [可微必可偏导，故偏导存在是可微的必要条件。但偏导存在不能推出可微，故不是充分条件。],
)

#question(
  [
    2. 函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处两个偏导数 $f_x'(x_0, y_0), f_y'(x_0, y_0)$ 存在是 $f(x, y)$ 在该点处连续的（#choice[D]）.
    A. 充要条件 #quad B. 必要条件 #quad C. 充分条件 #quad D. 无关条件
  ],
  p: [多元函数中，偏导存在与连续之间没有蕴含关系。偏导存在不一定连续，连续也不一定偏导存在。],
)

#question(
  [
    3. 函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处满足关系（#choice[C]）
    A. 可微分 $arrow.double$ 可偏导 $arrow.double$ 连续 \ #quad B. 可微分 $arrow.double$ 可偏导 $arrow.double$ 连续 \ \
    C. 可微分 $arrow.double$ 可偏导，且可微分 $arrow.double$ 连续，但可偏导不一定连续 \ #quad D. 可偏导与连续之间没有必然联系，且可偏导不一定可微分
  ],
  p: [由全微分定义及性质，可微必可偏导且必连续；但可偏导不一定连续，也不一定可微。故选 C。],
)

#prob-type("二、填空题")

#question(
  [
    4. 函数 $z = arctan(y/x)$ 当 $x = 2, y = 1, Delta x = 0.1, Delta y = -0.2$ 时的全增量 $Delta z approx$ #ans[$-0.09967$]，全微分 $dif z =$ #ans[$-1/10$]。
  ],
  p: [
    先算全微分：
    $z_x = -y/(x^2+y^2), z_y = x/(x^2+y^2)$。
    在 $(2,1)$ 处有 $z_x=-1/5, z_y=2/5$，
    所以
    $dif z = z_x Delta x + z_y Delta y = (-1/5) dot 0.1 + (2/5) dot (-0.2) = -0.1 = -1/10$。

    全增量
    $Delta z = arctan((1+Delta y)/(2+Delta x)) - arctan(1/2)$
    $= arctan(0.8/2.1) - arctan(0.5) approx -0.09967$。
  ],
)

#question(
  [
    5. 设函数 $z = e^(y(x^2 + y^2))$，则 $dif z =$
  ],
  p: [$2x y e^(y(x^2 + y^2)) dif x + (x^2 + 3 y^2) e^(y(x^2 + y^2)) dif y$。],
)

#question(
  [
    6. 设函数 $z = f(y/x)$，则 $dif z =$
  ],
  p: [$-y/(x^2) f'(y/x) dif x + 1/x f'(y/x) dif y$。],
)

#prob-type("三、计算题")

#question(
  [
    7. 设函数 $u = a^(x + y z) - ln x^a$ ($a > 0$)，求 $dif u$。
  ],
  a: [$dif u = (a^(x + y z) ln a - a/x) dif x + a^(x + y z) z ln a dif y + a^(x + y z) y ln a dif z$。],
)

#question(
  [
    8. 求函数 $z = ln(x^2 + y^2 + e^(x y))$ 的全微分。
  ],
  a: [$dif z = 1/(x^2 + y^2 + e^(x y)) [(2x + y e^(x y)) dif x + (2y + x e^(x y)) dif y]$。],
)

#question(
  [
    9. 求函数 $z = ln (1 + x^2 + y^2)$ 当 $x = 1, y = 2$ 时的全微分.
  ],
  a: [$(1/3) dif x + (2/3) dif y .$],
)

#prob-type("四、证明题")

#question(
  [
    10. 设函数 $f(x, y) = cases(x y sin ((1)/( sqrt(x^2 + y^2))), & x^2 + y^2 != 0, 0, & x^2 + y^2 = 0,)$ 证明: $f(x, y)$ 在点 (0,0) 处连续且偏导数存在, 但偏导数在点 (0,0) 处不连续, 而 $f(x, y)$ 在点 (0,0) 处可微分.
  ],
  a: [
    记 $r=sqrt(x^2+y^2)$。当 $(x,y)!=(0,0)$ 时，
    $|f(x,y)|=|x y sin(1/r)| <= |x y| <= (x^2+y^2)/2 = r^2/2$，
    故 $f(x,y)->0=f(0,0)$，所以在 $(0,0)$ 连续。

    由偏导定义：
    $f_x(0,0)=lim_(h->0)(f(h,0)-f(0,0))/h=0$，
    $f_y(0,0)=lim_(h->0)(f(0,h)-f(0,0))/h=0$，偏导存在。

    对 $(x,y)!=(0,0)$ 计算 $f_x$ 会出现含 $cos(1/r)/r^3$ 的项。沿 $y=x$ 代入后有振荡项，不趋于 0，
    因而 $f_x$（同理 $f_y$）在原点不连续。

    可微性检验：
    $f(0,0)=0, f_x(0,0)=f_y(0,0)=0$，只需看
    $|f(x,y)|/sqrt(x^2+y^2) <= (r^2/2)/r = r/2 -> 0$。
    故 $f$ 在 $(0,0)$ 可微。
  ],
)

== 第四节 多元复合函数的求导法则

#prob-type("一、选择题")

#question(
  [
    1. 设函数 $u = (x - y)^z$，而 $z = x^2 + y^2$，则 $u_x' + u_y' =$（ #choice[C] ）。
    A. $2[z(x - y)^(z - 1) + (x + y)(x - y)^z ln(x - y)]$ #quad B. $2z(x - y)^z$ \
    C. $2(x - y)^z (x + y) ln(x - y)$ #quad D. $2(x - y)^(z + 1) ln(x - y)$
  ],
  p: [$u_x' = (partial u) / (partial x) + (partial u) / (partial z) dot (partial z) / (partial x) = z(x-y)^{z-1} + (x-y)^z ln(x-y) dot 2x$。
    $u_y' = (partial u) / (partial y) + (partial u) / (partial z) dot (partial z) / (partial y) = -z(x-y)^{z-1} + (x-y)^z ln(x-y) dot 2y$。
    故 $u_x' + u_y' = 2(x+y)(x-y)^z ln(x-y)$。],
)

#question(
  [
    2. 设函数 $z = 3^(x y)$，而 $x = f(y)$ 且 $f$ 可导，则 $(dif z) / (dif y) =$（ #choice[B] ）。
    A. $3^(x y) (y + x f'(y)) ln 3$ #quad B. $3^(x y) (x + y f'(y)) ln 3$ \
    C. $3^(x y) / ln 3 (x + y f'(y))$ #quad D. $z_x f'(y) + z_y$
  ],
  p: [$(dif z) / (dif y) = (partial z) / (partial x) (dif x) / (dif y) + (partial z) / (partial y) = (3^{x y} y ln 3) f'(y) + 3^{x y} x ln 3 = 3^{x y} (x + y f'(y)) ln 3$。],
)
#question(
  [
    3. 设函数 $u = f(x + y, x z)$，其中 $f$ 具有二阶连续偏导数，则 $(partial^2 u) / (partial x partial z) =$（ #choice[D] ）。
    A. $f_2' + x f_11'' + z f_12'' + x f_12''$ #quad B. $x f_12'' + x f_2' + x z f_22''$ \
    C. $x f_21'' + x z f_22''$ #quad D. $f_2' + x f_21'' + x z f_22''$
  ],
  p: [$(partial u) / (partial z) = f_2' dot x$。
    $(partial^2 u) / (partial x partial z) = (partial) / (partial x) (x f_2') = f_2' + x (partial f_2' / partial x) = f_2' + x (f_{21}'' dot 1 + f_{22}'' dot z) = f_2' + x f_{21}'' + x z f_{22}''$。],
)

#question(
  [
    4. 若函数 $f(x, 2 x) = x^2 + 3 x$ , $f_1'(x, 2 x) = 6 x + 1$ ，则 $f_2'(x, 2 x) =$ （ #choice[D] ）。
    A. $x + 3/2$ #quad B. $x - 3/2$ #quad C. $2 x + 1$ #quad D. $-2 x + 1$
  ],
  p: [对 $f(x, 2x) = x^2 + 3x$ 两边关于 $x$ 求导：$f_1'(x, 2x) dot 1 + f_2'(x, 2x) dot 2 = 2x + 3$。
    代入已知项：$(6x + 1) + 2 f_2' = 2x + 3 => 2 f_2' = -4x + 2 => f_2' = -2x + 1$。],
)

#prob-type("二、填空题")

#question(
  [
    5. 设函数 $z = x^2 + sin y, x = cos t, y = t^3$ ，则 $(dif z) / (dif t) =$  #ans[$- sin 2 t + 3 t^2 cos t^3$] .
  ],
  p: [$- sin 2 t + 3 t^2 cos t^3$],
)

#question(
  [
    6. 设函数 $z = f(x + y, x - y)$，其中 $f$ 可微，则 $dif z =$
  ],
  p: [$(f_1' + f_2') dif x + (f_1' - f_2') dif y$。],
)

#question(
  [
    7. 设函数 $z = f(x, x/y)$，其中 $f$ 具有二阶连续偏导数，则 $(partial^2 z) / (partial x partial y) =$ #ans[$-1/(y^2) f_2' - x/(y^2) f_12'' - x/(y^3) f_22''$]。
  ],
  p: [$-1/y^2 f_2' - x/y^2 f_12'' - x/y^3 f_22''$],
)

#prob-type("三、计算题")

#question(
  [
    8. 设函数 $z = u^2 ln v$，而 $u = x/y, v = 3x - 2y$，求 $(partial z) / (partial x), (partial z) / (partial y)$。
  ],
  p: [$(partial z) / (partial x) = ((2x)/(y^2)) ln(3x-2y) + (3x^2)/((3x-2y)y^2), (partial z) / (partial y) = -((2x^2)/(y^3)) ln(3x-2y) - (2x^2)/((3x-2y)y^2)$。],
)

#question(
  [
    9. 设函数 $z = arcsin(x - y)$，而 $x = 3t, y = 4t^3$，求 $(dif z) / (dif t)$。
  ],
  a: [
    先合成一元函数：
    $z(t)=arcsin(3t-4t^3)$。
    设 $u(t)=3t-4t^3$，则 $u'(t)=3-12t^2$。

    由链式法则
    $(dif z) / (dif t) = u'(t)/sqrt(1-u(t)^2)$
    $= (3-12t^2)/sqrt(1-(3t-4t^3)^2)$。
  ],
)

#question(
  [
    10. 设函数 $z = arctan(x y)$，而 $y = e^x$，求 $(dif z) / (dif x)$。
  ],
  p: [$(e^x(1 + x))/(1 + x^2 e^(2x))$],
)

#question(
  [
    11. 设函数 $u = f(x/y, y/z)$ , 其中 $f$ 具有一阶连续偏导数, 求 $(partial u) / (partial x), (partial u) / (partial y), (partial u) / (partial z)$ .
  ],
  p: [$(partial u) / (partial x) = (1/y) f_1', (partial u) / (partial y) = -(x/(y^2)) f_1' + (1/z) f_2', (partial u) / (partial z) = -(y/(z^2)) f_2'$ .],
)

#question(
  [
    12. 设函数 $z = f(x^2 + y^2)$ ，其中 $f$ 具有二阶连续导数，求 $(partial^2 z) / (partial x^2), (partial^2 z) / (partial y^2), (partial^2 z) / (partial x partial y)$ .
  ],
  p: [$(partial^2 z) / (partial x^2) = 2 f' + 4 x^2 f''$，$(partial^2 z) / (partial y^2) = 2 f' + 4 y^2 f''$，$(partial^2 z) / (partial x partial y) = 4 x y f''$。],
)

== 第五节 隐函数的求导公式

#prob-type("一、选择题")

#question(
  [
    1. 已知 $x + y - z = e^x, x e^x = tan t, y = cos t$，则 $((dif z) / (dif t)) |_(t=0) =$（ #choice[D] ）。
    A. $1/2$ #quad B. $-1/2$ #quad C. 1 #quad D. 0
  ],
  p: [$z = x + y - e^x$。 $(dif z) / (dif t) = (1 - e^x) (dif x) / (dif t) + (dif y) / (dif t)$。
    当 $t=0$ 时，$x e^x = tan 0 = 0 => x=0$。此时 $1-e^0 = 0$。
    又 $(dif y) / (dif t) = -sin t$，当 $t=0$ 时为 0。
    故 $((dif z) / (dif t)) |_(t=0) = 0 dot x'(0) + 0 = 0$。],
)

#question(
  [
    2. 设函数 $y = y(x, z)$ 由方程 $x y z = e^(x + y)$ 所确定，则 $(partial y) / (partial x) =$（ #choice[A] ）。
    A. $(y(x - 1))/(x(1 - y))$ #quad B. $y/(x(1 - y))$ #quad C. $(y z)/(1 - y)$ #quad D. $(y(1 - x z))/(x(1 - y))$
  ],
  p: [记 $F = x y z - e^{x+y} = 0$。则 $y_x = -F_x / F_y$。
    $F_x = y z - e^{x+y} = y z - x y z = y z(1 - x)$。
    $F_y = x z - e^{x+y} = x z - x y z = x z(1 - y)$。
    故 $y_x = - (y z(1-x)) / (x z(1-y)) = (y(x-1)) / (x(1-y))$。],
)

#prob-type("二、填空题")

#question(
  [
    3. 设函数 $y = y(x)$ 由方程 $1 + x^2 y = e^y$ 所确定，则 $(dif y) / (dif x) =$ #ans[$(2 x y)/(e^y - x^2)$]。
  ],
  p: [$(2 x y)/(e^y - x^2)$],
)

#question(
  [
    4. 设函数 $z = z(x, y)$ 由方程 $x y^2 z = x + y + z$ 所确定，则 $(partial z) / (partial y) =$ #ans[$(2 x y z - 1)/(1 - x y^2)$]。
  ],
  p: [$(2 x y z - 1)/(1 - x y^2)$],
)

#question(
  [
    5. 由方程 $x y z + sqrt(x^2 + y^2 + z^2) = sqrt(2)$ 所确定的函数 $z = z(x, y)$ 在点 $(1, 0, -1)$ 处的全微分 $dif z =$ #ans[$dif x - sqrt(2) dif y$]。
  ],
  p: [$dif x - sqrt(2) dif y$],
)

#prob-type("三、计算题")

#question(
  [
    6. 设 $ln sqrt(x^2 + y^2) = y/x$，求 $(dif y) / (dif x)$。
  ],
  p: [$(x + y)/(x - y)$],
)

#question(
  [
    7. 设 $(x/z) = ln (z/y)$ , 求 $(partial z) / (partial x), (partial z) / (partial y)$ .
  ],
  a: [
    记
    $F(x,y,z)=x/z - ln(z/y)=0$。
    隐函数求导公式给出
    $z_x=-F_x/F_z, z_y=-F_y/F_z$。

    先算偏导：
    $F_x=1/z$，
    $F_y=1/y$，
    $F_z=-x/(z^2)-1/z=-(x+z)/(z^2)$。

    所以
    $(partial z) / (partial x) = -(1/z)/(-(x+z)/(z^2))=z/(x+z)$，
    $(partial z) / (partial y) = -(1/y)/(-(x+z)/(z^2))=z^2/(y(x+z))$。
  ],
)

#question(
  [
    8. 设 $cases(z = x^2 + y^2, x^2 + 2 y^2 + 3 z^2 = 20)$ 求 $(dif y) / (dif x), (dif z) / (dif x)$ .
  ],
  a: [
    由第一式 $z=x^2+y^2$ 对 $x$ 求导：
    $z' = 2x + 2y y'$。

    由第二式 $x^2+2y^2+3z^2=20$ 求导：
    $2x+4y y'+6z z'=0$。
    代入 $z'=2x+2y y'$：
    $2x+4y y'+6z(2x+2y y')=0$，
    即 $2x(1+6z)+4y(1+3z)y'=0$。

    解得
    $(dif y) / (dif x) = y' = -x(6z+1)/(2y(3z+1))$。
    再代回 $z'=2x+2y y'$：
    $(dif z) / (dif x) = z' = x/(3z+1)$。
  ],
)

#question(
  [
    9. 设 $cases(u = f(u x, v + y), v = g(u - x, v^2y),)$ 其中 $f, g$ 具有一阶连续偏导数，求 $(partial u) / (partial x), (partial v) / (partial x)$ .
  ],
  a: [
    对方程组关于 $x$ 求导，设 $u_x=partial u/partial x, v_x=partial v/partial x$：
    $u_x = f_1'(u + x u_x) + f_2' v_x$，
    $v_x = g_1'(u_x - 1) + g_2'(2y v v_x)$。

    整理为线性方程组
    $cases((1 - x f_1')u_x - f_2' v_x = u f_1', -g_1' u_x + (1 - 2 y v g_2')v_x = -g_1')$。
    用克拉默法则解之，得
    分母
    $Delta=(1 - x f_1')(1 - 2 y v g_2') - f_2' g_1'$，
    从而
    $(partial u) / (partial x) = (u f_1' (1 - 2 y v g_2') - f_2' g_1')/Delta$，
    $(partial v) / (partial x) = g_1' (x f_1' + u f_1' - 1)/Delta$。
  ],
)

#prob-type("四、证明题")

#question(
  [
    10. 设 $2 sin (x + 2 y - 3 z) = x + 2 y - 3 z$ ，证明： $(partial z) / (partial x) + (partial z) / (partial y) = 1 .$
  ],
  a: [
    设 $u=x+2y-3z(x,y)$，原式为 $2sin u=u$。
    对 $x$ 求偏导：
    $2cos u dot u_x = u_x$，即 $(2cos u-1)(1-3z_x)=0$。
    对 $y$ 求偏导：
    $2cos u dot u_y = u_y$，即 $(2cos u-1)(2-3z_y)=0$。

    若 $2cos u-1=0$，则 $cos u=1/2$，而由 $2sin u=u$ 在实数域只可能 $u=0$，对应 $cos u=1$，矛盾。
    故 $2cos u-1 != 0$，于是
    $z_x=1/3, z_y=2/3$。
    所以
    $(partial z) / (partial x) + (partial z) / (partial y) = 1$。
  ],
)

#question(
  [
    11. 设函数 $Phi (u, v)$ 具有一阶连续偏导数，证明：由方程 $Phi (c x - a z, c y - b z) = 0$ 所确定的函数 $z = f(x, y)$ 满足 $a ((partial z) / (partial x)) + b ((partial z) / (partial y)) = c .$
  ],
  a: [
    令
    $u = c x - a z, v = c y - b z$，则 $Phi(u, v)=0$。
    对 $x$ 求偏导：
    $Phi_u (c - a z_x) + Phi_v (-b z_x) = 0$，
    即 $c Phi_u = (a Phi_u + b Phi_v) z_x$。

    对 $y$ 求偏导：
    $Phi_u (-a z_y) + Phi_v (c - b z_y) = 0$，
    即 $c Phi_v = (a Phi_u + b Phi_v) z_y$。

    分别乘以 $a,b$ 后相加：
    $a c Phi_u + b c Phi_v = (a Phi_u + b Phi_v)(a z_x + b z_y)$。
    只要 $a Phi_u + b Phi_v != 0$（隐函数可解条件），即可约去，得
    $a z_x + b z_y = c$，即
    $a ((partial z) / (partial x)) + b ((partial z) / (partial y)) = c$。
  ],
)

== 第六节 多元函数微分学的几何应用

#prob-type("一、选择题")

#question(
  [
    1. 曲线 $x = 2 sin t, y = 4 cos t, z = t$ 在点 $(2, 0, pi/2)$ 处的法平面方程为（ #choice[C] ）。
    A. $2x - z = 4 - pi/2$ #quad B. $2x - z = pi/2 - 4$ #quad C. $4y - z = -pi/2$ #quad D. $4y - z = pi/2$
  ],
  p: [点 $(2, 0, pi/2)$ 对应 $t = pi/2$。切向量 $arrow(v) = (2 cos t, -4 sin t, 1)$。
    在 $t = pi/2$ 处，$arrow(v) = (0, -4, 1)$。
    法平面方程为 $0(x-2) - 4(y-0) + 1(z-pi/2) = 0 => -4y + z - pi/2 = 0 => 4y - z = -pi/2$。],
)

#question(
  [
    2. 曲线 $4x = y^5, y = sqrt(z)$ 在点 $(8, 2, 4)$ 处的切线方程为（ #choice[A] ）。
    A. $(x - 8)/20 = (y - 2)/1 = (z - 4)/4$ #quad B. $(x + 12)/20 = y/1 = (z + 4)/4$ \
    C. $(x - 8)/5 = (y - 2)/1 = (z - 4)/4$ #quad D. $(x - 3)/5 = (y - 1)/1 = z/4$
  ],
  p: [设两曲面为 $F_1 = 4x - y^5, F_2 = y - sqrt(z)$。在 $(8, 2, 4)$ 处：
    $grad F_1 = (4, -5y^4, 0) = (4, -80, 0)$，取 $(1, -20, 0)$。
    $grad F_2 = (0, 1, -1/(2 sqrt(z))) = (0, 1, -1/4)$，取 $(0, 4, -1)$。
    切向量 $bold(s) = grad F_1 times grad F_2 = (20, 1, 4)$。
    切向方程为 $(x-8)/20 = (y-2)/1 = (z-4)/4$。],
)

#question(
  [
    3. 曲面 $x cos z + y cos x - (pi /2) z = (pi /2)$ 在点 $(pi /2, 1 - (pi /2), 0)$ 处的切平面方程为(#choice[D]).
    A. $x - z = pi - 1$ #quad B. $x - y = pi - 1$ #quad C. $x - y = (pi /2)$ #quad D. $x - z = (pi /2)$
  ],
  p: [设 $F = x cos z + y cos x - (pi /2) z - (pi /2)$。在其点处：
    $F_x = cos z - y sin x = cos 0 - (1 - pi/2) sin(pi/2) = 1 - (1 - pi/2) = pi/2$。
    $F_y = cos x = cos(pi/2) = 0$。
    $F_z = -x sin z - pi/2 = -pi/2 sin 0 - pi/2 = -pi/2$。
    法向量 $(pi/2, 0, -pi/2)$ 即 $(1, 0, -1)$。
    方程为 $1(x - pi/2) - 1(z - 0) = 0 => x - z = pi/2$。],
)

#question(
  [
    4. 曲面 $x^2 y z - x y^2 z^3 = 6$ 在点 $(3, 2, 1)$ 处的法线方程为（ #choice[A] ）。
    A. $(x - 3)/8 = (y - 2)/(-3) = (z - 1)/(-18)$ #quad B. $(x - 3)/8 = (y - 2)/3 = (z - 1)/(-18)$ \
    C. $8x - 3y - 18z = 0$ #quad D. $8x + 3y - 18z = 12$
  ],
  p: [设 $F = x^2 y z - x y^2 z^3$。在 $(3, 2, 1)$ 处：
    $F_x = 2x y z - y^2 z^3 = 2(3)(2)(1) - 2^2(1)^3 = 12 - 4 = 8$。
    $F_y = x^2 z - 2x y z^3 = 3^2(1) - 2(3)(2)(1)^3 = 9 - 12 = -3$。
    $F_z = x^2 y - 3x y^2 z^2 = 3^2(2) - 3(3)(2^2)(1)^2 = 18 - 36 = -18$。
    法向量为 $(8, -3, -18)$。法线方程：$(x-3)/8 = (y-2)/-3 = (z-1)/-18$。],
)

#prob-type("二、填空题")

#question(
  [
    5. 曲线 $x = t^2, y = 2t, z = t^3/3$ 在点 $(1, 2, 1/3)$ 处的切线方程为
  ],
  p: [$(x - 1)/2 = (y - 2)/2 = (z - 1/3)/1$],
)

#question(
  [
    6. 曲线 $x = 2 t e^(2 t), y = 3 e^(2 t), z = t^2 e^(2 t)$ 在 $t = -1$ 的对应点处的法平面方程为
  ],
  p: [$x - 3 y + 11 e^(-2) = 0$],
)

#question(
  [
    7. 曲面 $x e^(y) + y^2 e^(2 z) + z^3 e^(3 x) = (2 / e) + 1$ 在点 $(2, -1, 0)$ 处的法线方程为
  ],
  p: [$x - 2 = ((y + 1)/(2 - 2 e)) = ((z)/(2 e)).$],
)

#question(
  [
    8. 曲面 $y + x z = pi /4$ 在点 $(-2, 1, 0)$ 处的切平面方程为
  ],
  p: [$y + 2 z = 1$],
)

#prob-type("三、计算题")

#question(
  [
    9. 求曲线 $x = t/(1 + t), y = (1 + t)/t, z = t^2$ 在 $t = 1$ 的对应点处的切线及法平面方程
  ],
  a: [
    参数方程为
    $r(t)=(t/(1+t), (1+t)/t, t^2)$。
    对 $t$ 求导：
    $r'(t)=(1/(1+t)^2, -1/t^2, 2t)$，
    故在 $t=1$ 时方向向量
    $bold(v)=(1/4,-1,2)$，可取等比向量 $(1,-4,8)$。

    点坐标为
    $P=(1/2,2,1)$。
    切线方程：
    $x-1/2=(y-2)/(-4)=(z-1)/8$。

    法平面法向量取 $bold(v)$，
    所以法平面
    $1(x-1/2)-4(y-2)+8(z-1)=0$，
    化简得 $2x-8y+16z-1=0$。
  ],
)

#question(
  [
    10. 求曲线 $cases(x^2 + y^2 + z^2 - 3 x = 0, 2 x - 3 y + 5 z - 4 = 0)$ 在点(1,1,1)处的切线及法平面方程
  ],
  p: [切线方程为 $(x - 1)/16 = (y - 1)/9 = (z - 1)/(-1)$, 法平面方程为 $16x + 9y - z - 24 = 0$.],
)

#question(
  [
    11. 求曲面 $e^z - z + x y = 3$ 在点(2,1,0)处的切平面及法线方程
  ],
  p: [切平面方程为 $x + 2 y - 4 = 0$ ，法线方程为 $cases((x - 2)/1 = (y - 1)/2, z = 0)$],
)

#question(
  [
    12. 求椭球面 $x^2 + 2 y^2 + z^2 = 1$ 上平行于平面 $x - y + 2 z = 0$ 的切平面方程
  ],
  p: [$x - y + 2 z = plus.minus sqrt(11/2)$],
)

#question(
  [
    13. 求旋转椭球面 $3 x^2 + y^2 + z^2 = 16$ 在点 $(-1, -2, 3)$ 处的切平面与 $x O y$ 面的夹角的余弦.
  ],
  p: [$((3)/( sqrt(22)))$],
)

== 第七节 方向导数与梯度

#prob-type("一、判断题（如果错误，请加以改正）")

#question(
  [
    4. 设函数 $z = x^2 - y^2$，求其在点 $(1, 1)$ 处沿与 $x$ 轴正向成 $3/4 pi$ 方向的方向导数。
  ],
  p: [$-sqrt(2)$],
)

#question(
  [
    5. 设函数 $f(x, y, z) = x^2 + 2 y^2 + 3 z^3 + x y + 3 x - 2 y - 6 z$ ，则 $bold(grad) f(0,0,0) =$ #ans[$(3, -2, -6)$]。
  ],
  p: [$(3, -2, -6)$],
)

#prob-type("三、计算题")

#question(
  [
    6. 设函数 $u = x^2 + y^2 + z^2$，求：
    (1) $bold(grad) u(1, 1, 1)$；

    (2) $((partial u) / (partial l)) |_(1, 1, 1)$，其中方向 $l$ 从点 $(1, 1, 1)$ 到点 $(2, 3, 3)$。
  ],
  p: [(1) $(2, 2, 2)$；(2) $10/3$。],
)

#question(
  [
    7. 设函数 $f(x, y) = sqrt(x^2 + y^4)$ ，求：
    (1) $bold(grad) f(1, - 1)$

    (2) $(partial f) / (partial l)|_(1, - 1)$ ，其中方向 $l$ 与 $x$ 轴正向成 $(pi /4)$ 角；

    (3) $(partial f) / (partial l)|_(1, - 1)$ ，其中方向 $l$ 与 $bold(grad) f(1,1)$ 同向.
  ],
  a: [(1) $((( sqrt(2))/(2)), - sqrt(2))$ ;
    (2) $-(1/2)$ ;
    (3) $-((3 sqrt(10))/(10))$ .],
)

#question(
  [
    8. 如果可微函数 $f(x, y)$ 在点 $(1, 2)$ 处沿从点 $(1, 2)$ 到点 $(2, 2)$ 的方向的方向导数为 2，沿从点 $(1, 2)$ 到点 $(1, 1)$ 的方向的方向导数为 $-2$，求：
    (1) $bold(grad) f(1, 2)$；

    (2) $((partial f) / (partial l)) |_(1, 2)$，其中方向 $l$ 从点 $(1, 2)$ 到点 $(4, 6)$。
  ],
  a: [
    从点 $(1,2)$ 到 $(2,2)$ 的单位方向向量是 $bold(e_1)=(1,0)$，
    所以
    $D_(bold(e_1)) f(1,2)=bold(grad)f(1,2) dot (1,0)=f_x(1,2)=2$。

    从点 $(1,2)$ 到 $(1,1)$ 的单位方向向量是 $bold(e_2)=(0,-1)$，
    因此
    $D_(bold(e_2)) f(1,2)=bold(grad)f(1,2) dot (0,-1)=-f_y(1,2)=-2$，
    得 $f_y(1,2)=2$。

    故
    $bold(grad)f(1,2)=(2,2)$。

    方向 $l$ 从 $(1,2)$ 到 $(4,6)$，向量为 $(3,4)$，单位向量
    $bold(e_l)=(3/5,4/5)$。
    所求方向导数
    $D_l f(1,2)=bold(grad)f(1,2) dot bold(e_l)=(2,2) dot (3/5,4/5)=14/5$。
  ],
)

#question(
  [
    9. 已知曲面 $2 x^2 + 3 y^2 + z^2 = 6$ 在点 $P(1,1,1)$ 处指向外侧的法向量为 $bold(n)$ , 求函数 $u = (( sqrt(6 x^2 + 8 y^2))/(z))$ 在点 $P$ 处沿方向 $bold(n)$ 的方向导数.
  ],
  a: [
    设 $F(x,y,z)=2x^2+3y^2+z^2-6$，则外法向量方向由 $grad F$ 给出。
    在 $P(1,1,1)$ 处
    $grad F(P)=(4,6,2)$，故单位外法向量可取
    $bold(n)=(2,3,1)/sqrt(14)$。

    又
    $u(x,y,z)=sqrt(6x^2+8y^2)/z$。
    计算梯度：
    $u_x=6x/(z sqrt(6x^2+8y^2))$，
    $u_y=8y/(z sqrt(6x^2+8y^2))$，
    $u_z=-sqrt(6x^2+8y^2)/z^2$。
    在 $P$ 处有
    $grad u(P)=(6/sqrt(14),8/sqrt(14),-sqrt(14))$。

    方向导数
    $D_(bold(n))u(P)=grad u(P) dot bold(n)$
    $=(6/sqrt(14),8/sqrt(14),-sqrt(14)) dot (2,3,1)/sqrt(14)
    =(12+24-14)/14=11/7$。
  ],
)

#prob-type("四、证明题")

#question(
  [
    10. （附加题）证明：函数 $f(x, y) = root(3, x y)$ 在点(0,0)处连续且可偏导，但除沿坐标轴的方向外，在点(0,0)处沿其他方向的方向导数都不存在。
  ],
  a: [
    (1) 连续性：
    $f(x,y)=(x y)^(1/3)$，当 $(x,y)->(0,0)$ 时有 $x y -> 0$，故
    $f(x,y)->0=f(0,0)$，所以在原点连续。

    (2) 偏导数：
    由定义
    $f_x(0,0)=lim_(h->0) (f(h,0)-f(0,0))/h = 0$，
    $f_y(0,0)=lim_(h->0) (f(0,h)-f(0,0))/h = 0$，
    因而两偏导都存在。

    (3) 方向导数：
    设方向向量为 $l=(m,n)$（可取单位或非单位，结论一致），
    则
    $D_l f(0,0)=lim_(t->0) (f(t m,t n)-f(0,0))/t
    =lim_(t->0) ((m n t^2)^(1/3))/t
    =(m n)^(1/3) lim_(t->0) 1/t^(1/3)$。

    当 $m n != 0$ 时，上式极限发散，方向导数不存在；
    当 $m n = 0$（即沿坐标轴方向）时，分子恒为 0，方向导数为 0。
    故除坐标轴方向外，其余方向导数都不存在。
  ],
)

== 第八节 多元函数的极值及其求法

#prob-type("一、选择题")

#question(
  [
    1. 函数 $z = f(x, y)$ 在点 $(x_0, y_0)$处具有偏导数且在点 $(x_0, y_0)$ 处有极值是 $f_x'(x_0, y_0) = 0$ 及 $f_y'(x_0, y_0) = 0$ 的（#choice[A]）.
    A. 充分条件 #quad B. 必要条件 #quad C. 充要条件 #quad D. 无关条件
  ],
)

#question(
  [
    2. 设函数 $z = f(x, y)$ 的全微分 $dif z = x dif x + y dif y$，则点 $(0, 0)$（ #choice[D] ）。
    A. 不是 $f(x, y)$ 的连续点 #quad B. 不是 $f(x, y)$ 的极值点 \
    C. 是 $f(x, y)$ 的极大值点 #quad D. 是 $f(x, y)$ 的极小值点
  ],
)

#question(
  [
    3. 函数 $z = 3(x + y) - x^3 - y^3$ 的极值点是（#choice[D]）.
    A. (1,2) #quad B. $(1, - 2)$ #quad C. $(-1, 2)$ #quad D. $(-1, - 1)$
  ],
)

#prob-type("二、填空题")

#question(
  [
    4. 设函数 $f(x, y) = 2x^2 + a x + x y^2 + 2y$ 在点 $(1, -1)$ 处取得极值，则常数 $a =$ #ans[$-5$]，极值的类型为 #ans[极小值]。
  ],
  p: [常数 $a = -5$，极值的类型为极小值。],
)

#question(
  [
    5. 若要求函数 $u = sin x sin y sin z$ 在条件 $x + y + z = pi/2$ ($x > 0, y > 0, z > 0$) 下的极值，可构造拉格朗日函数 #ans[$L = sin x sin y sin z + lambda(x + y + z - pi/2)$]，求得其驻点为 #ans[$(pi/6, pi/6, pi/6)$]，在该点处函数取得 #ans[极大值 $1/8$]。
  ],
  p: [$L = sin x sin y sin z + lambda(x + y + z - pi/2), (pi/6, pi/6, pi/6)$，极大值 $1/8$],
)

#prob-type("三、计算题")

#question(
  [
    6. 求函数 $f(x, y) = (6 x - x^2)(4 y - y^2)$ 的极值
  ],
  p: [极大值 $f(3,2) = 36$ .],
)

#question(
  [
    7. 在 $x O y$ 面上求一点，使得它到 $x = 0, y = 0$ 及 $x + 2 y - 16 = 0$ 三直线的距离的平方和最小.
  ],
  p: [所求点为 $(8/5, 16/5)$],
)

#question(
  [
    8. 求内接于半径为 $a$ 的球且有最大体积的长方体
  ],
  p: [内接长方体为边长为 $2 a / (sqrt(3))$ 的正方体],
)

#question(
  [
    9. 在椭圆 $x^2 + 4y^2 = 4$ 上求一点，使得它到直线 $2x + 3y - 6 = 0$ 的距离最短。
  ],
  p: [所求点为 $(8/5, 3/5)$],
)

#question(
  [
    10. （附加题）求函数 $f(x, y, z) = ln x + ln y + 3 ln z$ 在球面 $x^2 + y^2 + z^2 = 5r^2$ ($x > 0, y > 0, z > 0$) 上的最大值，并证明：对于正实数 $a, b, c$，有 $a b c^3 <= 27((a + b + c)/5)^5$ 成立。
  ],
  a: [
    先求约束极值。构造拉格朗日函数
    $L=ln x+ln y+3ln z+lambda(5r^2-x^2-y^2-z^2)$。
    一阶条件：
    $L_x=1/x-2lambda x=0$，
    $L_y=1/y-2lambda y=0$，
    $L_z=3/z-2lambda z=0$。
    得
    $x^2=1/(2lambda), y^2=1/(2lambda), z^2=3/(2lambda)$，
    在正象限内故 $x=y, z=sqrt(3)x$。

    代入约束
    $x^2+y^2+z^2=5x^2=5r^2$，得 $x=y=r, z=sqrt(3)r$。
    因而最大值为
    $f_max = ln r + ln r + 3ln(sqrt(3)r)=ln(3sqrt(3)r^5)$。

    证明不等式：令 $x=sqrt(a), y=sqrt(b), z=sqrt(c)$（$a,b,c>0$），
    并取 $r=sqrt((a+b+c)/5)$，则由上面的最大值结论有
    $ln x+ln y+3ln z <= ln(3sqrt(3)r^5)$。
    指数化得
    $x y z^3 <= 3sqrt(3) r^5$，即
    $sqrt(a)sqrt(b)c^(3/2) <= 3sqrt(3)((a+b+c)/5)^(5/2)$。
    两边平方即得
    $a b c^3 <= 27((a+b+c)/5)^5$。
  ],
)

== 总习题九

#prob-type("一、选择题")

#question(
  [
    1. 设函数 $f(x, y) = cases((x^2 + 2y^2)/(x + y) & (x, y) != (0, 0), 0 & (x, y) = (0, 0))$ 则 $f_y'(0, 0) =$（ #choice[C] ）。
    A. 0 #quad B. 1 #quad C. 2 #quad D. -1
  ],
)

#question(
  [
    2. 若函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处的两个偏导数 $f_x'(x_0, y_0), f_y'(x_0, y_0)$ 存在，则（#choice[D]）.
    A. $f(x,y)$ 在点 $(x_0,y_0)$ 处可微分 #quad B. $f(x,y)$ 在点 $(x_0,y_0)$ 处连续 \
    C. $f(x,y)$ 在点 $(x_0,y_0)$ 处存在任意方向的方向导数 #quad D. $f(x,y)$ 在点 $(x_0,y_0)$ 处关于 $x$ 与 $y$ 皆连续
  ],
)

#question(
  [
    3. 设函数 $z = f(x, y)$ 在点 $(x_0, y_0)$ 处可微分，$Delta z$ 是 $f$ 在点 $(x_0, y_0)$ 处的全增量，则在点 $(x_0, y_0)$ 处有（ #choice[D] ）。
    A. $Delta z = dif z$ #quad B. $Delta z = f_x'(x_0, y_0) Delta x + f_y'(x_0, y_0) Delta y$ \
    C. $Delta z = f_x'(x_0, y_0) dif x + f_y'(x_0, y_0) dif y$ #quad D. $Delta z = dif z + o(rho)$，其中 $rho = sqrt((Delta x)^2 + (Delta y)^2)$
  ],
)

#question(
  [
    4. 设方程 $y = F(x^2 + y^2) + F(x + y)$ 能确定隐函数 $y = f(x)$ ($F$ 可微), 且 $f(0) = 2$ , $F'(2) = 1/2, F'(4) = 1$ , 则 $f'(0) =$ （ #choice[B] ）。
    A. $1$ #quad B. $-1$ #quad C. $1/2$ #quad D. $-1/2$
  ],
)

#question(
  [
    5. 曲面 $x y z = 1$ 上平行于平面 $x + y + z + 3 = 0$ 的切平面方程是（#choice[A]）.
    A. $x + y + z - 3 = 0$ #quad B. $x + y + z - 2 = 0$ \
    C. $x + y + z - 1 = 0$ #quad D. $x + y + z = 0$
  ],
)

#prob-type("二、填空题")

#question(
  [
    6. $lim_((x,y) arrow (0,0)) (1 + sin x y)^(1/(x y)) =$ #ans[$e$] #ans[#h(2em)]
  ],
  p: [极限值为 $e$。],
)

#question(
  [
    7. 设函数 $z = x^(y + 1) (x > 0, x != 1)$ ，则 $dif z =$  #ans[$(y + 1)x^(y) dif x + x^(y + 1) ln x dif y .$] .
  ],
  p: [$(y + 1)x^(y) dif x + x^(y + 1) ln x dif y$。],
)

#question(
  [
    8. 设函数 $u = ln sqrt(x^2 + y^2 + z^2)$，则它在点 $M_0(1, -1, 1)$ 处的方向导数的最大值为 #ans[$sqrt(3)/3$]。
  ],
  p: [方向导数的最大值为 $sqrt(3)/3$。],
)

#question(
  [
    9. 曲线 $x = cos t, y = sin t, z = tan (t/2)$ 在点(0,1,1)处的切线方程为
  ],
  p: [$x/(-1) = (y - 1)/0 = (z - 1)/(1/2)$],
)

#question(
  [
    10. 函数 $z = x y$ 在闭区域 $D = {(x, y) | x >= 0, y >= 0, x + y <= 1}$ 上的最大值为 #ans[$1/4$]。

  ],
  a: [$1/4$],
)

#prob-type("三、计算题")

#question(
  [
    11. 设函数 $w = f(x + y + z, x y z)$ ，其中 $f$ 具有二阶连续偏导数，求 $(partial w) / (partial x), (partial^2 w) / (partial x partial z)$ .
  ],
  p: [$(partial w) / (partial x) = f_1' + y z f_2'$ , $(partial^2 w) / (partial x partial z) = y f_2' + f_(11)'' + (y x + y z)f_(12)'' + x y^2 z f_(22)''$],
)

#question(
  [
    12. 设函数 $z = z(x, y)$ 由方程 $F(z^2 - x^2, z^2 - y^2) = 0$ 所确定，其中 $F$ 具有一阶连续偏导数，试求 $(1/x) ((partial z) / (partial x)) + (1/y) ((partial z) / (partial y))$ .
  ],
  p: [结果为 $1/z$。],
)

#question(
  [
    13. 求螺旋线 $x = a cos theta , y = a sin theta , z = b theta$ 在点 $(a,0,0)$ 处的切线及法平面方程
  ],
  a: [
    点 $(a,0,0)$ 对应参数 $theta=0$。
    曲线导向量
    $r'(theta)=(-a sin theta, a cos theta, b)$，
    在 $theta=0$ 时为
    $bold(v)=(0,a,b)$。

    切线过点 $(a,0,0)$，方向 $bold(v)$，故
    $x=a, y/a=z/b$（或参数式 $x=a, y=a t, z=b t$）。

    法平面的法向量与切向量同向，故
    $0(x-a)+a(y-0)+b(z-0)=0$，
    即法平面方程 $a y + b z = 0$。
  ],
)

#question(
  [
    14. 求坐标原点到曲线 $cases(z = x^2 + y^2, x + y + z = 1)$ 的最短和最长距离.
  ],
  p: [最短距离为 $sqrt(9 - 5 sqrt(3))$ ，最长距离为 $sqrt(9 + 5 sqrt(3))$ 。],
)

#prob-type("四、证明题")

#question(
  [
    15. 设函数 $f(x, y) = cases((x^2 y^2)((x^2 + y^2)^(3/2)), & x^2 + y^2 != 0, 0, & x^2 + y^2 = 0,)$ 证明: $f(x, y)$ 在点 (0,0) 处连续且偏导数存在, 但不可微分.
  ],
  a: [
    按题面分段函数，先有 $f(0,0)=0$。
    对 $(x,y)!=(0,0)$，
    $|f(x,y)| = |x^2 y^2| (x^2+y^2)^(3/2) <= (x^2+y^2)^2 (x^2+y^2)^(3/2) = (x^2+y^2)^(7/2)$，
    故 $f(x,y)->0$，所以在原点连续。

    由定义
    $f_x(0,0)=lim_(h->0)(f(h,0)-f(0,0))/h=0$，
    $f_y(0,0)=lim_(h->0)(f(0,h)-f(0,0))/h=0$，偏导存在。

    说明：按当前题面表达，该函数实际上满足
    $|f(x,y)|/sqrt(x^2+y^2) <= (x^2+y^2)^3 -> 0$，因此可微。
    若原命题要求“不可微”，则通常应为分母型表达（如含 $(x^2+y^2)^(3/2)$ 在分母），原题可能存在排版缺失。
  ],
)
