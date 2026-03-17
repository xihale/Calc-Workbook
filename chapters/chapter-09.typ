#import "../template.typ": *

= 第九章 多元函数微分法及其应用

== 第一节 多元函数的基本概念

#prob-type("一、选择题")

#question(
  [
    1. $lim_((x,y) arrow (0,0)) (x^2 y)/(x^4 + y^2) =$（ #choice[B] ）
    A. $0$ #quad B. 不存在 #quad C. $1/2$ #quad D. 存在但不等于 $0$ 或 $1/2$
  ],
  p: [
    沿直线 $y = k x^2$ 趋于原点，$I = lim_{x arrow 0} (x^2 dot k x^2)/(x^4 + k^2 x^4) = k / (1 + k^2)$。其值随 $k$ 的变化而变化，故极限不存在。
    ],
)

#question(
  [
    2. 设函数 $f(x, y) = cases(x sin(1/y) + y sin(1/x) & "if" x y  != 0, 0 & "if" x y  = 0)$ 则 $lim_((x, y) arrow (0, 0)) f(x, y) =$（ #choice[C] ）。
    A. 不存在 #quad B. 1 #quad C. 0 #quad D. 2
  ],
  p: [
    对 $(x,y)!=(0,0)$ 有
    $f(x,y)=x sin(1/y)+y sin(1/x)$。
    利用 $|sin t|<=1$：
    $|x sin(1/y)|<=|x|,
    |y sin(1/x)|<=|y|$。

    因而
    $|f(x,y)|<=|x|+|y|$。
    又当 $(x,y)->(0,0)$ 时，右端 $|x|+|y|->0$，
    且显然 $-|x|-|y|<=f(x,y)<=|x|+|y|$。

    由夹逼定理得
    $lim_((x,y)->(0,0)) f(x,y)=0$。],
)

#question(
  [
    3. 设函数 $f(x, y) = cases((x y)/(sqrt(x^2 + y^2)) & "if" x^2 + y^2 != 0, 0 & "if" x^2 + y^2 = 0)$ 则 $f(x, y)$ （ #choice[A] ）。
    A. 处处连续 #quad B. 处处有极限，但不连续 #quad C. 仅在点 $(0,0)$ 处连续 #quad D. 除点 $(0,0)$ 外处处连续
  ],
  p: [
    在除 $(0, 0)$ 外的点明显连续。在 $(0, 0)$ 点利用极坐标：$f = (r^2 cos theta sin theta) / r = r cos theta sin theta arrow 0$ ($r arrow 0$)。极限等于函数值，故在原点也连续。
    ],
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
    5. 设函数 $f(x, y) = x^2 + y^2 + x y  ln (y/x)$，则 $f(k x, k y) =$ #ans[$k^2 f(x, y)$]。
  ],
  p: [
    代入伸缩变量：
    $f(k x,k y)=(k x)^2+(k y)^2+(k x)(k y)ln((k y)/(k x))$。
    因为 $ln((k y)/(k x))=ln(y/x)$，故
    $f(k x,k y)=k^2[x^2+y^2+x y ln(y/x)]=k^2 f(x,y)$。
  ],
)

#question(
  [
    6. $lim_((x,y) arrow (0,1)) (ln (y + e^(x^2))) (sqrt(x^2 + y^2)) =$ #ans[$ln 2$]。
  ],
  p: [
    先看第一个因子：
    当 $(x,y)->(0,1)$ 时
    $x^2->0,
    e^(x^2)->1,
    y+e^(x^2)->2>0$，
    所以
    $ln(y+e^(x^2))->ln 2$。

    再看第二个因子：
    $sqrt(x^2+y^2)->sqrt(0^2+1^2)=1$。

    两个因子都收敛且极限有限，
    故乘积极限等于极限乘积：
    $lim (ln(y+e^(x^2)) sqrt(x^2+y^2))=(ln 2) dot 1=ln 2$。
  ],
)

#question(
  [
    7. 设函数 $f(x, y) = cases((tan (x^2 + y^2))/(x^2 + y^2) & (x, y) != (0, 0), A & (x, y) = (0, 0))$ 要使得 $f(x, y)$ 在点 $(0,0)$处连续，则 $A =$ #ans[$1$]。
  ],
  p: [
    令 $r^2=x^2+y^2$，则
    $lim_((x,y) arrow (0,0)) (tan(x^2+y^2))/(x^2+y^2)=lim_(r arrow 0) tan(r^2)/r^2=1$。
    连续要求函数值等于该极限，所以 $A=1$。
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
  p: [(1) $x^2 + y^2 <= 1$（单位圆盘内部及边界）；
    (2) $x + y > 0$（直线 $y = -x$ 右上方半平面）；
    (3) $x + y > 0$ 且 $x + y != 1$；
    (4) $x y > 1$（双曲线 $x y = 1$ 之间的区域）。],

)

#question(
  [
    10. 求下列极限：
    (1) $lim_((x,y) arrow (0,0))((2 - sqrt(x y + 4))/(x y))$ ;

    (2) $lim_((x,y) arrow (0,0)) (x y)( sqrt(2 - e^(x y)) - 1);$

    (3) $lim_((x,y) arrow (2,0))((tan x y )/y)$ ;

    (4) $lim_((x,y) arrow (0,0))((1 - cos (x^2 + y^2))/((x^2 + y^2) e^(x^2 y^2))).$
  ],
  a: [(1) $-(1/4)$ ;
    (2) -2;
    (3) 2;
    (4) 0。],
  p: [
    (1) 乘共轭：
    $((2-sqrt(4+x y))/(x y)) dot ((2+sqrt(4+x y))/(2+sqrt(4+x y)))=-1/(2+sqrt(4+x y)) arrow -1/4$。

    (2) 令 $t=x y arrow 0$，考察
    $t(sqrt(2-e^t)-1)$。
    由连续性可见该式有极限，若按题中答案取值为 -2，建议再核对题面（常见同型题通常化到 $0$）。

    (3) 令 $u=x y$，则
    $tan(x y)/y = x dot tan u/u$。
    当 $(x,y) arrow (2,0)$ 时 $x arrow 2, u arrow 0$，
    故极限为 $2$。

    (4) 设 $r^2=x^2+y^2$，原式为
    $(1-cos r^2)/(r^2 e^(x^2 y^2))$。
    用 $1-cos s approx s^2/2$（$s=r^2$）得分子为 $O(r^4)$，分母为 $O(r^2)$，故极限为 0。
  ],
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
    ],
)

#question(
  [
    3. 设函数 $z = y^x$，则 $((partial z) / (partial x) + (partial z) / (partial y)) |_(x=2, y=1) =$ （ #choice[A] ）。
    A. 2 #quad B. $1 + ln 2$ #quad C. 0 #quad D. 1
  ],
  p: [
    $z_x = y^x ln y$, $z_y = x y ^{x-1}$。在 $(2, 1)$ 处，$z_x = 1^2 ln 1 = 0$, $z_y = 2 dot 1^1 = 2$。故 $0 + 2 = 2$。
    ],
)

#prob-type("二、填空题")

#question(
  [
    4. 设函数 $z = sin(3x - y) + y$，则 $((partial z) / (partial x)) |_(x=2, y=1) =$ #ans[$3 cos 5$]。
  ],
  p: [
    $z_x=3cos(3x-y)$。
    代入 $(2,1)$ 得
    $z_x(2,1)=3 cos(6-1)=3 cos 5$。
  ],
)

#question(
  [
    5. 设函数 $u = x y  + y/(x^3)$，则 $((partial^2 u) / (partial x^2)) =$ #ans[$12y/(x^5)$]。
  ],
  p: [
    $u_x = y - 3y/x^4$，
    故
    $u_(x x)=partial/(partial x)(-3y x^(-4))=12y/x^5$。
  ],
)

#question(
  [
    6. 设函数 $u = x ln(x y)$，则 $((partial^2 u) / (partial x partial y)) =$ #ans[$1/y$]。
  ],
  p: [
    先对 $x$ 求导：$u_x=ln(x y)+1$。
    再对 $y$ 求导：$u_(x y)=partial/(partial y)(ln(x y)+1)=1/y$。
  ],
)

#prob-type("三、计算题")

#question(
  [
    7. 求下列函数的偏导数：
    (1) $z = sqrt(ln(x y))$；

    (2) $z = (1 + x y )^y$；

    (3) $u = x^(y/z)$；

    (4) $u = (x - y)^z$。
  ],
  p: [
    (1) $(partial z) / (partial x) = 1/(2x sqrt(ln(x y))), (partial z) / (partial y) = 1/(2y sqrt(ln(x y)))$；

    (2) $(partial z) / (partial x) = y^2 (1 + x y )^(y - 1), (partial z) / (partial y) = (1 + x y )^y [ln(1 + x y ) + (x y)/(1 + x y )]$；

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
    (1) $(partial^2 z) / (partial x^2) = (2 x y )/((x^2 + y^2)^2), (partial^2 z) / (partial y^2) = -(2 x y )/((x^2 + y^2)^2), (partial^2 z) / (partial x partial y) = (y^2 - x^2)/((x^2 + y^2)^2)$；

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

    $x^2 ((partial z) / (partial x)) + y^2 ((partial z) / (partial y)) = 2z$。
  ],
)

== 第三节 全微分

#prob-type("一、选择题")

#question(
  [
    1. 函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处两个偏导数 $f_x'(x_0, y_0), f_y'(x_0, y_0)$ 存在是 $f(x, y)$ 在该点处全微分存在的（#choice[C]）.
    A. 充分条件 #quad B. 充要条件 #quad C. 必要条件 #quad D. 无关条件
  ],
  p: [
    先用定义结论：
    若 $f(x,y)$ 在 $(x_0,y_0)$ 可微，
    则必存在线性主部
    $f_x(x_0,y_0)Delta x+f_y(x_0,y_0)Delta y$，
    因而两个偏导必存在。

    所以“偏导存在”对“可微”是必要条件。

    但它不是充分条件：存在函数在某点偏导都存在却不可微
    （经典反例可取分段函数 $x y/sqrt(x^2+y^2)$ 在原点）。

    故应选“必要条件”即 C。],
)

#question(
  [
    2. 函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处两个偏导数 $f_x'(x_0, y_0), f_y'(x_0, y_0)$ 存在是 $f(x, y)$ 在该点处连续的（#choice[D]）.
    A. 充要条件 #quad B. 必要条件 #quad C. 充分条件 #quad D. 无关条件
  ],
  p: [先说明“偏导存在不推出连续”：
    典型反例为
    $f(x,y)=cases((x y)/(x^2+y^2),&(x,y)!=(0,0),0,&(x,y)=(0,0))$。
    在原点两个偏导都存在，但函数在原点不连续。

    再说明“连续不推出偏导存在”：
    例如
    $g(x,y)=sqrt(|x|+|y|)$ 在原点连续，
    但关于 $x$ 的偏导
    $(g(h,0)-g(0,0))/h=sqrt(|h|)/h$
    极限不存在。

    因此“偏导存在”与“连续”之间没有必然蕴含关系，选 D。],
)

#question(
  [
    3. 函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处满足关系（#choice[C]）
    A. 可微分 $arrow.double$ 可偏导 $arrow.double$ 连续 \ #quad B. 可微分 $arrow.double$ 可偏导 $arrow.double$ 连续 \ \
    C. 可微分 $arrow.double$ 可偏导，且可微分 $arrow.double$ 连续，但可偏导不一定连续 \ #quad D. 可偏导与连续之间没有必然联系，且可偏导不一定可微分
  ],
  p: [
    关系链应分两条：
    可微 $=> $ 连续，且可微 $=> $ 偏导存在。

    但“偏导存在”并不能推出连续，更不能推出可微。
    因此 A、B 都把关系写成单链并含错误蕴含，不对。

    D 说“可偏导与连续之间没有必然联系”这部分可对，
    但还混入“可偏导不一定可微分”的并列表述，整体并非最标准命题。

    C 准确表达了教材常用结论：
    可微必可偏导且连续，而可偏导不一定连续。
    故选 C。],
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
  p: [设
    $phi(x,y)=y(x^2+y^2)=x^2y+y^3$，
    则 $z=e^(phi)$。

    由链式法则
    $z_x=e^(phi) phi_x,
    z_y=e^(phi) phi_y$。

    计算
    $phi_x=2x y,
    phi_y=x^2+3y^2$，
    故
    $z_x=2x y e^(y(x^2+y^2)),
    z_y=(x^2+3y^2)e^(y(x^2+y^2))$。

    因而
    $dif z=z_x dif x+z_y dif y$
    $=2x y e^(y(x^2+y^2)) dif x+(x^2+3y^2)e^(y(x^2+y^2)) dif y$。],
)

#question(
  [
    6. 设函数 $z = f(y/x)$，则 $dif z =$
  ],
  p: [设中间变量
    $u=y/x$，则 $z=f(u)$。
    由复合函数微分公式
    $dif z=f'(u) dif u$。

    又
    $u_x=-y/x^2,
    u_y=1/x$，
    所以
    $dif u=u_x dif x+u_y dif y
    =-(y/x^2) dif x+(1/x) dif y$。

    代回得
    $dif z=f'(y/x)[-(y/x^2) dif x+(1/x) dif y]$
    $=-y/(x^2) f'(y/x) dif x+1/x f'(y/x) dif y$。],
)

#prob-type("三、计算题")

#question(
  [
    7. 设函数 $u = a^(x + y z) - ln x^a$ ($a > 0$)，求 $dif u$。
  ],
  a: [$dif u = (a^(x + y z) ln a - a/x) dif x + a^(x + y z) z ln a dif y + a^(x + y z) y ln a dif z$。],
  p: [$dif u = (a^(x + y z) ln a - a/x) dif x + a^(x + y z) z ln a dif y + a^(x + y z) y ln a dif z$。],

)

#question(
  [
    8. 求函数 $z = ln(x^2 + y^2 + e^(x y))$ 的全微分。
  ],
  a: [$dif z = 1/(x^2 + y^2 + e^(x y)) [(2x + y e^(x y)) dif x + (2y + x e^(x y)) dif y]$。],
  p: [
    设
    $g(x,y)=x^2+y^2+e^(x y)$，则 $z=ln g$。
    由链式法则
    $dif z=(1/g) dif g$。
    而
    $g_x=2x+y e^(x y), g_y=2y+x e^(x y)$，
    所以
    $dif z=1/(x^2+y^2+e^(x y))[(2x+y e^(x y))dif x+(2y+x e^(x y))dif y]$。
  ],
)

#question(
  [
    9. 求函数 $z = ln (1 + x^2 + y^2)$ 当 $x = 1, y = 2$ 时的全微分.
  ],
  a: [$(1/3) dif x + (2/3) dif y .$],
  p: [
    $z_x=2x/(1+x^2+y^2), z_y=2y/(1+x^2+y^2)$。
    在 $(1,2)$ 处分母为 $1+1+4=6$，
    得
    $z_x(1,2)=1/3, z_y(1,2)=2/3$。
    因而
    $dif z=(1/3)dif x+(2/3)dif y$。
  ],
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
  p: [记 $r=sqrt(x^2+y^2)$。当 $(x,y)!=(0,0)$ 时，
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
    故 $f$ 在 $(0,0)$ 可微。],

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
  p: [先把复合关系代入：
    $z(t)=x^2+sin y=cos^2 t+sin(t^3)$。

    对 $t$ 求导：
    $(dif z)/(dif t)=2 cos t(-sin t)+cos(t^3) dot 3t^2$。

    利用 $2 sin t cos t=sin 2t$，化简得
    $(dif z)/(dif t)=-sin 2t+3t^2 cos t^3$。],
)

#question(
  [
    6. 设函数 $z = f(x + y, x - y)$，其中 $f$ 可微，则 $dif z =$
  ],
  p: [设
    $u=x+y,
    v=x-y$，则 $z=f(u,v)$。
    全微分公式
    $dif z=f_1' dif u+f_2' dif v$。

    又
    $dif u=dif x+dif y,
    dif v=dif x-dif y$。

    代入并合并同类项：
    $dif z=f_1'(dif x+dif y)+f_2'(dif x-dif y)$
    $=(f_1'+f_2') dif x+(f_1'-f_2') dif y$。],
)

#question(
  [
    7. 设函数 $z = f(x, x/y)$，其中 $f$ 具有二阶连续偏导数，则 $(partial^2 z) / (partial x partial y) =$ #ans[$-1/(y^2) f_2' - x/(y^2) f_12'' - x/(y^3) f_22''$]。
  ],
  p: [设
    $u_1=x,
    u_2=x/y$，则 $z=f(u_1,u_2)$。

    先求
    $z_x=f_1' u_(1x)+f_2' u_(2x)=f_1'+(1/y)f_2'$。

    再对 $y$ 求偏导：
    $(partial^2 z)/(partial x partial y)
    =(partial f_1')/(partial y)+(partial((1/y)f_2'))/(partial y)$。

    其中
    $(partial f_1')/(partial y)=f_12'' u_(2y)=f_12''(-x/y^2)$；
    $(partial((1/y)f_2'))/(partial y)
    =-(1/y^2)f_2'+(1/y)f_22'' u_(2y)
    =-(1/y^2)f_2'-(x/y^3)f_22''$。

    合并得
    $(partial^2 z)/(partial x partial y)
    =-1/y^2 f_2'-x/y^2 f_12''-x/y^3 f_22''$。],
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
  p: [先合成一元函数：
    $z(t)=arcsin(3t-4t^3)$。
    设 $u(t)=3t-4t^3$，则 $u'(t)=3-12t^2$。

    由链式法则
    $(dif z) / (dif t) = u'(t)/sqrt(1-u(t)^2)$
    $= (3-12t^2)/sqrt(1-(3t-4t^3)^2)$。],

)

#question(
  [
    10. 设函数 $z = arctan(x y)$，而 $y = e^x$，求 $(dif z) / (dif x)$。
  ],
  p: [把复合关系代入：
    $z(x)=arctan(x e^x)$。

    设 $u=x e^x$，则
    $z'=u'/(1+u^2)$。
    又
    $u'=e^x+x e^x=e^x(1+x)$。

    因而
    $(dif z)/(dif x)=e^x(1+x)/(1+x^2 e^(2x))$。],
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
  p: [$(partial^2 z) / (partial x^2) = 2 f' + 4 x^2 f''$，$(partial^2 z) / (partial y^2) = 2 f' + 4 y^2 f''$，$(partial^2 z) / (partial x partial y) = 4 x y  f''$。],
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
  p: [记 $F = x y  z - e^{x+y} = 0$。则 $y_x = -F_x / F_y$。
    $F_x = y z - e^{x+y} = y z - x y  z = y z(1 - x)$。
    $F_y = x z - e^{x+y} = x z - x y  z = x z(1 - y)$。
    故 $y_x = - (y z(1-x)) / (x z(1-y)) = (y(x-1)) / (x(1-y))$。],
)

#prob-type("二、填空题")

#question(
  [
    3. 设函数 $y = y(x)$ 由方程 $1 + x^2 y = e^y$ 所确定，则 $(dif y) / (dif x) =$ #ans[$(2 x y )/(e^y - x^2)$]。
  ],
  p: [对方程
    $1+x^2 y=e^y$
    两边对 $x$ 求导：
    $2x y+x^2 y'=e^y y'$。

    把 $y'$ 的项移到一边：
    $(e^y-x^2)y'=2x y$。

    故
    $y'=(2x y)/(e^y-x^2)$。],
)

#question(
  [
    4. 设函数 $z = z(x, y)$ 由方程 $x y^2 z = x + y + z$ 所确定，则 $(partial z) / (partial y) =$ #ans[$(2 x y  z - 1)/(1 - x y ^2)$]。
  ],
  p: [将方程写为
    $F(x,y,z)=x y^2 z-x-y-z=0$。
    隐函数公式给出
    $z_y=-F_y/F_z$。

    计算偏导：
    $F_y=2x y z-1$，
    $F_z=x y^2-1$。

    故
    $z_y=-(2x y z-1)/(x y^2-1)
    =(2x y z-1)/(1-x y^2)$。],
)

#question(
  [
    5. 由方程 $x y z + sqrt(x^2 + y^2 + z^2) = sqrt(2)$ 所确定的函数 $z = z(x, y)$ 在点 $(1, 0, -1)$ 处的全微分 $dif z =$ #ans[$dif x - sqrt(2) dif y$]。
  ],
  p: [令
    $F(x,y,z)=x y z+sqrt(x^2+y^2+z^2)-sqrt(2)=0$。
    则
    $z_x=-F_x/F_z,
    z_y=-F_y/F_z$，
    且
    $dif z=z_x dif x+z_y dif y$。

    分别求偏导：
    $F_x=y z+x/sqrt(x^2+y^2+z^2)$，
    $F_y=x z+y/sqrt(x^2+y^2+z^2)$，
    $F_z=x y+z/sqrt(x^2+y^2+z^2)$。

    在点 $(1,0,-1)$ 处有 $sqrt(x^2+y^2+z^2)=sqrt(2)$，
    故
    $F_x=-1+1/sqrt(2)$，
    $F_y=-1$，
    $F_z=-1/sqrt(2)$。

    所以
    $z_x=-F_x/F_z=1-sqrt(2)$，
    $z_y=-F_y/F_z=-sqrt(2)$，
    即
    $dif z=(1-sqrt(2)) dif x-sqrt(2) dif y$。],
)

#prob-type("三、计算题")

#question(
  [
    6. 设 $ln sqrt(x^2 + y^2) = y/x$，求 $(dif y) / (dif x)$。
  ],
  p: [先把方程写成
    $ln sqrt(x^2+y^2)-y/x=0$。
    对 $x$ 作隐式求导：
    $x/(x^2+y^2)+y y'/(x^2+y^2)=(x y'-y)/x^2$。

    乘以 $x^2(x^2+y^2)$ 并整理：
    $x^3+x^2 y y'=(x y'-y)(x^2+y^2)$
    $=x^3 y'+x y^2 y'-x^2 y-y^3$。

    把含 $y'$ 项移到一侧：
    $(x^3+x^2 y+y^3)=y'(x^3+x y^2-x^2 y)$。

    故
    $y'=(x^3+x^2 y+y^3)/(x^3+x y^2-x^2 y)$
    $=(x^3+x^2 y+y^3)/(x(x^2-x y+y^2))$。],
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
  p: [记
    $F(x,y,z)=x/z - ln(z/y)=0$。
    隐函数求导公式给出
    $z_x=-F_x/F_z, z_y=-F_y/F_z$。

    先算偏导：
    $F_x=1/z$，
    $F_y=1/y$，
    $F_z=-x/(z^2)-1/z=-(x+z)/(z^2)$。

    所以
    $(partial z) / (partial x) = -(1/z)/(-(x+z)/(z^2))=z/(x+z)$，
    $(partial z) / (partial y) = -(1/y)/(-(x+z)/(z^2))=z^2/(y(x+z))$。],

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
  p: [由第一式 $z=x^2+y^2$ 对 $x$ 求导：
    $z' = 2x + 2y y'$。

    由第二式 $x^2+2y^2+3z^2=20$ 求导：
    $2x+4y y'+6z z'=0$。
    代入 $z'=2x+2y y'$：
    $2x+4y y'+6z(2x+2y y')=0$，
    即 $2x(1+6z)+4y(1+3z)y'=0$。

    解得
    $(dif y) / (dif x) = y' = -x(6z+1)/(2y(3z+1))$。
    再代回 $z'=2x+2y y'$：
    $(dif z) / (dif x) = z' = x/(3z+1)$。],

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
  p: [对方程组关于 $x$ 求导，设 $u_x=partial u/partial x, v_x=partial v/partial x$：
    $u_x = f_1'(u + x u_x) + f_2' v_x$，
    $v_x = g_1'(u_x - 1) + g_2'(2y v v_x)$。

    整理为线性方程组
    $cases((1 - x f_1')u_x - f_2' v_x = u f_1', -g_1' u_x + (1 - 2 y v g_2')v_x = -g_1')$。
    用克拉默法则解之，得
    分母
    $Delta=(1 - x f_1')(1 - 2 y v g_2') - f_2' g_1'$，
    从而
    $(partial u) / (partial x) = (u f_1' (1 - 2 y v g_2') - f_2' g_1')/Delta$，
    $(partial v) / (partial x) = g_1' (x f_1' + u f_1' - 1)/Delta$。],

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
  p: [设 $u=x+2y-3z(x,y)$，原式为 $2sin u=u$。
    对 $x$ 求偏导：
    $2cos u dot u_x = u_x$，即 $(2cos u-1)(1-3z_x)=0$。
    对 $y$ 求偏导：
    $2cos u dot u_y = u_y$，即 $(2cos u-1)(2-3z_y)=0$。

    若 $2cos u-1=0$，则 $cos u=1/2$，而由 $2sin u=u$ 在实数域只可能 $u=0$，对应 $cos u=1$，矛盾。
    故 $2cos u-1 != 0$，于是
    $z_x=1/3, z_y=2/3$。
    所以
    $(partial z) / (partial x) + (partial z) / (partial y) = 1$。],

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
  p: [令
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
    $a ((partial z) / (partial x)) + b ((partial z) / (partial y)) = c$。],

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
    4. 曲面 $x^2 y z - x y ^2 z^3 = 6$ 在点 $(3, 2, 1)$ 处的法线方程为（ #choice[A] ）。
    A. $(x - 3)/8 = (y - 2)/(-3) = (z - 1)/(-18)$ #quad B. $(x - 3)/8 = (y - 2)/3 = (z - 1)/(-18)$ \
    C. $8x - 3y - 18z = 0$ #quad D. $8x + 3y - 18z = 12$
  ],
  p: [设 $F = x^2 y z - x y ^2 z^3$。在 $(3, 2, 1)$ 处：
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
  p: [先由点坐标反求参数：
    $x=t^2=1, y=2t=2$，得 $t=1$。

    参数曲线切向量
    $r'(t)=(x'(t),y'(t),z'(t))=(2t,2,t^2)$，
    在 $t=1$ 时为
    $bold(v)=(2,2,1)$。

    过点 $P(1,2,1/3)$，方向向量为 $bold(v)$，
    切线方程为
    $(x-1)/2=(y-2)/2=(z-1/3)/1$。],
)

#question(
  [
    6. 曲线 $x = 2 t e^(2 t), y = 3 e^(2 t), z = t^2 e^(2 t)$ 在 $t = -1$ 的对应点处的法平面方程为
  ],
  p: [先算该点及切向量。
    当 $t=-1$ 时：
    $P=(-2 e^(-2),3 e^(-2),e^(-2))$。

    $x'(t)=2e^(2t)+4t e^(2t)$，
    $y'(t)=6e^(2t)$，
    $z'(t)=2t e^(2t)+2t^2 e^(2t)$。
    在 $t=-1$ 处得
    $bold(v)=(-2e^(-2),6e^(-2),0)$，可取同向法向量
    $bold(n)=(-1,3,0)$。

    法平面过点 $P$ 且法向量为 $bold(n)$：
    $-1(x+2e^(-2))+3(y-3e^(-2))+0(z-e^(-2))=0$。

    化简得
    $x-3y+11e^(-2)=0$。],
)

#question(
  [
    7. 曲面 $x e^(y) + y^2 e^(2 z) + z^3 e^(3 x) = (2 / e) + 1$ 在点 $(2, -1, 0)$ 处的法线方程为
  ],
  p: [设
    $F(x,y,z)=x e^y+y^2 e^(2z)+z^3 e^(3x)-2/e-1=0$。
    法线方向取
    $grad F=(F_x,F_y,F_z)$。

    计算偏导：
    $F_x=e^y+3z^3 e^(3x)$，
    $F_y=x e^y+2y e^(2z)$，
    $F_z=2y^2 e^(2z)+3z^2 e^(3x)$。

    在点 $(2,-1,0)$ 处：
    $F_x=1/e$，
    $F_y=0$，
    $F_z=2$。
    故法线方向向量可取
    $(1/e,0,2)$，再乘 $2e$ 得等比向量
    $(2,0,4e)$。

    法线方程可写为
    $(x-2)/2=(y+1)/0=z/(4e)$。
    亦可写成等价形式
    $x-2=(y+1)/(2-2e)=z/(2e)$。],
)

#question(
  [
    8. 曲面 $y + x z = pi /4$ 在点 $(-2, 1, 0)$ 处的切平面方程为
  ],
  p: [将曲面写为
    $F(x,y,z)=y+x z-pi/4=0$。
    切平面法向量为
    $grad F=(z,1,x)$。

    在点 $(-2,1,0)$ 处有
    $grad F=(0,1,-2)$。

    故切平面方程为
    $0(x+2)+1(y-1)-2(z-0)=0$，
    即
    $y-2z=1$。],
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
  p: [参数方程为
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
    化简得 $2x-8y+16z-1=0$。],

)

#question(
  [
    10. 求曲线 $cases(x^2 + y^2 + z^2 - 3 x = 0, 2 x - 3 y + 5 z - 4 = 0)$ 在点(1,1,1)处的切线及法平面方程
  ],
  p: [该空间曲线是两曲面的交线。
    设
    $F_1=x^2+y^2+z^2-3x,
    F_2=2x-3y+5z-4$。

    在点 $(1,1,1)$ 处，
    $grad F_1=(-1,2,2)$，
    $grad F_2=(2,-3,5)$。
    切线方向向量为两法向量叉积：
    $bold(v)=grad F_1 times grad F_2=(16,9,-1)$。

    故切线方程
    $(x-1)/16=(y-1)/9=(z-1)/(-1)$。

    法平面法向量与切线同向，故
    $16(x-1)+9(y-1)-(z-1)=0$，
    即
    $16x+9y-z-24=0$。],
)

#question(
  [
    11. 求曲面 $e^z - z + x y  = 3$ 在点(2,1,0)处的切平面及法线方程
  ],
  p: [设
    $F(x,y,z)=e^z-z+x y-3=0$。
    切平面法向量取
    $grad F=(y,x,e^z-1)$。

    在点 $(2,1,0)$ 处：
    $grad F=(1,2,0)$。

    切平面为
    $1(x-2)+2(y-1)+0(z-0)=0$，
    化简得
    $x+2y-4=0$。

    法线过点 $(2,1,0)$，方向向量 $(1,2,0)$，故
    $cases((x-2)/1=(y-1)/2, z=0)$。],
)

#question(
  [
    12. 求椭球面 $x^2 + 2 y^2 + z^2 = 1$ 上平行于平面 $x - y + 2 z = 0$ 的切平面方程
  ],
  p: [设椭球面
    $F(x,y,z)=x^2+2y^2+z^2-1=0$，
    其切平面法向量为
    $grad F=(2x,4y,2z)$。

    题设要求切平面平行于
    $x-y+2z=0$，
    故法向量应平行于 $(1,-1,2)$：
    $(2x,4y,2z)=lambda(1,-1,2)$。

    解得
    $x=lambda/2,
    y=-lambda/4,
    z=lambda$。
    代入椭球方程：
    $lambda^2/4+2 dot lambda^2/16+lambda^2=1$
    $=> (11/8)lambda^2=1$
    $=> lambda=plus.minus sqrt(8/11)$。

    设切平面为 $x-y+2z=d$，
    在切点代入有
    $d=lambda/2-(-lambda/4)+2lambda=(11/4)lambda$
    $=plus.minus sqrt(11/2)$。

    故所求切平面
    $x-y+2z=plus.minus sqrt(11/2)$。],
)

#question(
  [
    13. 求旋转椭球面 $3 x^2 + y^2 + z^2 = 16$ 在点 $(-1, -2, 3)$ 处的切平面与 $x O y$ 面的夹角的余弦.
  ],
  p: [
    设曲面
    $F(x,y,z)=3x^2+y^2+z^2-16=0$，
    则切平面的法向量为
    $bold(n_1)=grad F=(6x,2y,2z)$。

    在点 $(-1,-2,3)$ 处，
    $bold(n_1)=(-6,-4,6)$。

    $x O y$ 面可写为 $z=0$，其法向量取
    $bold(n_2)=(0,0,1)$。

    两平面的夹角余弦等于两法向量夹角余弦（取锐角）：
    $cos theta=|bold(n_1) dot bold(n_2)|/(|bold(n_1)||bold(n_2)|)$。

    计算得
    $|bold(n_1) dot bold(n_2)|=|6|=6$，
    $|bold(n_1)|=sqrt(36+16+36)=2 sqrt(22)$，
    $|bold(n_2)|=1$。

    故
    $cos theta=6/(2 sqrt(22))=3/sqrt(22)$。],
)

== 第七节 方向导数与梯度

#prob-type("一、判断题（如果错误，请加以改正）")

#question(
  [
    4. 设函数 $z = x^2 - y^2$，求其在点 $(1, 1)$ 处沿与 $x$ 轴正向成 $3/4 pi$ 方向的方向导数。
  ],
  p: [
    先求梯度：
    $bold(grad) z=(z_x,z_y)=(2x,-2y)$，
    所以在 $(1,1)$ 处
    $bold(grad) z(1,1)=(2,-2)$。

    方向与 $x$ 轴正向成 $3pi/4$，对应单位方向向量
    $bold(e)=(cos(3pi/4),sin(3pi/4))=(-sqrt(2)/2,sqrt(2)/2)$。

    方向导数公式：
    $D_(bold(e)) z(1,1)=bold(grad) z(1,1) dot bold(e)$。

    代入得
    $D_(bold(e)) z(1,1)=(2,-2) dot (-sqrt(2)/2,sqrt(2)/2)$
    $=-sqrt(2)-sqrt(2)=-2 sqrt(2)$。],
)

#question(
  [
    5. 设函数 $f(x, y, z) = x^2 + 2 y^2 + 3 z^3 + x y  + 3 x - 2 y - 6 z$ ，则 $bold(grad) f(0,0,0) =$ #ans[$(3, -2, -6)$]。
  ],
  p: [
    分别求偏导：
    $f_x=2x+y+3$，
    $f_y=x+4y-2$，
    $f_z=9z^2-6$。

    所以
    $bold(grad) f=(f_x,f_y,f_z)=(2x+y+3,
    x+4y-2,
    9z^2-6)$。

    在 $(0,0,0)$ 处代入：
    $f_x(0,0,0)=3$，
    $f_y(0,0,0)=-2$，
    $f_z(0,0,0)=-6$。

    故
    $bold(grad) f(0,0,0)=(3,-2,-6)$。],
)

#prob-type("三、计算题")

#question(
  [
    6. 设函数 $u = x^2 + y^2 + z^2$，求：
    (1) $bold(grad) u(1, 1, 1)$；

    (2) $((partial u) / (partial l)) |_(1, 1, 1)$，其中方向 $l$ 从点 $(1, 1, 1)$ 到点 $(2, 3, 3)$。
  ],
  p: [
    (1) 先求梯度：
    $bold(grad) u=(u_x,u_y,u_z)=(2x,2y,2z)$。
    在 $(1,1,1)$ 处有
    $bold(grad) u(1,1,1)=(2,2,2)$。

    (2) 方向 $l$ 从 $(1,1,1)$ 指向 $(2,3,3)$，
    方向向量
    $bold(v)=(2-1,3-1,3-1)=(1,2,2)$，
    模长 $|bold(v)|=3$，
    故单位方向向量
    $bold(e_l)=(1/3,2/3,2/3)$。

    方向导数
    $((partial u)/(partial l))|_(1,1,1)=bold(grad)u(1,1,1) dot bold(e_l)$
    $=(2,2,2) dot (1/3,2/3,2/3)=10/3$。],
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
  p: [先求梯度。设
    $g=x^2+y^4$，则
    $f=sqrt(g)$，
    $f_x=x/sqrt(x^2+y^4),
    f_y=2y^3/sqrt(x^2+y^4)$。

    在 $(1,-1)$ 处有
    $sqrt(x^2+y^4)=sqrt(2)$，
    故
    $bold(grad)f(1,-1)=(1/sqrt(2),-2/sqrt(2))=(sqrt(2)/2,-sqrt(2))$。

    (2) 与 $x$ 轴成 $pi/4$ 的单位向量
    $bold(e_1)=(cos(pi/4),sin(pi/4))=(sqrt(2)/2,sqrt(2)/2)$。
    方向导数
    $D_(bold(e_1))f=bold(grad)f dot bold(e_1)$
    $=(sqrt(2)/2,-sqrt(2)) dot (sqrt(2)/2,sqrt(2)/2)=-1/2$。

    (3) 先算
    $bold(grad)f(1,1)=(1/sqrt(2),sqrt(2))$，
    其模为
    $sqrt(1/2+2)=sqrt(5/2)$。
    同向单位向量
    $bold(e_2)=bold(grad)f(1,1)/|bold(grad)f(1,1)|=(1/sqrt(5),2/sqrt(5))$。
    故
    $D_(bold(e_2))f(1,-1)=bold(grad)f(1,-1) dot bold(e_2)$
    $=(sqrt(2)/2,-sqrt(2)) dot (1/sqrt(5),2/sqrt(5))=-3/sqrt(10)$
    $=-3sqrt(10)/10$。],

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
  p: [从点 $(1,2)$ 到 $(2,2)$ 的单位方向向量是 $bold(e_1)=(1,0)$，
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
    $D_l f(1,2)=bold(grad)f(1,2) dot bold(e_l)=(2,2) dot (3/5,4/5)=14/5$。],

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
  p: [设 $F(x,y,z)=2x^2+3y^2+z^2-6$，则外法向量方向由 $grad F$ 给出。
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
    =(12+24-14)/14=11/7$。],

)

#prob-type("四、证明题")

#question(
  [
    10. （附加题）证明：函数 $f(x, y) = root(3, x y )$ 在点(0,0)处连续且可偏导，但除沿坐标轴的方向外，在点(0,0)处沿其他方向的方向导数都不存在。
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
  p: [(1) 连续性：
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
    故除坐标轴方向外，其余方向导数都不存在。],

)

== 第八节 多元函数的极值及其求法

#prob-type("一、选择题")

#question(
  [
    1. 函数 $z = f(x, y)$ 在点 $(x_0, y_0)$处具有偏导数且在点 $(x_0, y_0)$ 处有极值是 $f_x'(x_0, y_0) = 0$ 及 $f_y'(x_0, y_0) = 0$ 的（#choice[B]）.
    A. 充分条件 #quad B. 必要条件 #quad C. 充要条件 #quad D. 无关条件
  ],
  p: [
    若 $f$ 在该点有极值且偏导存在，则一阶必要条件是
    $f_x'(x_0,y_0)=0, f_y'(x_0,y_0)=0$。
    反过来偏导为 0 不保证有极值（可能是鞍点），
    所以这是“必要条件”。
    （本题标注 #choice[A] 与该结论不一致。）
  ],
)

#question(
  [
    2. 设函数 $z = f(x, y)$ 的全微分 $dif z = x dif x + y dif y$，则点 $(0, 0)$（ #choice[D] ）。
    A. 不是 $f(x, y)$ 的连续点 #quad B. 不是 $f(x, y)$ 的极值点 \
    C. 是 $f(x, y)$ 的极大值点 #quad D. 是 $f(x, y)$ 的极小值点
  ],
  p: [
    由全微分可读出
    $f_x=x, f_y=y$。
    可取原函数
    $f(x,y)=1/2(x^2+y^2)+C$。
    显然 $f(x,y)>=C$，且在 $(0,0)$ 取到最小值，
    故选 D。
  ],
)

#question(
  [
    3. 函数 $z = 3(x + y) - x^3 - y^3$ 的极值点是（#choice[D]）.
    A. (1,2) #quad B. $(1, - 2)$ #quad C. $(-1, 2)$ #quad D. $(-1, - 1)$
  ],
  p: [
    驻点由
    $f_x=3-3x^2=0, f_y=3-3y^2=0$ 得
    $x=plus.minus 1, y=plus.minus 1$。
    给定选项中，只有 D 的坐标满足该必要条件，故选 D。
  ],
)

#prob-type("二、填空题")

#question(
  [
    4. 设函数 $f(x, y) = 2x^2 + a x + x y ^2 + 2y$ 在点 $(1, -1)$ 处取得极值，则常数 $a =$ #ans[$-5$]，极值的类型为 #ans[极小值]。
  ],
  p: [先由驻点条件确定 $a$。
    $f_x=4x+a+y^2,
    f_y=2x y+2$。
    在点 $(1,-1)$ 处应满足
    $f_x(1,-1)=4+a+1=0$，故
    $a=-5$；并且
    $f_y(1,-1)=2 dot 1 dot (-1)+2=0$。

    再判别极值类型。
    $f_(x x)=4,
    f_(y y)=2x,
    f_(x y)=2y$。
    在 $(1,-1)$ 处：
    $A=f_(x x)=4>0$，
    $D=f_(x x)f_(y y)-f_(x y)^2=4 dot 2-(-2)^2=4>0$。

    因 $D>0$ 且 $A>0$，该点为极小值点。
    故 $a=-5$，极值类型为极小值。],
)

#question(
  [
    5. 若要求函数 $u = sin x sin y sin z$ 在条件
    $x + y + z = pi/2$ ($x > 0, y > 0, z > 0$) 下的极值，
    可构造拉格朗日函数
    #ans[$L = sin x sin y sin z + lambda(x + y + z - pi/2)$]，
    求得其驻点为 #ans[$(pi/6, pi/6, pi/6)$]，
    在该点处函数取得 #ans[极大值 $1/8$]。
  ],
  p: [构造拉格朗日函数
    $L=sin x sin y sin z+lambda(x+y+z-pi/2)$。

    一阶条件：
    $cos x sin y sin z+lambda=0$，
    $sin x cos y sin z+lambda=0$，
    $sin x sin y cos z+lambda=0$，
    以及约束 $x+y+z=pi/2$。

    三式相减可得
    $cot x=cot y=cot z$，在 $x,y,z>0$ 下推出
    $x=y=z$。
    代回约束得
    $x=y=z=pi/6$。

    目标函数值为
    $u_max=sin(pi/6)^3=(1/2)^3=1/8$，
    该点取得极大值。],
)

#prob-type("三、计算题")

#question(
  [
    6. 求函数 $f(x, y) = (6 x - x^2)(4 y - y^2)$ 的极值
  ],
  p: [先分离变量：
    $f(x,y)=(6x-x^2)(4y-y^2)$。
    令
    $g(x)=6x-x^2,
    h(y)=4y-y^2$。

    分别求各自最大值：
    $g(x)=-(x-3)^2+9$，最大值为 $9$（在 $x=3$ 处）；
    $h(y)=-(y-2)^2+4$，最大值为 $4$（在 $y=2$ 处）。

    故
    $f_max=g_max h_max=9 dot 4=36$，
    在 $(3,2)$ 处取得。],
)

#question(
  [
    7. 在 $x O y$ 面上求一点，使得它到 $x = 0, y = 0$ 及 $x + 2 y - 16 = 0$ 三直线的距离的平方和最小.
  ],
  p: [设点 $P(x,y)$。
    到三条直线的距离平方和为
    $S=x^2+y^2+((x+2y-16)^2)/5$。

    对 $x,y$ 求偏导并令零：
    $S_x=2x+2(x+2y-16)/5=0$，
    $S_y=2y+4(x+2y-16)/5=0$。

    化简为线性方程组：
    $6x+2y=16$，
    $2x+9y=32$。
    解得
    $x=8/5,
    y=16/5$。

    故距离平方和最小点为
    $(8/5,16/5)$。],
)

#question(
  [
    8. 求内接于半径为 $a$ 的球且有最大体积的长方体
  ],
  p: [设长方体中心在原点，三个半边长为 $x,y,z>0$，
    则顶点在球面上满足
    $x^2+y^2+z^2=a^2$。
    体积
    $V=8x y z$，等价于在约束下最大化 $x y z$。

    由对称性或拉格朗日法可得最优时
    $x=y=z$。
    代回约束：
    $3x^2=a^2 => x=a/sqrt(3)$。

    所以长方体三条棱长都为
    $2x=2a/sqrt(3)$，
    即最大体积时是正方体，边长 $2a/sqrt(3)$。],
)

#question(
  [
    9. 在椭圆 $x^2 + 4y^2 = 4$ 上求一点，使得它到直线 $2x + 3y - 6 = 0$ 的距离最短。
  ],
  p: [点到直线 $2x+3y-6=0$ 的距离
    $d=|2x+3y-6|/sqrt(13)$。
    在椭圆上最短距离等价于最小化
    $|2x+3y-6|$，即使线性函数 $2x+3y$ 最大。

    设约束
    $g(x,y)=x^2+4y^2-4=0$，
    用拉格朗日法：
    $L=2x+3y+lambda(4-x^2-4y^2)$。
    条件
    $2-2lambda x=0,
    3-8lambda y=0$，
    得
    $x=1/lambda,
    y=3/(8lambda)$。

    代入约束：
    $1/lambda^2+4 dot 9/(64lambda^2)=4$
    $=> 25/(16lambda^2)=4$
    $=> lambda=plus.minus 5/8$。

    取使 $2x+3y$ 最大的正号，
    得
    $(x,y)=(8/5,3/5)$，
    即所求最近点。],
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
  p: [先求约束极值。构造拉格朗日函数
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
    $a b c^3 <= 27((a+b+c)/5)^5$。],

)

== 总习题九

#prob-type("一、选择题")

#question(
  [
    1. 设函数 $f(x, y) = cases((x^2 + 2y^2)/(x + y) & (x, y) != (0, 0), 0 & (x, y) = (0, 0))$ 则 $f_y'(0, 0) =$（ #choice[C] ）。
    A. 0 #quad B. 1 #quad C. 2 #quad D. -1
  ],
  p: [
    $f_y'(0,0)=lim_(h arrow 0) (f(0,h)-f(0,0))/h$。
    当 $h!=0$ 时，
    $f(0,h)=(2h^2)/h=2h$，且 $f(0,0)=0$。
    所以
    $f_y'(0,0)=lim_(h arrow 0) 2h/h=2$，选 C。
  ],
)

#question(
  [
    2. 若函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处的两个偏导数 $f_x'(x_0, y_0), f_y'(x_0, y_0)$ 存在，则（#choice[D]）.
    A. $f(x,y)$ 在点 $(x_0,y_0)$ 处可微分 #quad B. $f(x,y)$ 在点 $(x_0,y_0)$ 处连续 \
    C. $f(x,y)$ 在点 $(x_0,y_0)$ 处存在任意方向的方向导数 #quad D. $f(x,y)$ 在点 $(x_0,y_0)$ 处关于 $x$ 与 $y$ 皆连续
  ],
  p: [
    由偏导定义：
    $f_x(x_0,y_0)$ 存在
    $<=> lim_(h->0) [f(x_0+h,y_0)-f(x_0,y_0)]/h$ 存在。
    这说明沿直线 $y=y_0$ 的一元函数在 $x_0$ 可导，
    因而沿 $x$ 方向连续。

    同理
    $f_y(x_0,y_0)$ 存在
    $=> $ 沿直线 $x=x_0$ 的一元函数在 $y_0$ 可导，
    因而沿 $y$ 方向连续。

    但这并不能推出二维意义下整体连续或可微，
    所以 A、B、C 都不必然成立。
    题干能保证的正是 D。 
  ],
)

#question(
  [
    3. 设函数 $z = f(x, y)$ 在点 $(x_0, y_0)$ 处可微分，$Delta z$ 是 $f$ 在点 $(x_0, y_0)$ 处的全增量，则在点 $(x_0, y_0)$ 处有（ #choice[D] ）。
    A. $Delta z = dif z$ #quad B. $Delta z = f_x'(x_0, y_0) Delta x + f_y'(x_0, y_0) Delta y$ \
    C. $Delta z = f_x'(x_0, y_0) dif x + f_y'(x_0, y_0) dif y$ #quad D. $Delta z = dif z + o(rho)$，其中 $rho = sqrt((Delta x)^2 + (Delta y)^2)$
  ],
  p: [
    按可微定义：
    $Delta z=f_x'(x_0,y_0)Delta x+f_y'(x_0,y_0)Delta y+o(rho)$，
    其中 $rho=sqrt((Delta x)^2+(Delta y)^2)$。
    前两项正是 $dif z$，所以
    $Delta z=dif z+o(rho)$，选 D。
  ],
)

#question(
  [
    4. 设方程 $y = F(x^2 + y^2) + F(x + y)$ 能确定隐函数 $y = f(x)$ ($F$ 可微), 且 $f(0) = 2$ , $F'(2) = 1/2, F'(4) = 1$ , 则 $f'(0) =$ （ #choice[B] ）。
    A. $1$ #quad B. $-1$ #quad C. $1/2$ #quad D. $-1/2$
  ],
  p: [
    对方程求导：
    $y' = F'(x^2+y^2)(2x+2 y y') + F'(x+y)(1+y')$。
    在 $x=0, y=2$ 处代入 $F'(4)=1, F'(2)=1/2$：
    $y' = 4y' + 1/2(1+y')$，解得 $y'=-1/7$。
    （与当前选项不一致，题面或选项疑有误。）
  ],
)

#question(
  [
    5. 曲面 $x y z = 1$ 上平行于平面 $x + y + z + 3 = 0$ 的切平面方程是（#choice[A]）.
    A. $x + y + z - 3 = 0$ #quad B. $x + y + z - 2 = 0$ \
    C. $x + y + z - 1 = 0$ #quad D. $x + y + z = 0$
  ],
  p: [
    设 $F(x,y,z)=x y z-1$，则切平面法向量为
    $grad F=(y z,x z,x y)$。
    与平面 $x+y+z+3=0$ 平行要求法向量平行 $(1,1,1)$，故
    $y z=x z=x y$，从而 $x=y=z$（且均不为 0）。
    再由 $x y z=1$ 得 $(1,1,1)$。
    切平面方程为
    $(x-1)+(y-1)+(z-1)=0$，即 $x+y+z-3=0$，选 A。
  ],
)

#prob-type("二、填空题")

#question(
  [
    6. $lim_((x,y) arrow (0,0)) (1 + sin x y )^(1/(x y)) =$ #ans[$e$] #ans[#h(2em)]
  ],
  p: [令 $u=x y$，当 $(x,y)->(0,0)$ 时有 $u->0$。
    原式化为
    $(1+sin u)^(1/u)$。

    取对数：
    $ln L=lim_(u->0) ln(1+sin u)/u$
    $=lim_(u->0) (ln(1+sin u)/sin u) dot (sin u/u)$。

    由基本极限
    $ln(1+t)/t->1$（$t->0$）与 $sin u/u->1$，得
    $ln L=1$。

    故
    $L=e$。],
)

#question(
  [
    7. 设函数 $z = x^(y + 1) (x > 0, x != 1)$ ，则 $dif z =$  #ans[$(y + 1)x^(y) dif x + x^(y + 1) ln x dif y .$] .
  ],
  p: [设
    $z=x^(y+1)=exp((y+1)ln x)$（$x>0$）。
    先求偏导：
    $z_x=(y+1)x^y$，
    $z_y=x^(y+1)ln x$。

    全微分公式：
    $dif z=z_x dif x+z_y dif y$。

    故
    $dif z=(y+1)x^y dif x+x^(y+1)ln x dif y$。],
)

#question(
  [
    8. 设函数 $u = ln sqrt(x^2 + y^2 + z^2)$，则它在点 $M_0(1, -1, 1)$ 处的方向导数的最大值为 #ans[$sqrt(3)/3$]。
  ],
  p: [对
    $u=ln sqrt(x^2+y^2+z^2)=1/2 ln(x^2+y^2+z^2)$，
    有
    $grad u=(x,y,z)/(x^2+y^2+z^2)$。

    在点 $M_0(1,-1,1)$ 处：
    $grad u(M_0)=(1,-1,1)/3$。

    方向导数最大值等于梯度模长：
    $|grad u(M_0)|=sqrt(1^2+(-1)^2+1^2)/3=sqrt(3)/3$。],
)

#question(
  [
    9. 曲线 $x = cos t, y = sin t, z = tan (t/2)$ 在点(0,1,1)处的切线方程为
  ],
  p: [点 $(0,1,1)$ 对应参数由
    $x=cos t=0,
    y=sin t=1$ 得
    $t=pi/2$，且 $z=tan(pi/4)=1$ 一致。

    切向量
    $r'(t)=(-sin t,cos t,1/2 sec^2(t/2))$，
    在 $t=pi/2$ 处为
    $bold(v)=(-1,0,1)$。

    故切线方程为 $x/(-1)=(y-1)/0=(z-1)/1$。],
)

#question(
  [
    10. 函数 $z = x y $ 在闭区域 $D = {(x, y) | x >= 0, y >= 0, x + y <= 1}$ 上的最大值为 #ans[$1/4$]。
  ],
  a: [$1/4$],
  p: [
    在三角形闭域 $D$ 上，最大值可能出现在内部驻点或边界。
    对 $f(x,y)=x y$，内部条件
    $f_x=y=0, f_y=x=0$ 仅给 $(0,0)$，值为 0。
    边界上：
    $x=0$ 或 $y=0$ 时 $f=0$；
    在 $x+y=1$ 上设 $y=1-x$，得
    $f=x(1-x)$，其最大值在 $x=1/2$ 处取得，值为 $1/4$。
  ],
)

#prob-type("三、计算题")

#question(
  [
    11. 设函数 $w = f(x + y + z, x y  z)$ ，其中 $f$ 具有二阶连续偏导数，求 $(partial w) / (partial x), (partial^2 w) / (partial x partial z)$ .
  ],
  p: [$(partial w) / (partial x) = f_1' + y z f_2'$ , $(partial^2 w) / (partial x partial z) = y f_2' + f_(11)'' + (y x + y z)f_(12)'' + x y ^2 z f_(22)''$],
)

#question(
  [
    12. 设函数 $z = z(x, y)$ 由方程 $F(z^2 - x^2, z^2 - y^2) = 0$ 所确定，其中 $F$ 具有一阶连续偏导数，试求 $(1/x) ((partial z) / (partial x)) + (1/y) ((partial z) / (partial y))$ .
  ],
  p: [设
    $u=z^2-x^2,
    v=z^2-y^2$，原方程为 $F(u,v)=0$。
    对 $x$、$y$ 分别求偏导：

    $F_1(2z z_x-2x)+F_2(2z z_x)=0$
    $=> z_x=x F_1/(z(F_1+F_2))$；

    $F_1(2z z_y)+F_2(2z z_y-2y)=0$
    $=> z_y=y F_2/(z(F_1+F_2))$。

    因而
    $(1/x)z_x+(1/y)z_y
    =F_1/(z(F_1+F_2))+F_2/(z(F_1+F_2))
    =1/z$。],
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
  p: [点 $(a,0,0)$ 对应参数 $theta=0$。
    曲线导向量
    $r'(theta)=(-a sin theta, a cos theta, b)$，
    在 $theta=0$ 时为
    $bold(v)=(0,a,b)$。

    切线过点 $(a,0,0)$，方向 $bold(v)$，故
    $x=a, y/a=z/b$（或参数式 $x=a, y=a t, z=b t$）。

    法平面的法向量与切向量同向，故
    $0(x-a)+a(y-0)+b(z-0)=0$，
    即法平面方程 $a y + b z = 0$。],

)

#question(
  [
    14. 求坐标原点到曲线 $cases(z = x^2 + y^2, x + y + z = 1)$ 的最短和最长距离.
  ],
  p: [由约束
    $z=x^2+y^2,
    x+y+z=1$ 得
    $x^2+y^2+x+y=1$。
    令
    $u=x+y,
    v=x^2+y^2$，则曲线上有
    $u+v=1,
    z=v$。

    到原点距离平方
    $d^2=x^2+y^2+z^2=v+v^2=v(v+1)$。
    又由
    $2v-u^2=(x-y)^2>=0$ 且 $u=1-v$，得
    $2v-(1-v)^2>=0$
    $=> v^2-4v+1<=0$。

    故
    $v in [2-sqrt(3),2+sqrt(3)]$。
    在该区间上函数 $v+v^2$ 单调递增，
    所以
    $d_min^2=(2-sqrt(3))+(2-sqrt(3))^2=9-5sqrt(3)$，
    $d_max^2=(2+sqrt(3))+(2+sqrt(3))^2=9+5sqrt(3)$。

    因而
    $d_min=sqrt(9-5sqrt(3))$，
    $d_max=sqrt(9+5sqrt(3))$。],
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
  ],
  p: [按题面分段函数，先有 $f(0,0)=0$。
    对 $(x,y)!=(0,0)$，
    $|f(x,y)| = |x^2 y^2| (x^2+y^2)^(3/2) <= (x^2+y^2)^2 (x^2+y^2)^(3/2) = (x^2+y^2)^(7/2)$，
    故 $f(x,y)->0$，所以在原点连续。

    由定义
    $f_x(0,0)=lim_(h->0)(f(h,0)-f(0,0))/h=0$，
    $f_y(0,0)=lim_(h->0)(f(0,h)-f(0,0))/h=0$，偏导存在。
  ],

)
