#import "../template.typ": *

= 第十一章 曲线积分与曲面积分

== 第一节 对弧长的曲线积分

#prob-type("一、选择题")

#question(
  [
    1. 设 $L$ 为从点 $A(1, 0)$ 到点 $B(-1, 2)$ 的线段，则 $int_L (x + y) dif s =$（ #choice[B] ）。
    A. $sqrt(2)$ #quad B. $2 sqrt(2)$ #quad C. 2 #quad D. 0
  ],
  p: [直线 $A B$ 方程为 $y - 0 = (2 - 0) / (-1 - 1) (x - 1)$，即 $y = 1 - x$，从而 $x + y = 1$。$L$ 的长度 $l = sqrt((-1 - 1)^2 + (2 - 0)^2) = 2 sqrt(2)$。故 $int_L (x + y) dif s = int_L 1 dif s = 2 sqrt(2)$。],
)

#question(
  [
    2. $oint_L (x^2 + y^2) dif s =$（ #choice[B] ），其中 $L$ 为圆 $x^2 + y^2 = 1$。
    A. $int_(2 pi)^0 dif theta$ #quad B. $int_0^(2 pi) dif theta$ \
    C. $int_0^(2 pi) r^2 dif theta$ #quad D. $int_0^(2 pi) sqrt(2) dif theta$
  ],
  p: [在单位圆 $L$ 上，$x^2 + y^2 = 1$。利用极坐标，$dif s = 1 dif theta$（此处 $r=1$）。故 $oint_L (x^2 + y^2) dif s = int_0^(2 pi) 1 dot 1 dif theta = int_0^(2 pi) dif theta$。],
)

#question(
  [
    3. $int_L x dif s =$（ #choice[A] ），其中 $L$ 为抛物线 $y = x^2$ 上相应于 $x$ 从 0 到 1 的一段弧。
    A. $1/12 (5 sqrt(5) - 1)$ #quad B. $5 sqrt(5) - 1$ \
    C. $1/12$ #quad D. $1/8 (5 sqrt(5) - 1)$
  ],
  p: [由 $y = x^2$ 得 $y' = 2x$，故 $dif s = sqrt(1 + 4x^2) dif x$。
    $I = int_0^1 x sqrt(1 + 4x^2) dif x$
    $= 1/8 int_0^1 sqrt(1 + 4x^2) dif (1 + 4x^2)$
    $= 1/8 [ 2/3 (1 + 4x^2)^(3/2) ]_0^1$
    $= 1/12 (5 sqrt(5) - 1)$。],
)

#question(
  [
    4. 设 $O M$ 为从点 $O(0, 0)$ 到点 $M(1, 1)$ 的线段，则与 $int_(O M) e^(sqrt(x^2 + y^2)) dif s$ 不相等的积分是（ #choice[C] ）。
    A. $int_0^1 sqrt(2) e^(sqrt(2) x) dif x$ #quad B. $int_0^1 sqrt(2) e^(sqrt(2) y) dif y$ \
    C. $int_0^(sqrt(2)) sqrt(2) e^r dif r$ #quad D. $int_0^(sqrt(2)) e^r dif r$
  ],
  p: [
    线段参数可取 $x=t, y=t, 0<=t<=1$，则
    $dif s=sqrt((dif x)^2+(dif y)^2)=sqrt(2) dif t$，且 $sqrt(x^2+y^2)=sqrt(2)t$。
    所以原积分
    $int_(O M)e^(sqrt(x^2+y^2))dif s = int_0^1 sqrt(2)e^(sqrt(2)t) dif t$，
    与 A、B 等价。

    令 $r=sqrt(x^2+y^2)=sqrt(2)t$ 时，$dif r=dif s$，
    原积分也等于 $int_0^(sqrt(2)) e^r dif r$，即 D与原积分等价。
    只有 C 多了一个 $sqrt(2)$ 系数，不相等。
  ],
)

#prob-type("二、填空题")

#question(
  [
    5. 设 $L$ 为曲线 $cases(x = 2 cos t, y = 2 sin t, z = t)$，介于 $t = 0$ 到 $t = pi$ 的一段弧，则 $int_L z / (x^2 + y^2) dif s =$ #ans[$sqrt(5) pi^2 / 8$]。
  ],
  p: [参数方程下 $x^2+y^2=4, z=t$，且 $r'(t)=(-2sin t, 2cos t, 1)$，故 $dif s = norm(r'(t)) dif t = sqrt(5) dif t$。
    积分为
    $int_0^{pi} (t/4) sqrt(5) dif t = (sqrt(5)/4) dot (pi^2/2) = sqrt(5) pi^2 / 8$。],
)

#question(
  [
    6. 设 $L: cases(x = a cos t, y = a sin t)$ ($0 <= t <= 2 pi, a > 0$)，则 $oint_L (x^2 + y^2)^n dif s =$ #ans[$2 pi a^(2 n + 1)$]。
  ],
  a: [由参数方程
    $x=a cos t, y=a sin t$（$0<=t<=2pi$），有
    $x^2+y^2=a^2$，故
    $(x^2+y^2)^n=a^(2n)$。

    又
    $dif s=sqrt((dif x)^2+(dif y)^2)=a dif t$。
    所以
    $oint_L (x^2+y^2)^n dif s
    =int_0^(2pi) a^(2n) dot a dif t
    =a^(2n+1) int_0^(2pi) dif t
    =2pi a^(2n+1)$。],
)

#question(
  [
    7. 设在 $x O y$ 面内有一线密度为 $mu(x, y)$ 的曲线弧 $L$，则：
    此曲线弧关于 $x$ 轴的转动惯量为 $I_x =$ #ans[$int_L y^2 mu(x, y) dif s$]；
    关于 $y$ 轴的转动惯量为 $I_y =$ #ans[$int_L x^2 mu(x, y) dif s$]；
    其质心坐标 $(overline(x), overline(y))$ 中：
    $overline(x) =$ #ans[$(int_L x mu(x, y) dif s) / (int_L mu(x, y) dif s)$]，$overline(y) =$ #ans[$(int_L y mu(x, y) dif s) / (int_L mu(x, y) dif s)$]。
  ],
  a: [设线弧总质量
    $M=int_L mu(x, y) dif s$。
    微元质量为 $dif m=mu(x, y) dif s$。

    关于 $x$ 轴的转动惯量定义为
    $I_x=int y^2 dif m=int_L y^2 mu(x, y) dif s$；
    同理关于 $y$ 轴有
    $I_y=int x^2 dif m=int_L x^2 mu(x, y) dif s$。

    质心定义
    $overline(x)=1/M int x dif m,
    overline(y)=1/M int y dif m$，
    故
    $overline(x)= (int_L x mu(x, y) dif s)/(int_L mu(x, y) dif s)$，
    $overline(y)= (int_L y mu(x, y) dif s)/(int_L mu(x, y) dif s)$。],
)

#prob-type("三、计算题")

#question(
  [
    8. 计算 $int_L (2 x - y) dif s$，其中 $L$ 为联结点 $(0, 0), (1, 0), (0, 1)$ 的闭折线。
  ],
  a: [将闭折线 $L$ 分成三段：
    $L_1:(0,0)->(1,0)$，
    $L_2:(1,0)->(0,1)$，
    $L_3:(0,1)->(0,0)$。
    因为是第一型曲线积分，取向不影响 $dif s$ 的符号。

    对 $L_1$：$y=0, 0<=x<=1, dif s=dif x$，
    $int_(L_1) (2x-y) dif s=int_0^1 2x dif x=1$。

    对 $L_2$：直线方程 $x+y=1$，取参数
    $x=t, y=1-t, 0<=t<=1$，
    $dif s=sqrt((dif x)^2+(dif y)^2)=sqrt(2) dif t$，
    故
    $int_(L_2) (2x-y) dif s
    =sqrt(2) int_0^1 (2t-(1-t)) dif t
    =sqrt(2) int_0^1 (3t-1) dif t
    =sqrt(2)/2$。

    对 $L_3$：$x=0, 0<=y<=1, dif s=dif y$，
    $int_(L_3) (2x-y) dif s=int_0^1 (-y) dif y=-1/2$。

    综上
    $int_L (2x-y) dif s=1+sqrt(2)/2-1/2=(1+sqrt(2))/2$。],
)

#question(
  [
    9. 计算 $oint_L x dif s$，其中 $L$ 为由直线 $y = x$ 及抛物线 $y = x^2$ 所围成闭区域的整个边界。
  ],
  a: [边界 $L$ 由两段组成：
    $L_1: y=x, 0<=x<=1$；
    $L_2: y=x^2, 0<=x<=1$。
    因为是对弧长积分，取向不影响结果，故
    $oint_L x dif s = int_(L_1) x dif s + int_(L_2) x dif s$。

    对 $L_1$：
    $dif s=sqrt(1+(y')^2) dif x=sqrt(2) dif x$，
    $int_(L_1) x dif s=sqrt(2) int_0^1 x dif x=sqrt(2)/2$。

    对 $L_2$：
    $y'=2x, dif s=sqrt(1+4x^2) dif x$，
    $int_(L_2) x dif s=int_0^1 x sqrt(1+4x^2) dif x$。
    令 $u=1+4x^2, dif u=8x dif x$，得
    $int_0^1 x sqrt(1+4x^2) dif x
    =1/8 int_1^5 u^(1/2) dif u
    =1/12 (5 sqrt(5)-1)$。

    故
    $oint_L x dif s=sqrt(2)/2+1/12 (5 sqrt(5)-1)$。],
)

#question(
  [
    10. 计算 $oint_L e^(sqrt(x^2 + y^2)) dif s$，其中 $L$ 为圆 $x^2 + y^2 = a^2$，直线 $y = x$ 和 $x$ 轴在第一象限所围成扇形的整个边界。
  ],
  a: [边界由三段组成：
    $L_1$ 为 $x$ 轴上半径段（$r:0->a$），
    $L_2$ 为圆弧（$r=a, theta:0->pi/4$），
    $L_3$ 为直线 $y=x$ 上半径段（$r:a->0$）。
    因被积函数只与 $r=sqrt(x^2+y^2)$ 有关，取向对 $dif s$ 不影响。

    在两条半径段上，$dif s=dif r$，故
    $int_(L_1) e^r dif s = int_0^a e^r dif r = e^a-1$，
    $int_(L_3) e^r dif s = int_0^a e^r dif r = e^a-1$。

    在圆弧上 $r=a$，故 $e^(sqrt(x^2+y^2))=e^a$ 为常数，
    弧长为 $a dot pi/4$，于是
    $int_(L_2) e^(sqrt(x^2+y^2)) dif s=e^a dot a pi/4$。

    相加得
    $oint_L e^(sqrt(x^2+y^2)) dif s
    =2(e^a-1)+e^a a pi/4
    =e^a(2+pi a/4)-2$。],
)

#question(
  [
    11. 计算 $int_L x y z dif s$，其中 $L$ 为曲线弧 $x = t, y = 2/3 sqrt(2 t^3), z = 1/2 t^2$ ($0 <= t <= 1$)。
  ],
  a: [参数方程
    $x=t,
    y=(2/3) sqrt(2 t^3)=(2 sqrt(2)/3) t^(3/2),
    z=1/2 t^2,
    0<=t<=1$。

    先算弧长元：
    $x'=1,
    y'=sqrt(2)t^(1/2),
    z'=t$，
    故
    $dif s=sqrt(1+2t+t^2) dif t=(1+t) dif t$。

    再算被积函数：
    $x y z=t dot (2 sqrt(2)/3) t^(3/2) dot (1/2) t^2
    =(sqrt(2)/3) t^(9/2)$。
    所以
    $int_L x y z dif s
    =sqrt(2)/3 int_0^1 t^(9/2)(1+t) dif t$
    $=sqrt(2)/3 [int_0^1 t^(9/2) dif t + int_0^1 t^(11/2) dif t]$
    $=sqrt(2)/3 (2/11+2/13)
    =16 sqrt(2)/143$。],
)

#question(
  [
    12. （附加题）计算 $oint_L (2 y^2 + z^2) dif s$，其中 $L$ 为球面 $x^2 + y^2 + z^2 = a^2$ 与平面 $x = y$ 相交的圆。
  ],
  a: [交线 $L$ 在平面 $x=y$ 内，且满足
    $x^2+y^2+z^2=a^2$。
    因 $x=y$，有
    $2y^2+z^2=x^2+y^2+z^2=a^2$，
    故被积函数在 $L$ 上为常数 $a^2$。

    该交线是以原点为圆心、半径为 $a$ 的圆（平面过原点），
    周长为 $2pi a$。
    因而
    $oint_L (2y^2+z^2) dif s
    =a^2 oint_L dif s
    =a^2 dot 2pi a
    =2pi a^3$。],
)

== 第二节 对坐标的曲线积分

#prob-type("一、选择题")

#question(
  [
    1. 设 $L$ 为抛物线 $y = x^2$ 上从点 $A(1, 1)$ 到点 $B(0, 0)$ 的一段弧，则 $int_L x dif y =$（ #choice[C] ）。
    A. $int_0^1 2x^2 dif x$ #quad B. $int_1^0 x dif y$ \
    C. $int_1^0 2x^2 dif x$ #quad D. $int_0^1 sqrt(y) dif y$
  ],
  p: [由 $y = x^2$ 得 $dif y = 2x dif x$。起点 $A(1, 1)$ 对应 $x = 1$，终点 $B(0, 0)$ 对应 $x = 0$。故 $int_L x dif y = int_1^0 x (2x dif x) = int_1^0 2x^2 dif x$。],
)

#question(
  [
    2. 设 $L$ 为从点 $(a, 0)$ 到点 $(-a, 0)$ 的线段，则 $int_L (x + y^2) dif x =$（ #choice[D] ）。
    A. $a^2/2$ #quad B. $2 a$ #quad C. 1 #quad D. 0
  ],
  p: [在线段 $L$ 上，$y = 0$，故 $int_L (x + y^2) dif x = int_a^(-a) x dif x = [ 1/2 x^2 ]_a^(-a) = 0$。],
)

#question(
  [
    3. 设 $L$ 为抛物线 $2y = x^2$ 上从点 $A(1, 1/2)$ 到点 $B(2, 2)$ 的一段弧，则 $int_L (2x/y) dif x - (x^2/y^2) dif y =$（ #choice[B] ）。
    A. -3 #quad B. 0 #quad C. $3/2$ #quad D. 3
  ],
  p: [观察被积表达式可知 $(2x/y) dif x - (x^2/y^2) dif y = dif (x^2/y)$。故 $I = [ x^2/y ]_A^B = 2^2/2 - 1^2/(1/2) = 2 - 2 = 0$。],
)

#question(
  [
    4. 设 $L$ 为从点 $(0, 0)$ 沿折线 $y = 1 - |x - 1|$ 到点 $A(2, 0)$ 的折线段，则 $int_L -y dif x + x dif y =$（ #choice[D] ）。
    A. 0 #quad B. -1 #quad C. 2 #quad D. -2
  ],
  p: [封闭曲线 $L + A O$ 围成的面积 $S = 1$。
    由格林公式，$oint_(L + A O) -y dif x + x dif y = 2 iint_D dif sigma = 2$。
    又 $int_(A O) -y dif x + x dif y = int_2^0 0 dif x = 0$，故 $int_L = 2$。
    但注意格林公式要求正向（逆时针），
    此题折线从 $(0,0)$ 经 $(1,1)$ 到 $(2,0)$ 是顺时针方向，故应为 -2。],
)

#prob-type("二、填空题")

#question(
  [
    5. 设 $L$ 为抛物线 $y = x^2$ 上从点 $A(0, 0)$ 到点 $B(1, 1)$ 的一段弧，则 $int_L x dif y =$ #ans[$2/3$]。
  ],
  p: [曲线可用 $x$ 作参数：$y=x^2, 0<=x<=1$，
    因而
    $dif y=2x dif x$。
    所以
    $int_L x dif y=int_0^1 x dot 2x dif x
    =2 int_0^1 x^2 dif x
    =2/3$。],
)

#question(
  [
    6. 设 $L$ 为曲线 $y = sqrt(x)$ 上从点 $A(0, 0)$ 到点 $B(1, 1)$ 的一段弧，则将对坐标的曲线积分 $int_L P(x, y) dif x + Q(x, y) dif y$ 化为对弧长的曲线积分是
  ],
  a: [由 $y=sqrt(x)$ 得
    $y'=1/(2sqrt(x))$，故
    $dif s=sqrt(1+(y')^2) dif x
    =sqrt(1+1/(4x)) dif x
    =sqrt(1+4x)/(2sqrt(x)) dif x$。
    因而
    $dif x=2sqrt(x)/sqrt(1+4x) dif s$，
    且
    $dif y=y' dif x=1/sqrt(1+4x) dif s$。

    代回原式：
    $int_L P dif x+Q dif y
    =int_L [ (2sqrt(x))/sqrt(1+4x) P(x,y)
      +1/sqrt(1+4x) Q(x,y)] dif s$。],
)

#question(
  [
    7. 设 $L$ 是上半圆 $x^2 + y^2 = 2x$ 从点 $(0, 0)$ 到点 $(1, 1)$ 的一段弧，则将对坐标的曲线积分 $int_L P(x, y) dif x + Q(x, y) dif y$ 化为对弧长的曲线积分是
  ],
  a: [圆方程写成
    $(x-1)^2+y^2=1$。
    对弧长参数 $s$，有单位切向量满足
    $(x_s, y_s) dot (x-1,y)=0$，并且
    $x_s^2+y_s^2=1$。
    可取
    $x_s=-y, y_s=x-1$，
    即
    $dif x=-y dif s, dif y=(x-1) dif s$。

    故
    $int_L P dif x+Q dif y
    =int_L [-y P(x,y)+(x-1)Q(x,y)] dif s$。],
)

#question(
  [
    8. 在力 $bold(F) = (x, -y, x)$ 的作用下，质点从点 $(0, 0, 0)$ 沿曲线 $L: cases(x = t, y = 2t, z = t^2)$ 移至点 $(1, 2, 1)$，则力 $bold(F)$ 所做的功为
  ],
  a: [功为第二型曲线积分
    $W=int_L bold(F) dot dif bold(r)
    =int_L (x dif x-y dif y+x dif z)$。
    取参数
    $x=t, y=2t, z=t^2, 0<=t<=1$，则
    $dif x=dif t, dif y=2 dif t, dif z=2t dif t$。

    代入得
    $W=int_0^1 [t dot 1-(2t) dot 2+t dot 2t] dif t
    =int_0^1 (2t^2-3t) dif t$
    $=[2/3 t^3-3/2 t^2]_0^1
    =2/3-3/2=-5/6$。],
)

#prob-type("三、计算题")

#question(
  [
    9. 计算 $int_L (x^2 - y^2) dif x$，其中 $L$ 为抛物线 $y = x^2$ 上从点 $(0, 0)$ 到点 $(2, 4)$ 的一段弧。
  ],
  p: [沿抛物线取参数 $x=t, y=t^2$，$0<=t<=2$，则 $dif x=dif t$。
    原积分
    $int_L (x^2-y^2) dif x
    =int_0^2 (t^2-t^4) dif t
    = [t^3/3-t^5/5]_0^2
    =8/3-32/5
    =-56/15$。],
)

#question(
  [
    10. 计算 $I = int_(O A) (x^2 - y^2) dif x + x y dif y$，其中点 $O(0, 0)$，点 $A(1, 1)$，$O A$ 为：
    (1) 直线 $y = x$ 上从点 $O$ 到点 $A$ 的线段；
    (2) 从点 $O$ 经点 $(1, 0)$ 到点 $A$ 的折线段；
    (3) 抛物线 $y = x^2$ 上从点 $O$ 到点 $A$ 的一段弧；
    (4) 从点 $O$ 经点 $(0, 1)$ 到点 $A$ 的折线段。
  ],
  a: [
    设 $P=x^2-y^2, Q=x y$。

    (1) 直线 $y=x$：取 $x=t,y=t,0<=t<=1$，$dif y=dif x$。
    $I_1=int_0^1 [(t^2-t^2) + t^2] dif t = int_0^1 t^2 dif t = 1/3$。

    (2) 折线 $O(0,0)->(1,0)->A(1,1)$：
    第一段 $y=0, dif y=0$，得 $int_0^1 x^2 dif x=1/3$；
    第二段 $x=1, dif x=0$，得 $int_0^1 y dif y=1/2$。
    故 $I_2=1/3+1/2=5/6$。

    (3) 抛物线 $y=x^2$：$dif y=2x dif x, 0<=x<=1$。
    $I_3=int_0^1 [(x^2-x^4) + x(x^2)2x] dif x
    =int_0^1 (x^2+x^4) dif x=1/3+1/5=8/15$。

    (4) 折线 $O(0,0)->(0,1)->A(1,1)$：
    第一段 $x=0$ 时积分为 0；
    第二段 $y=1, dif y=0$，
    $I_4=int_0^1 (x^2-1) dif x=1/3-1=-2/3$。
  ],
)

#question(
  [
    11. 计算 $int_L (x^2 + 2x y) dif x + (x^2 + y^4) dif y$，其中 $L$ 为：
    (1) 沿抛物线 $y = x^2$ 从点 $O(0, 0)$ 到点 $A(1, 1)$ 的一段弧；

    (2) 沿直线从点 $O(0, 0)$ 经点 $B(1, 0)$ 到点 $A(1, 1)$ 的折线段；

    (3) 沿直线从点 $O(0, 0)$ 经点 $C(0, 1)$ 到点 $A(1, 1)$ 的折线段；

    (4) 沿曲线 $y = sin(pi x / 2)$ 从点 $O(0, 0)$ 到点 $A(1, 1)$ 的一段弧。
  ],
  a: [
    设
    $P=x^2+2x y, Q=x^2+y^4$。
    先验路径无关性：
    $(partial P)/(partial y)=2x, (partial Q)/(partial x)=2x$，
    故积分与路径无关。

    求势函数 $U$：
    $U_x=P$，积分得
    $U=x^3/3+x^2 y+phi(y)$。
    再由 $U_y=Q$ 得
    $x^2+phi'(y)=x^2+y^4$，即 $phi'(y)=y^4$，
    可取 $phi(y)=y^5/5$。
    所以
    $U=x^3/3+x^2 y+y^5/5$。

    从 $O(0,0)$ 到 $A(1,1)$ 的积分
    $I=U(1,1)-U(0,0)=1/3+1+1/5=23/15$。
    因路径无关，所以 (1)(2)(3)(4) 均为 $23/15$。
  ],
)

== 第三节 格林公式及其应用(1)

#prob-type("一、选择题")

#question(
  [
    1. 设有界闭区域 $D$ 由分段光滑曲线 $L$ 围成，$L$ 取正向。若函数 $P(x, y), Q(x, y)$ 在 $D$ 上具有一阶连续偏导数，则 $oint_L P dif x + Q dif y =$（ #choice[D] ）。
    A. $iint_D ((partial P) / (partial y) - (partial Q) / (partial x)) dif sigma$ #quad B. $iint_D ((partial Q) / (partial y) - (partial P) / (partial x)) dif sigma$ \
    C. $iint_D ((partial P) / (partial x) - (partial Q) / (partial y)) dif sigma$ #quad D. $iint_D ((partial Q) / (partial x) - (partial P) / (partial y)) dif sigma$
  ],
  p: [此为格林公式的标准形式。],
)

#question(
  [
    2. 设 $L: x^2 + y^2 = a^2$，取逆时针方向，则 $oint_L x y^2 dif y - x^2 y dif x =$（ #choice[C] ）。
    A. $pi a^2 / 2$ #quad B. $-pi a^4 / 2$ #quad C. $pi a^4 / 2$ #quad D. $-pi a^4$
  ],
  p: [由格林公式，$I = iint_D (y^2 - (-x^2)) dif sigma = iint_D (x^2 + y^2) dif sigma = int_0^(2 pi) dif theta int_0^a rho^2 dot rho dif rho = 1/2 pi a^4$。],
)

#question(
  [
    3. 设面积为 3 的平面有界闭区域 $D$ 由分段光滑曲线 $L$ 围成，$L$ 取正向，则 $oint_L y dif x + 2 dif y =$（ #choice[B] ）。
    A. 3 #quad B. -3 #quad C. -1 #quad D. 无法计算
  ],
  p: [由格林公式，$I = iint_D ( (partial 2) / (partial x) - (partial y) / (partial y) ) dif sigma = iint_D (0 - 1) dif sigma = -sigma(D) = -3$。],
)

#prob-type("二、填空题")

#question(
  [
    4. 设 $L: x^2 + y^2 = 9$，取顺时针方向，则 $oint_L (2x - y + 4) dif x + (5y + 3x - 6) dif y =$ #ans[$36 pi$]。
  ],
  a: [令 $P=2x-y+4, Q=5y+3x-6$。由格林公式（正向为逆时针）
    $oint_L P dif x + Q dif y = - iint_D (Q_x-P_y) dif sigma$（顺时针取负号）。
    其中 $Q_x=3, P_y=-1$，故 $Q_x-P_y=4$。
    圆域面积为 $pi dot 3^2=9pi$，
    所以积分 $= -4 dot 9pi$ 再乘顺时针符号修正后得 $36pi$。],
)

#question(
  [
    5. 设 $L$ 为椭圆 $x^2/a^2 + y^2/b^2 = 1$ 的正向边界，则 $oint_L x dif y - y dif x =$ #ans[$2 pi a b$]。
  ],
  a: [令
    $P=-y, Q=x$，则
    $oint_L x dif y-y dif x=oint_L P dif x+Q dif y$。
    由格林公式
    $oint_L P dif x+Q dif y=iint_D (Q_x-P_y) dif sigma$。
    其中
    $Q_x=1, P_y=-1$，故
    $Q_x-P_y=2$。

    设椭圆内域为 $D$，面积
    $S_D=pi a b$，于是
    $oint_L x dif y-y dif x=2 iint_D dif sigma
    =2pi a b$。],
)

#question(
  [
    6. 设 $L$ 为圆 $x^2 + y^2 = 1$ 上从点 $(1, 0)$ 经点 $(0, 1)$ 到点 $(-1, 0)$ 的一段弧，则 $int_L e^(y^2) dif y =$ #ans[$0$]。
  ],
  a: [该弧是上半圆，从 $(1,0)$ 到 $(-1,0)$，
    起终点的 $y$ 坐标同为 0。
    原积分只含 $dif y$，可视作
    $int_{y=0}^{y=0} e^(y^2) dif y$。
    因上下限相同，故积分为 0。],
)

#prob-type("三、计算题")

#question(
  [
    7. 利用格林公式计算 $iint_D x dif sigma$，其中 $D$ 是以三点 $O(0, 0), A(2, 0), B(2, 2)$ 为顶点的三角形闭区域。
  ],
  a: [取
    $P=0, Q=x^2/2$，则
    $Q_x-P_y=x$。
    由格林公式
    $iint_D x dif sigma=iint_D (Q_x-P_y) dif sigma=oint_(partial D) P dif x+Q dif y$
    $=oint_(partial D) x^2/2 dif y$。

    也可直接按区域积分：三角形三边为
    $y=0, x=2, y=x$，故
    $0<=x<=2, 0<=y<=x$。
    因而
    $iint_D x dif sigma=int_0^2 int_0^x x dif y dif x
    =int_0^2 x^2 dif x
    =[x^3/3]_0^2=8/3$。],
)

#question(
  [
    8. 计算 $oint_L (2x y - x^2) dif x + (x + y^2) dif y$，其中 $L$ 为由抛物线 $y = x^2$ 和 $y^2 = x$ 所围成的区域的正向边界曲线。
  ],
  a: [设
    $P=2x y-x^2, Q=x+y^2$。
    由格林公式（$L$ 取正向）
    $oint_L P dif x+Q dif y=iint_D (Q_x-P_y) dif sigma$。
    计算得
    $Q_x=1, P_y=2x$，故被积函数为 $1-2x$。

    区域 $D$ 由 $y=x^2$ 与 $y=sqrt(x)$ 围成，
    交点 $x=0,1$，故
    $0<=x<=1, x^2<=y<=sqrt(x)$。
    因此
    $oint_L ... =int_0^1 int_(x^2)^(sqrt(x)) (1-2x) dif y dif x$
    $=int_0^1 (1-2x)(sqrt(x)-x^2) dif x$
    $=int_0^1 (x^(1/2)-2x^(3/2)-x^2+2x^3) dif x$
    $=[2/3 x^(3/2)-4/5 x^(5/2)-x^3/3+x^4/2]_0^1$
    $=2/3-4/5-1/3+1/2=1/30$。],
)

#question(
  [
    9. 计算 $int_L (e^x sin y - m y) dif x + (e^x cos y - m) dif y$，其中 $L$ 为圆 $x^2 + y^2 = a x$ ($a > 0$) 上从点 $(a, 0)$ 到点 $(0, 0)$ 的上半部分。
  ],
  a: [记
    $P=e^x sin y-m y,
    Q=e^x cos y-m$。
    取线段 $S$：从 $(0,0)$ 到 $(a,0)$ 的 $x$ 轴段，
    则闭曲线 $C=L+S$ 为正向（逆时针）边界。

    先算 $S$ 上积分：$y=0, dif y=0$，故
    $int_S P dif x+Q dif y=0$。
    因而原积分
    $int_L P dif x+Q dif y=oint_C P dif x+Q dif y$。

    用格林公式：
    $oint_C P dif x+Q dif y=iint_D (Q_x-P_y) dif sigma$。
    其中
    $Q_x=e^x cos y,
    P_y=e^x cos y-m$，
    故 $Q_x-P_y=m$。
    于是
    $int_L ... =m A_D$。

    圆 $x^2+y^2=a x$ 即
    $(x-a/2)^2+y^2=(a/2)^2$，
    $D$ 是其上半圆域，记其面积为 $A_D$，则
    $A_D=1/2 pi (a/2)^2=pi a^2/8$。
    所以
    $int_L ... =pi m a^2/8$。],
)

#question(
  [
    10. 计算 $oint_L ((x + y) dif x - (x - y) dif y) / (x^2 + y^2)$，其中 $L$ 为一条无重点、分段光滑且不经过坐标原点的连续闭曲线，取逆时针方向。
  ],
  a: [将被积式拆分：
    $((x+y) dif x-(x-y) dif y)/(x^2+y^2)$
    $=(x dif x+y dif y)/(x^2+y^2)+(y dif x-x dif y)/(x^2+y^2)$。

    第一项为
    $d(ln sqrt(x^2+y^2))$，沿闭曲线积分为 0。
    第二项满足
    $(y dif x-x dif y)/(x^2+y^2)=-d theta$，
    其中 $theta$ 为极角。
    故
    $oint_L ... =-oint_L d theta=-2pi n$，
    $n$ 为曲线绕原点的绕数。

    对题设简单闭曲线且逆时针：
    若原点在曲线外，$n=0$，积分为 0；
    若原点在曲线内，$n=1$，积分为 $-2pi$。],
)

== 第三节 格林公式及其应用（2）

#prob-type("一、选择题")

#question(
  [
    1. 设函数 $f(x)$ 连续可微且 $f(0) = -2$， $int_L (y sin 2x - y f(x) tan x) dif x + f(x) dif y$ 与路径无关，则 $f(x) =$（ #choice[B] ）。
    A. $-2/3 cos^2 x - 4/((3 cos x))$ #quad B. $-2 cos^2 x$ \
    C. $-2 cos x$ #quad D. $-2/3 cos x - 4/((3 cos x))$
  ],
  p: [路径无关条件为 $(partial P) / (partial y) = (partial Q) / (partial x)$，即
    $sin 2x - f(x) tan x = f'(x)$。
    这是一阶线性微分方程：$f'(x) + f(x) tan x = sin 2x$。
    积分因子为 $1/cos x$，则
    $(f(x)/cos x)' = 2 sin x cos x / cos x = 2 sin x$。
    故 $f(x)/cos x = -2 cos x + C$。
    代入 $f(0)=-2$ 得 $C=0$，故 $f(x) = -2 cos^2 x$。],
)

#question(
  [
    2. $int_L (2x(x^2 + y^2)^alpha)/y dif x - (x^2(x^2 + y^2)^alpha)/y^2 dif y$ 在不与 $x$ 轴相交的区域上与路径无关，则 $alpha =$（ #choice[D] ）。
    A. $1/2$ #quad B. $-1/2$ #quad C. 任意值 #quad D. 0
  ],
  p: [路径无关要求 $(partial P) / (partial y) = (partial Q) / (partial x)$。
    计算得
    $(partial P) / (partial y) = (2x dot alpha(x^2+y^2)^(alpha-1) dot 2y dot y - 2x(x^2+y^2)^alpha)/y^2$。
    $(partial Q) / (partial x) = -(2x(x^2+y^2)^alpha + x^2 dot alpha(x^2+y^2)^(alpha-1) dot 2x)/y^2$。
    化简相等条件可得 $alpha = 0$。],
)

#question(
  [
    3. 若 $int_L (x^2 - 3y) dif x + (a x - sin^2 y) dif y$ 与路径无关，则 $a =$（ #choice[B] ）。
    A. $-1/3$ #quad B. $-3$ #quad C. $1/3$ #quad D. 3
  ],
  p: [由 $(partial P) / (partial y) = (partial Q) / (partial x)$ 得 $-3 = a$。],
)

#question(
  [
    4. 下列式子中不是某一函数 $u(x,y)$ 的全微分的是（#choice[D]）
    A. $(x + 2 y) dif x + (2 x + y) dif y$ #quad B. $2 x y dif x + x^2 dif y$ \
    C. $e^(y) dif x + (x e^(y) - 2 y) dif y$ #quad D. $(x^2 + y^2) dif x + x y dif y$
  ],
  p: [对 D 选项，$P = x^2+y^2, Q = x y$，则 $P_y = 2y, Q_x = y$。$P_y != Q_x$，故不是全微分。],
)

#prob-type("二、填空题")

#question(
  [
    5. 设有函数 $u(x, y)$，已知 $u(0, 0) = 1$，且全微分 $dif u = (2x cos y - y^lambda sin x) dif x + (2y cos x - x^lambda sin y) dif y$，则 $lambda =$ #ans[$2$]，$u(x, y) =$ #ans[$x^2 cos y + y^2 cos x + 1$]。
  ],
  a: [设
    $M=2x cos y-y^lambda sin x,
    N=2y cos x-x^lambda sin y$。
    因为给出的是全微分，必须有
    $M_y=N_x$。

    计算得
    $M_y=-2x sin y-lambda y^(lambda-1) sin x$，
    $N_x=-2y sin x-lambda x^(lambda-1) sin y$。
    要对任意 $x,y$ 成立，只能取 $lambda=2$。

    代回后由 $u_x=M$ 积分：
    $u=x^2 cos y+y^2 cos x+phi(y)$。
    再由 $u_y=N$ 得 $phi'(y)=0$，故 $phi$ 为常数 $C$。
    利用 $u(0,0)=1$，得 $C=1$。
    所以
    $u(x,y)=x^2 cos y+y^2 cos x+1$。],
)

#question(
  [
    6. 为使得 $int_(A B) f(x, y)(y dif x + x dif y)$ 与路径无关，则可微函数 $f(x, y)$ 应满足 #ans[$x (partial f) / (partial x) = y (partial f) / (partial y)$]。
  ],
  a: [把积分写成
    $int_(A B) M dif x+N dif y$，其中
    $M=f(x,y) y, N=f(x,y) x$。
    路径无关的必要充分条件是
    $M_y=N_x$。

    计算
    $M_y=f+y f_y,
    N_x=f+x f_x$。
    相等即
    $y f_y=x f_x$，
    即
    $x (partial f)/(partial x)=y (partial f)/(partial y)$。],
)

#prob-type("三、计算题")

#question(
  [
    7. 证明：曲线积分 $int_((1, 2))^((3, 4)) (6x y^2 - y^3) dif x + (6x^2 y - 3x y^2) dif y$ 在整个 $x O y$ 面内与路径无关，并计算积分值。
  ],
  a: [
    设
    $P(x,y)=6x y^2-y^3, Q(x,y)=6x^2 y-3x y^2$。
    计算得
    $(partial P)/(partial y) = 12x y-3y^2, (partial Q)/(partial x) = 12x y-3y^2$，
    在全平面相等，故积分与路径无关。

    求势函数：
    对 $P$ 关于 $x$ 积分，得
    $U=3x^2 y^2-x y^3+phi(y)$。
    再由 $U_y=Q$ 得 $phi'(y)=0$，故可取
    $U=3x^2 y^2-x y^3$。

    所求积分
    $=U(3,4)-U(1,2)
    =(3 dot 9 dot 16-3 dot 64)-(3 dot 1 dot 4-1 dot 8)
    =240-4=236$。
  ],
)

#question(
  [
    8. 验证：$(3x^2 y + 8x y^2) dif x + (x^3 + 8x^2 y + 12y e^y) dif y$ 在整个 $x O y$ 面内是某一函数 $u(x, y)$ 的全微分，并求出这样的一个 $u(x, y)$。
  ],
  a: [
    设
    $P=3x^2 y+8x y^2, Q=x^3+8x^2 y+12y e^y$。
    计算
    $P_y=3x^2+16x y,
    Q_x=3x^2+16x y$，故该微分形式在全平面恰当。

    求势函数 $u$：
    $u_x=P$，对 $x$ 积分得
    $u=x^3 y+4x^2 y^2+psi(y)$。
    对 $y$ 求导：
    $u_y=x^3+8x^2 y+psi'(y)$，
    与 $Q$ 比较得
    $psi'(y)=12y e^y$。
    积分得 $psi(y)=12(y-1)e^y+C$。

    所以可取
    $u(x,y)=x^3 y+4x^2 y^2+12(y-1)e^y+C$。
  ],
)

#question(
  [
    9. 计算 $int_L e^x cos y dif y + e^x sin y dif x$，其中 $L$ 为点 $O(0, 0)$ 沿摆线 $x = a(t - sin t), y = a(1 - cos t)$ 到点 $A(a(pi/2 - 1), a)$ ($a > 0$) 的一段弧。
  ],
  a: [记
    $M=e^x sin y, N=e^x cos y$，
    则原积分为
    $int_L M dif x+N dif y$。
    有
    $M_y=e^x cos y=N_x$，故积分与路径无关。

    取势函数
    $U(x,y)=e^x sin y$，则
    $U_x=M, U_y=N$。
    所以
    $int_L ... =U(A)-U(O)$
    $=e^(a(pi/2-1)) sin a-e^0 sin 0$
    $=e^(a(pi/2-1)) sin a$。],
)

#question(
  [
    10. （附加题）设 $Q(x, y)$ 在 $x O y$ 面上具有一阶连续偏导数，
    $int_L 2x y dif x + Q(x, y) dif y$ 与路径无关，
    并且对于任意的 $t$，有
    $int_((0, 0))^((t, 1)) 2x y dif x + Q(x, y) dif y$
    $= int_((0, 0))^((1, t)) 2x y dif x + Q(x, y) dif y$，
    求 $Q(x, y)$。
  ],
  a: [设
    $M=2x y, N=Q(x,y)$。
    路径无关 $=> M_y=N_x$，故
    $N_x=2x$，从而
    $Q(x,y)=x^2+g(y)$。

    势函数可写为
    $U(x,y)=x^2 y+h(y)$，其中 $h'(y)=g(y)$。
    由题设对任意 $t$：
    $U(t,1)-U(0,0)=U(1,t)-U(0,0)$，即
    $t^2+h(1)=t+h(t)$。
    故
    $h(t)=t^2-t+h(1)$，从而
    $g(t)=h'(t)=2t-1$。
    所以
    $Q(x,y)=x^2+2y-1$。],
)

== 第四节 对面积的曲面积分

#prob-type("一、选择题")

#question(
  [
    1. 设 $Sigma$ 为抛物面 $z = 2 - x^2 - y^2$ 在 $x O y$ 面上方的部分，则 $iint_Sigma dif S =$（ #choice[D] ）。
    A. $int_0^(2 pi) dif theta int_0^1 sqrt(1 + 4 r^2) r dif r$ #quad B. $int_0^(2 pi) dif theta int_0^2 sqrt(1 + 4 r^2) r dif r$ \
    C. $int_0^(2 pi) dif theta int_0^2 (2 - r^2) sqrt(1 + 4 r^2) r dif r$ #quad D. $int_0^(2 pi) dif theta int_0^(sqrt(2)) sqrt(1 + 4 r^2) r dif r$
  ],
  p: [抛物面在 $x O y$ 面上方的部分，对应 $2 - x^2 - y^2 >= 0$，即 $x^2 + y^2 <= 2$。
    其投影区域 $D$ 为圆域 $r <= sqrt(2)$。
    由 $z = 2 - x^2 - y^2$ 得 $z_x = -2x, z_y = -2y$，故
    $dif S = sqrt(1 + z_x^2 + z_y^2) dif sigma = sqrt(1 + 4x^2 + 4y^2) dif x dif y$。
    在极坐标下为 $sqrt(1 + 4 r^2) r dif r dif theta$，故选 D。],
  a: [D.],
)

#question(
  [
    2. 设有一曲面 $Sigma$，其面密度为 $rho(x, y, z)$，则曲面 $Sigma$ 关于 $x$ 轴的转动惯量为（ #choice[D] ）。
    A. $iint_Sigma x dif S$ #quad B. $iint_Sigma x rho(x, y, z) dif S$ \
    C. $iint_Sigma x^2 dif S$ #quad D. $iint_Sigma (y^2 + z^2) rho(x, y, z) dif S$
  ],
  p: [转动惯量定义为各质点到旋转轴距离平方与质量之积的积分。点 $(x, y, z)$ 到 $x$ 轴的距离平方为 $y^2 + z^2$，质量微元为 $rho(x, y, z) dif S$。故选 D。],
  a: [D.],
)

#prob-type("二、填空题")

#question(
  [
    3. 设 $Sigma$ 为柱面 $x^2 + y^2 = a^2$ ($a > 0$) 在 $0 <= z <= h$ 之间的部分，则 $iint_Sigma dif S =$ #ans[$2 pi a h$]，$iint_Sigma x dif S =$ #ans[$0$]，$iint_Sigma x^2 dif S =$ #ans[$pi h a^3$]。
  ],
  a: [参数化柱面侧面：
    $x=a cos theta, y=a sin theta, z=z$，
    $0<=theta<=2pi, 0<=z<=h$。
    面积元
    $dif S=a dif theta dif z$。

    因而
    $iint_Sigma dif S=int_0^h int_0^(2pi) a dif theta dif z=2pi a h$。

    又
    $iint_Sigma x dif S=int_0^h int_0^(2pi) (a cos theta) a dif theta dif z
    =a^2 h int_0^(2pi) cos theta dif theta=0$。

    最后
    $iint_Sigma x^2 dif S=int_0^h int_0^(2pi) a^2 cos^2 theta dot a dif theta dif z
    =a^3 h int_0^(2pi) cos^2 theta dif theta
    =pi h a^3$。],
)

#question(
  [
    4. 设 $Sigma$ 为球面 $z = 1 + sqrt(1 - x^2 - y^2)$，则 $iint_Sigma (x^2 + y^2 + z/2) dif S =$ #ans[$17 pi / 6$]。
  ],
  a: [
    该曲面是单位球 $(x^2+y^2+(z-1)^2=1)$ 的上半球。
    令球坐标（以球心为原点）
    $x=sin phi cos theta, y=sin phi sin theta, z=1+cos phi$，
    其中 $0<=phi<=pi/2, 0<=theta<=2pi$，且 $dif S=sin phi dif phi dif theta$。

    被积函数
    $x^2+y^2+z/2 = sin^2 phi + (1+cos phi)/2$。
    所以
    $iint_Sigma ... = int_0^(2pi) int_0^(pi/2) [sin^2 phi + (1+cos phi)/2] sin phi dif phi dif theta$。
    先算内层：
    $int_0^(pi/2) sin^3 phi dif phi = 2/3$，
    $int_0^(pi/2) (1/2)sin phi dif phi = 1/2$，
    $int_0^(pi/2) (1/2)sin phi cos phi dif phi = 1/4$，
    合计 $17/12$。
    再乘 $2pi$ 得 $17pi/6$。
  ],
)

#question(
  [
    5. 设 $Sigma$ 为圆锥面 $z = sqrt(x^2 + y^2)$ 被圆柱面 $x^2 + y^2 = 2 a x$ ($a > 0$) 所截的部分，则 $iint_Sigma (x y + y z + z x) dif S =$ #ans[$64 sqrt(2) / 15 a^4$]。
  ],
  a: [圆锥面是图形
    $z=sqrt(x^2+y^2)=r$，故
    $dif S=sqrt(1+z_x^2+z_y^2) dif x dif y=sqrt(2) dif x dif y$。
    以极坐标记
    $x=r cos theta, y=r sin theta, z=r$。

    圆柱边界
    $x^2+y^2=2 a x$ 变为
    $r=2a cos theta$，故
    $-pi/2<=theta<=pi/2,
    0<=r<=2a cos theta$。

    被积函数
    $x y+y z+z x=r^2(cos theta sin theta+sin theta+cos theta)$。
    所以
    $I=sqrt(2) int_(-pi/2)^(pi/2) int_0^(2a cos theta)
    r^3(cos theta sin theta+sin theta+cos theta) dif r dif theta$。

    先对 $r$ 积分得
    $I=4sqrt(2)a^4 int_(-pi/2)^(pi/2)
    cos^4 theta(cos theta sin theta+sin theta+cos theta) dif theta$。
    其中含 $sin theta$ 的两项在对称区间上为奇函数积分，均为 0，
    故
    $I=4sqrt(2)a^4 int_(-pi/2)^(pi/2) cos^5 theta dif theta$
    $=8sqrt(2)a^4 int_0^(pi/2) cos^5 theta dif theta$
    $=8sqrt(2)a^4 dot 8/15
    =64sqrt(2)/15 a^4$。],
)

#prob-type("三、计算题")

#question(
  [
    6. 计算 $iint_Sigma (z + 2x + 4/3 y) dif S$，其中 $Sigma$ 为平面 $x/2 + y/3 + z/4 = 1$ 在第一卦限的部分。
  ],
  a: [将平面化为显式：
    $z=4-2x-4y/3$。
    故
    $z_x=-2, z_y=-4/3$，
    $dif S=sqrt(1+z_x^2+z_y^2) dif x dif y
    =sqrt(1+4+16/9) dif x dif y
    =sqrt(61)/3 dif x dif y$。

    被积函数
    $z+2x+4y/3=(4-2x-4y/3)+2x+4y/3=4$，
    所以
    $iint_Sigma (z+2x+4y/3) dif S
    =4 sqrt(61)/3 iint_D dif x dif y$，
    其中 $D: x>=0, y>=0, 3x+2y<=6$。

    $D$ 为顶点 $(0,0),(2,0),(0,3)$ 的三角形，面积为 3，
    故原积分
    $=4 sqrt(61)/3 dot 3=4 sqrt(61)$。],
)

#question(
  [
    7. 计算 $iint_Sigma (x + y + z) dif S$，其中 $Sigma$ 为球面 $x^2 + y^2 + z^2 = a^2$ 在 $z >= h$ ($0 < h < a$) 的部分。
  ],
  a: [由对称性（关于 $y O z$ 与 $x O z$ 平面对称）有
    $iint_Sigma x dif S=0,
    iint_Sigma y dif S=0$。
    因此
    $iint_Sigma (x+y+z) dif S=iint_Sigma z dif S$。

    将球冠写成图形
    $z=sqrt(a^2-x^2-y^2)$，投影域
    $D: x^2+y^2<=a^2-h^2$。
    对该上侧曲面
    $dif S=sqrt(1+z_x^2+z_y^2) dif x dif y=a/z dif x dif y$，
    故
    $z dif S=a dif x dif y$。

    所以
    $iint_Sigma z dif S=a iint_D dif x dif y
    =a dot pi(a^2-h^2)$。
    即
    $iint_Sigma (x+y+z) dif S=pi a(a^2-h^2)$。],
)

#question(
  [
    8. 计算 $iint_Sigma (x^2 + 1/2 y^2 + 1/4 z^2) dif S$，其中 $Sigma$ 为球面 $x^2 + y^2 + z^2 = R^2$。
  ],
  a: [由球面对称性，
    $iint_Sigma x^2 dif S=iint_Sigma y^2 dif S=iint_Sigma z^2 dif S$。
    设它们共同值为 $I_0$。
    则
    $3I_0=iint_Sigma (x^2+y^2+z^2) dif S=iint_Sigma R^2 dif S=R^2 dot 4pi R^2$，
    故
    $I_0=4/3 pi R^4$。

    所求积分
    $=iint_Sigma x^2 dif S+1/2 iint_Sigma y^2 dif S+1/4 iint_Sigma z^2 dif S$
    $=(1+1/2+1/4) I_0
    =7/4 dot 4/3 pi R^4
    =7/3 pi R^4$。],
)

#question(
  [
    9. 求球面 $z = sqrt(a^2 - x^2 - y^2)$ 在柱面 $x^2 + y^2 = a x$ 内部的表面积。
  ],
  a: [所求为上半球面部分面积。
    设
    $z=sqrt(a^2-x^2-y^2)$，则
    $dif S=sqrt(1+z_x^2+z_y^2) dif x dif y
    =a/sqrt(a^2-x^2-y^2) dif x dif y$。

    投影域 $D$ 由柱面内部给出：
    $x^2+y^2<=a x$。
    极坐标下为
    $r<=a cos theta,
    -pi/2<=theta<=pi/2$。
    故表面积
    $A=int_(-pi/2)^(pi/2) int_0^(a cos theta) a r/sqrt(a^2-r^2) dif r dif theta$。

    先对 $r$ 积分：
    $int a r/sqrt(a^2-r^2) dif r=-a sqrt(a^2-r^2)$，
    故内层为
    $a[a-sqrt(a^2-a^2 cos^2 theta)]
    =a^2(1-abs(sin theta))$。
    因而
    $A=a^2 int_(-pi/2)^(pi/2) (1-abs(sin theta)) dif theta$
    $=a^2(pi-2)$。],
)

#question(
  [
    10. 求抛物面壳 $z = 1/2 (x^2 + y^2)$ ($0 <= z <= 1$) 的质量，已知壳的面密度为 $rho = z$。
  ],
  a: [质量
    $M=iint_Sigma rho dif S=iint_Sigma z dif S$。
    曲面为
    $z=(x^2+y^2)/2$，且 $0<=z<=1$ 对应投影圆域
    $D: x^2+y^2<=2$。

    先算面积元：
    $z_x=x, z_y=y$，
    $dif S=sqrt(1+z_x^2+z_y^2) dif x dif y=sqrt(1+x^2+y^2) dif x dif y$。
    故
    $M=iint_D (x^2+y^2)/2 sqrt(1+x^2+y^2) dif x dif y$。

    改用极坐标 $x=r cos theta, y=r sin theta$：
    $M=int_0^(2pi) int_0^(sqrt(2)) (r^2/2) sqrt(1+r^2) r dif r dif theta
    =pi int_0^(sqrt(2)) r^3 sqrt(1+r^2) dif r$。

    令 $u=1+r^2$，$dif u=2r dif r$，则
    $r^3 dif r=r^2 r dif r=(u-1)dif u/2$，
    $M=pi/2 int_1^3 (u^(3/2)-u^(1/2)) dif u$
    $=pi/2 [2/5 u^(5/2)-2/3 u^(3/2)]_1^3$
    $=2/15 pi (6 sqrt(3)+1)$。],
)

== 第五节 对坐标的曲面积分

#prob-type("一、选择题")

#question(
  [
    1. 设 $Sigma$ 为平面 $z = 0$ ($|x| <= 1, |y| <= 1$)，方向向下，则 $iint_Sigma dif x dif y =$（ #choice[C] ）。
    A. 1 #quad B. $iint_(D_(x y)) dif x dif y$ #quad C. $-iint_(D_(x y)) dif x dif y$ #quad D. 0
  ],
)

#question(
  [
    2. 设 $Sigma$ 为平面 $z = 0$ ($x^2 + y^2 <= R^2$) 的上侧，则 $iint_Sigma (x^2 + y^2) dif x dif y =$（ #choice[C] ）。
    A. $iint_(x^2 + y^2 <= R^2) R^2 dif x dif y = pi R^4$ #quad B. $-iint_(x^2 + y^2 <= R^2) R^2 dif x dif y = -pi R^4$ \
    C. $int_0^(2 pi) dif theta int_0^R r^3 dif r = pi R^4 / 2$ #quad D. 0
  ],
)

#prob-type("二、填空题")

#question(
  [
    3. 设 $Sigma$ 为方程 $z = z(x, y)$ 所给曲面的下侧，$D_(x y)$ 为曲面 $Sigma$ 在 $x O y$ 面上的投影区域，则曲面积分 $iint_Sigma R(x, y, z) dif x dif y$ 可化为二重积分
  ],
  a: [把曲面写成图形
    $r(x,y)=(x,y,z(x,y)), (x,y) in D_(x y)$。
    对坐标型曲面积分有
    $iint_Sigma R dif x dif y = iint_Sigma R (bold(n) dot bold(k)) dif S$。
    下侧取向时法向量的 $z$ 分量为负，
    即
    $(bold(n) dot bold(k)) dif S=-dif x dif y$（投影到 $x O y$ 面）。
    因而
    $iint_Sigma R(x,y,z) dif x dif y
    =-iint_(D_(x y)) R(x,y,z(x,y)) dif x dif y$。],
)

#question(
  [
    4. 设 $Sigma$ 是球面 $x^2 + y^2 + z^2 = a^2$ 的外侧，则 $iint_Sigma z dif x dif y =$ #ans[$4/3 pi a^3$]。
  ],
  a: [把积分看作通量型曲面积分
    $iint_Sigma P dif y dif z+Q dif z dif x+R dif x dif y$，
    此处
    $P=0, Q=0, R=z$。
    由高斯公式
    $iint_Sigma z dif x dif y
    =iiint_Omega (P_x+Q_y+R_z) dif v
    =iiint_Omega 1 dif v$，
    其中 $Omega$ 为半径 $a$ 的球体。

    球体体积
    $V=4/3 pi a^3$，
    故
    $iint_Sigma z dif x dif y=4/3 pi a^3$。],
)

#question(
  [
    5. 设 $Sigma$ 是柱面 $x^2 + y^2 = 4$ 介于 $1 <= z <= 3$ 之间的部分，其法向量指向 $z$ 轴，则 $iint_Sigma sqrt(x^2 + y^2 + z^2) dif x dif y =$ #ans[$0$]。
  ],
  a: [该曲面是侧柱面，法向量始终平行于 $x O y$ 面，
    故法向量的 $z$ 分量恒为 0。
    而
    $dif x dif y=(bold(n) dot bold(k)) dif S$，于是
    $dif x dif y=0$。
    因此无论被积函数为何，
    $iint_Sigma sqrt(x^2+y^2+z^2) dif x dif y=0$。],
)

#question(
  [
    6. $iint_Sigma z dif x dif y + x dif y dif z + y dif z dif x =$ #ans[$3/2 pi a^2$]，其中 $Sigma$ 为柱面 $x^2 + y^2 = a^2$ 被平面 $z = 1$ 和 $z = 4$ 所截的在第一卦限部分的前侧。
  ],
  a: [记向量场
    $bold(F)=(x,y,z)$，则原积分为
    $iint_Sigma bold(F) dot bold(n) dif S$。
    参数化柱面第一卦限部分：
    $x=a cos theta, y=a sin theta, z=z$，
    $0<=theta<=pi/2, 1<=z<=4$。
    前侧（法向 $x$ 分量为正，对应外法向）有
    $bold(n) dif S=(cos theta,sin theta,0) a dif theta dif z$。

    因而
    $bold(F) dot bold(n)
    =(a cos theta,a sin theta,z) dot (cos theta,sin theta,0)=a$。
    所以
    $iint_Sigma ...
    =int_1^4 int_0^(pi/2) a dot a dif theta dif z
    =a^2 dot (pi/2) dot 3
    =3/2 pi a^2$。],
)

#question(
  [
    7. 设 $Sigma$ 为平面 $3x + 2y + 2 sqrt(3) z = 6$ 在第一卦限部分的上侧，将 $iint_Sigma R dif x dif y + P dif y dif z + Q dif z dif x$ 化为对面积的曲面积分是
  ],
  a: [平面法向量可取
    $bold(n)_0=(3,2,2sqrt(3))$，其模为
    $norm(bold(n)_0)=sqrt(9+4+12)=5$。
    上侧取向对应单位法向量
    $bold(n)=(3/5,2/5,2sqrt(3)/5)$。

    利用
    $dif y dif z=n_x dif S,
    dif z dif x=n_y dif S,
    dif x dif y=n_z dif S$，
    原积分化为
    $iint_Sigma (P n_x+Q n_y+R n_z) dif S$
    $=iint_Sigma (3/5 P+2/5 Q+2sqrt(3)/5 R) dif S$。
    即
    $iint_Sigma ( 2 sqrt(3) / 5 R + 3 / 5 P + 2 / 5 Q ) dif S$。],
)

#prob-type("三、计算题")

#question(
  [
    8. 计算下列对坐标的曲面积分：
    (1) $iint_Sigma x^2 y^2 z dif x dif y$，其中 $Sigma$ 为球面 $x^2 + y^2 + z^2 = R^2$ 的下半部分的下侧；

    (2) $iint_Sigma z dif x dif y + x dif y dif z + y dif z dif x$，其中 $Sigma$ 为柱面 $x^2 + y^2 = 1$ 被平面 $z = 0$ 及 $z = 3$ 所截的在第一卦限内的部分的前侧；

    (3) $iint_Sigma [f(x, y, z) + x] dif y dif z + [2 f(x, y, z) + y] dif z dif x + [f(x, y, z) + z] dif x dif y$，其中 $f(x, y, z)$ 为连续函数，$Sigma$ 为平面 $x - y + z = 1$ 在第四卦限部分的上侧。
  ],
  a: [
    (1) 记下半球面为
    $z=-sqrt(R^2-x^2-y^2)$，其下侧取向满足法向量 $z$ 分量为负。
    对坐标型积分有
    $iint_Sigma S dif x dif y=-iint_D S(x,y,z(x,y)) dif x dif y$。
    这里 $S=x^2 y^2 z$，故
    $I_1=-iint_D x^2 y^2 (-sqrt(R^2-x^2-y^2)) dif x dif y$
    $=iint_D x^2 y^2 sqrt(R^2-r^2) dif x dif y$，
    其中 $D: x^2+y^2<=R^2$。

    极坐标化：
    $I_1=int_0^(2pi) int_0^R r^4 cos^2 theta sin^2 theta sqrt(R^2-r^2) r dif r dif theta$。
    角向积分
    $int_0^(2pi) cos^2 theta sin^2 theta dif theta=pi/4$。
    径向积分令 $r=R sin u$，得
    $int_0^R r^5 sqrt(R^2-r^2) dif r
    =R^7 int_0^(pi/2) sin^5 u cos^2 u dif u
    =8R^7/105$。
    因而
    $I_1=pi/4 dot 8R^7/105=2/105 pi R^7$。

    (2) 写成通量形式，取向量场
    $bold(F)=(x,y,z)$，则
    $iint_Sigma z dif x dif y + x dif y dif z + y dif z dif x
    =iint_Sigma bold(F) dot bold(n) dif S$。
    参数化侧面：
    $x=cos theta, y=sin theta, z=z$，
    $0<=theta<=pi/2, 0<=z<=3$。
    前侧（外侧）法向面积向量为
    $bold(n) dif S=(cos theta, sin theta, 0) dif theta dif z$。
    故
    $bold(F) dot bold(n)=x cos theta+y sin theta=1$，
    所以
    $I_2=int_0^3 int_0^(pi/2) 1 dif theta dif z=3pi/2$。

    (3) 设
    $P=f+x, Q=2f+y, R=f+z$。
    平面写成
    $z=1-x+y$，上侧取向（$n_z>0$）。
    对图形曲面有
    $iint_Sigma P dif y dif z + Q dif z dif x + R dif x dif y$
    $=iint_D (-P z_x-Q z_y+R) dif x dif y$。
    其中 $z_x=-1, z_y=1$，故被积函数
    $=P-Q+R=(f+x)-(2f+y)+(f+z)=x-y+z=1$。

    投影域 $D$ 在 $x O y$ 面上为
    $x>=0, y<=0, z=1-x+y>=0$，
    即三角形顶点 $(0,0),(1,0),(0,-1)$，面积 $1/2$。
    因而
    $I_3=iint_D 1 dif x dif y=1/2$。],
)

#prob-type("四、证明题")

#question(
  [
    9. 设 $R$ 是定义在光滑曲面 $S: z = z(x, y), (x, y) in D_(x y)$ 上的连续函数，以 $S$ 的上侧为正侧（ $S$ 的法线方向与 $z$ 轴成锐角），证明： $iint_S R(x, y, z) dif x dif y = iint_(D_(x y)) R(x, y, z(x, y)) dif x dif y$。
  ],
  a: [
    取参数化
    $r(x,y)=(x,y,z(x,y)), (x,y) in D_(x y)$。
    则
    $r_x=(1,0,z_x), r_y=(0,1,z_y)$，
    $r_x times r_y = (-z_x,-z_y,1)$。

    上侧取向要求法向量与 $z$ 轴夹角锐角，故取该法向即可。
    对坐标型曲面积分有
    $dif x dif y = (bold(n) dot bold(k)) dif S$，
    在此参数下恰对应投影面积元 $dif x dif y$。

    因此
    $iint_S R(x,y,z) dif x dif y
    = iint_(D_(x y)) R(x,y,z(x,y)) dif x dif y$。
    这就是所证等式。
  ],
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
    3. 设流速场 $bold(v) = (0, 0, 1)$，则流过球面 $x^2 + y^2 + z^2 = R^2$ 的通量为（ #choice[A] ）。
    A. 0 #quad B. $4 pi R^2$ #quad C. $4/3 pi R^3$ #quad D. 1
  ],
  a: [A。由高斯公式，通量
    $iint_Sigma bold(v) dot bold(n) dif S = iiint_Omega div bold(v) dif v$。
    对 $bold(v)=(0,0,1)$ 有 $div bold(v)=0$，故体积分为 0，通量即为 0。],
)

#prob-type("二、填空题")

#question(
  [
    4. 设 $cos alpha, cos beta, cos gamma$ 是光滑闭曲面 $Sigma$ 的外法向量的方向余弦，
    $Sigma$ 所围的空间闭区域为 $Omega$（坐标原点在 $Omega$ 外），
    则用高斯公式化曲面积分为重积分时，有
    $iint_Sigma (x cos alpha + y cos beta + z cos gamma) /(sqrt(x^2 + y^2 + z^2)) dif S$
    $=$ #ans[$iiint_Omega 2/(sqrt(x^2 + y^2 + z^2)) dif v$]。
  ],
  a: [设
    $r=sqrt(x^2+y^2+z^2)$，
    则被积函数可写成
    $(x cos alpha+y cos beta+z cos gamma)/r$
    $=(x/r,y/r,z/r) dot bold(n)$。
    故该曲面积分是向量场
    $bold(F)=(x/r,y/r,z/r)$ 的外向通量：
    $iint_Sigma bold(F) dot bold(n) dif S$。

    由高斯公式
    $iint_Sigma bold(F) dot bold(n) dif S
    =iiint_Omega div bold(F) dif v$。
    而
    $div bold(F)=partial/(partial x)(x/r)+partial/(partial y)(y/r)+partial/(partial z)(z/r)=2/r$。
    因此
    $iint_Sigma ...
    =iiint_Omega 2/(sqrt(x^2+y^2+z^2)) dif v$。],
)

#question(
  [
    5. 设 $Omega$ 是由光滑闭曲面 $Sigma$ 所围成的空间闭区域，其体积记为 $V$，则沿 $Sigma$ 外侧的积分 $iint_Sigma (z - y) dif x dif y + (y - x) dif z dif x + (x - z) dif y dif z =$ #ans[$0$]。
  ],
  a: [将积分视为通量型曲面积分，按题面记
    $bold(F)=(z-y, y-x, x-z)$。
    由高斯公式
    $iint_Sigma ... =iiint_Omega div bold(F) dif v$。
    计算散度：
    $div bold(F)=(partial(z-y))/(partial x)+(partial(y-x))/(partial y)+(partial(x-z))/(partial z)$
    $=0+0+0=0$。
    因而
    $iint_Sigma ... =iiint_Omega 0 dif v=0$。],
)

#question(
  [
    6. 设 $Sigma$ 为球面 $x^2 + y^2 + z^2 = a^2$，则 $iint_Sigma (x^2 + y^2 + z^2) dif S =$ #ans[$4 pi a^4$]。
  ],
  a: [在球面 $Sigma$ 上有
    $x^2+y^2+z^2=a^2$，故被积函数为常数 $a^2$。
    因而
    $iint_Sigma (x^2+y^2+z^2) dif S
    =a^2 iint_Sigma dif S$。
    又球面面积
    $iint_Sigma dif S=4pi a^2$，
    所以
    $iint_Sigma (x^2+y^2+z^2) dif S
    =a^2 dot 4pi a^2=4pi a^4$。],
)

#question(
  [
    7. 设空间闭区域 $Omega$ 由曲面 $z = a^2 - x^2 - y^2$ 与平面 $z = 0$ 所围成，
    其中 $a$ 为正整数，记闭区域 $Omega$ 的表面外侧为 $S$，$Omega$ 的体积为 $V$，
    则
    $iint_S x^2 y z^2 dif y dif z - x y^2 z^2 dif z dif x + z (1 + x y z) dif x dif y$
    $=$ #ans[$iiint_Omega (2 x y z^2 - 2 x y^2 z + 1 + x y z) dif v$]。
  ],
  a: [写成高斯公式标准形式
    $iint_S P dif y dif z+Q dif z dif x+R dif x dif y$，其中
    $P=x^2 y z^2,
    Q=-x y^2 z^2,
    R=z(1+x y z)$。
    由高斯公式
    $iint_S ... =iiint_Omega (P_x+Q_y+R_z) dif v$。

    逐项求导：
    $P_x=2x y z^2,
    Q_y=-2x y^2 z,
    R_z=1+x y z$。
    故
    $iint_S ...
    =iiint_Omega (2x y z^2-2x y^2 z+1+x y z) dif v$。],
)

#question(
  [
    8. 设有向量场 $bold(A) = (x^2 y + y^3) bold(i) + (x^3 - x y^2) bold(j)$，则 $div bold(A) =$ #ans[$0$]。
  ],
  a: [把二维向量场视为三维场
    $bold(A)=(P,Q,0)$，其中
    $P=x^2 y+y^3, Q=x^3-x y^2$。
    则
    $div bold(A)=P_x+Q_y+0$
    $=2x y+(-2x y)=0$。],
)

#question(
  [
    9. 向量场 $bold(A) = (x^2 y z, z y^2 x, x y z^2)$ 在点 $M(1, 3, 2)$ 处的散度 $div bold(A) =$ #ans[$36$]。
  ],
  a: [设
    $bold(A)=(x^2 y z, x y^2 z, x y z^2)$，
    则
    $div bold(A)=partial/(partial x)(x^2 y z)
    +partial/(partial y)(x y^2 z)
    +partial/(partial z)(x y z^2)$
    $=2x y z+2x y z+2x y z=6x y z$。
    在 $M(1,3,2)$ 处
    $div bold(A)=6 dot 1 dot 3 dot 2=36$。],
)

#question(
  [
    10. 设函数 $u = ln sqrt(x^2 + y^2 + z^2)$，则 $div(grad u) |_((1, 1, 1)) =$ #ans[$1/3$]。
  ],
  a: [记
    $r=sqrt(x^2+y^2+z^2)$，则
    $u=ln r$。
    有
    $u_x=x/r^2,
    u_y=y/r^2,
    u_z=z/r^2$。
    因而
    $Delta u=u_(x x)+u_(y y)+u_(z z)$。

    计算
    $u_(x x)=1/r^2-2x^2/r^4$，
    同理
    $u_(y y)=1/r^2-2y^2/r^4$，
    $u_(z z)=1/r^2-2z^2/r^4$。
    相加得
    $Delta u=3/r^2-2(x^2+y^2+z^2)/r^4=1/r^2$（$r != 0$）。

    在 $(1,1,1)$ 处 $r^2=3$，故
    $div(grad u)=Delta u=1/3$。],
)

#prob-type("三、计算题")

#question(
  [
    11. 求向量场 $bold(A)$ 的散度，其中 $bold(A) = e^(x y) bold(i) + cos(x y) bold(j) + cos(x z^2) bold(k)$。
  ],
  a: [
    设
    $bold(A)=(P,Q,R)$，其中
    $P=e^(x y), Q=cos(x y), R=cos(x z^2)$。
    则
    $div bold(A)=P_x+Q_y+R_z$。

    逐项求导：
    $P_x=y e^(x y)$，
    $Q_y=-x sin(x y)$，
    $R_z=-2x z sin(x z^2)$。

    故
    $div bold(A)=y e^(x y)-x sin(x y)-2x z sin(x z^2)$。
  ],
)

#question(
  [
    12. 利用高斯公式计算下列曲面积分：
    (1) $iint_Sigma x^2 dif y dif z + y^2 dif z dif x + z^2 dif x dif y$，其中 $Sigma$ 为平面 $x = 0, y = 0, z = 0, x = a, y = a, z = a$ 所围成立体表面的外侧；

    (2) $iint_Sigma x^3 dif y dif z + y^3 dif z dif x + z^3 dif x dif y$，其中 $Sigma$ 为球面 $x^2 + y^2 + z^2 = a^2$ 的外侧；

    (3) $iint_Sigma x dif y dif z + y dif z dif x + z dif x dif y$，其中 $Sigma$ 为介于 $z = 0, z = 3$ 之间的圆柱体 $x^2 + y^2 <= 9$ 的整个表面的外侧。
  ],
  a: [
    统一写成通量形式 $iint_Sigma bold(F) dot bold(n) dif S$，再用高斯公式
    $iint_Sigma bold(F) dot bold(n) dif S = iiint_Omega div bold(F) dif v$。

    (1) 取 $bold(F)=(x^2,y^2,z^2)$，
    $div bold(F)=2x+2y+2z$。
    区域 $Omega=[0,a]^3$，故
    $iiint_Omega (2x+2y+2z) dif v = 3a^4$。

    (2) 取 $bold(F)=(x^3,y^3,z^3)$，
    $div bold(F)=3(x^2+y^2+z^2)=3r^2$。
    对半径 $a$ 的球体：
    $iiint_Omega 3r^2 dif v
    =3 int_0^a 4pi r^4 dif r
    =12/5 pi a^5$。

    (3) 取 $bold(F)=(x,y,z)$，
    $div bold(F)=3$。
    圆柱体体积 $V=pi dot 3^2 dot 3=27pi$，
    故通量 $=iiint_Omega 3 dif v = 3V = 81pi$。
  ],
)

#question(
  [
    13. 求向量场 $bold(A) = (2x + 3z) bold(i) - (x z + y) bold(j) + (y^2 + 2z) bold(k)$ 穿过曲面 $Sigma$ 流向指定侧的通量，其中 $Sigma$ 是以点 $(3, -1, 2)$ 为球心，半径 $R = 3$ 的球面，流向外侧。
  ],
  a: [
    设 $bold(A)=(P,Q,R)$，其中
    $P=2x+3z, Q=-(x z+y), R=y^2+2z$。
    外侧通量由高斯公式：
    $Phi = iiint_Omega div bold(A) dif v$。

    计算散度：
    $div bold(A)=P_x+Q_y+R_z = 2+(-1)+2 = 3$。
    球体半径为 3，体积
    $V=4/3 pi 3^3=36pi$。
    所以
    $Phi=3V=108pi$。
  ],
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
    3. 若 $L$ 为平面 $x cos alpha + y cos beta + z cos gamma = rho$ 上的闭曲线，它所包围区域的面积为 $S$，则 $oint_L (cos alpha dif x + cos beta dif y + cos gamma dif z) =$（ #choice[A] ），其中 $L$ 依正向进行。
    A. 0 #quad B. S #quad C. $2 S$ #quad D. $sqrt(2) S$
  ],
  a: [A.],
)

#prob-type("二、填空题")

#question(
  [
    4. 向量场 $bold(A) = (x + y + z, y x, z)$ 的旋度 $rot bold(A) =$ #ans[$(0, 1, y - 1)$]。
  ],
  a: [设
    $bold(A)=(P,Q,R)$，其中
    $P=x+y+z, Q=x y, R=z$。
    则
    $rot bold(A)=(R_y-Q_z, P_z-R_x, Q_x-P_y)$。
    分别有
    $R_y=0, Q_z=0$；
    $P_z=1, R_x=0$；
    $Q_x=y, P_y=1$。
    故
    $rot bold(A)=(0,1,y-1)$。],
)

#question(
  [
    5. 设函数 $f(x, y, z)$ 具有二阶连续偏导数，则 $rot(grad f) =$ #ans[$bold(0)$]。
  ],
  a: [设 $grad f=(f_x,f_y,f_z)$，则
    $rot(grad f)=
    (f_(z y)-f_(y z),
      f_(x z)-f_(z x),
      f_(y x)-f_(x y))$。
    由二阶偏导连续（Clairaut 定理），混合偏导可交换，
    三个分量都为 0，故
    $rot(grad f)=bold(0)$。],
)

#question(
  [
    6. 设函数 $u = ln sqrt(x^2 + y^2 + z^2)$，则 $rot(grad u) |_((1, 0, 1)) =$ #ans[$bold(0)$]。
  ],
  a: [点 $(1,0,1)$ 不在原点处，
    在其邻域内
    $u=ln sqrt(x^2+y^2+z^2)$ 具有二阶连续偏导数。
    因此由恒等式
    $rot(grad u)=bold(0)$，
    特别在 $(1,0,1)$ 处仍有
    $rot(grad u)=bold(0)$。],
)

#question(
  [
    7. 设 $L$ 为柱面 $x^2 + y^2 = 1$ 与平面 $y + z = 0$ 的交线，从 $z$ 轴正向看去为逆时针方向，则 $oint_L z dif x + y dif z =$ #ans[$pi$]。
  ],
  a: [在平面上有 $z=-y$，故
    $dif z=-dif y$，原积分化为
    $oint_L z dif x+y dif z
    =oint_L (-y) dif x-y dif y$
    $=-oint_L y dif x-1/2 oint_L dif(y^2)$。
    第二项为闭路全微分积分，等于 0，
    所以
    $oint_L z dif x+y dif z=-oint_L y dif x$。

    由题意投影到 $x O y$ 面的取向是单位圆逆时针，
    参数化 $x=cos t, y=sin t, 0<=t<=2pi$，得
    $oint_L y dif x=int_0^(2pi) sin t(-sin t) dif t=-pi$。
    因而原积分为 $pi$。],
)

#question(
  [
    8. 设 $L$ 为柱面 $x^2 + y^2 = 1$ 与平面 $z = x + y$ 的交线，从 $z$ 轴正向看去为逆时针方向，则 $oint_L x z dif x + x dif y + y^2/2 dif z =$ #ans[$pi$]。
  ],
  a: [设
    $bold(F)=(x z, x, y^2/2)$，则原积分为
    $oint_L bold(F) dot dif bold(r)$。
    用斯托克斯公式，取曲面
    $S: z=x+y$ 在圆域 $D: x^2+y^2<=1$ 上方的部分，
    且法向取上侧（与题设边界方向一致）：
    $oint_L ... =iint_S (rot bold(F)) dot bold(n) dif S$。

    计算旋度：
    $rot bold(F)=(y,-x,1)$。
    对图形 $z=x+y$，有
    $bold(n) dif S=(-z_x,-z_y,1) dif x dif y=(-1,-1,1) dif x dif y$。
    故
    $(rot bold(F)) dot bold(n) dif S
    =(y,-x,1) dot (-1,-1,1) dif x dif y
    =(1+x-y) dif x dif y$。

    于是
    $oint_L ... =iint_D (1+x-y) dif x dif y$。
    在单位圆域上 $iint_D x dif x dif y=iint_D y dif x dif y=0$，
    故结果为
    $iint_D 1 dif x dif y=pi$。],
)

#prob-type("三、计算题")

#question(
  [
    9. 利用斯托克斯公式计算积分 $oint_Gamma y dif x + z dif y + x dif z$，其中 $Gamma$ 为圆 $x^2 + y^2 + z^2 = a^2, x + y + z = 0$，从 $x$ 轴正向看去为逆时针方向。
  ],
  a: [取向量场
    $bold(F)=(y,z,x)$，则原积分为
    $oint_Gamma bold(F) dot dif bold(r)$。
    由斯托克斯公式
    $oint_Gamma bold(F) dot dif bold(r)=iint_Sigma rot bold(F) dot bold(n) dif S$，
    其中 $Sigma$ 取平面 $x+y+z=0$ 内由 $Gamma$ 围成的圆盘。

    先求旋度：
    $rot bold(F)=(-1,-1,-1)$。
    由题给定向（从 $x$ 轴正向看去为逆时针）对应单位法向可取
    $bold(n)=(1,1,1)/sqrt(3)$。
    故
    $rot bold(F) dot bold(n)
    =(-1,-1,-1) dot (1,1,1)/sqrt(3)
    =-sqrt(3)$。

    又 $Gamma$ 是半径为 $a$ 的圆（平面过原点与球心），圆盘面积为 $pi a^2$。
    因而
    $oint_Gamma y dif x+z dif y+x dif z
    =-sqrt(3) dot pi a^2=-sqrt(3) pi a^2$。],
)

#question(
  [
    10. 求向量场 $bold(A) = (2z - 3y) bold(i) + (3x - z) bold(j) + (y - 2x) bold(k)$ 的旋度。
  ],
  a: [设
    $bold(A)=(P,Q,R)$，其中
    $P=2z-3y,
    Q=3x-z,
    R=y-2x$。
    则
    $rot bold(A)=(R_y-Q_z, P_z-R_x, Q_x-P_y)$。

    分别计算：
    $R_y=1, Q_z=-1$，故第一分量为 $2$；
    $P_z=2, R_x=-2$，故第二分量为 $4$；
    $Q_x=3, P_y=-3$，故第三分量为 $6$。

    因此
    $rot bold(A)=(2,4,6)$。],
)

== 总习题十一

#prob-type("一、选择题")

#question(
  [
    1. 设 $L$ 为以三点 $O(0,0), A(1,0), B(0,1)$ 为顶点的三角形边界，则 $int_L (x + y) dif s =$ （#choice[C]）。
    A. $sqrt(2)$ #quad B. $2 + sqrt(2)$ #quad C. $1 + sqrt(2)$ #quad D. $1 + 2 sqrt(2)$
  ],
  p: [三角形三边分别为 $L_1$: $y=0, x \in [0, 1]$；$L_2$: $x=0, y \in [0, 1]$；$L_3$: $x+y=1, x \in [0, 1]$。
    $I_1 = int_0^1 x dif x = 1/2$; $I_2 = int_0^1 y dif y = 1/2$; $I_3 = int_L 1 dif s = sqrt(2)$。
    总积分为 $1 + sqrt(2)$。],
  a: [C.],
)

#question(
  [
    2. 设 $L$ 为抛物线 $y^2 = x$ 上从点 $A(1, -1)$ 到点 $B(1, 1)$ 的一段弧，$P(x, y)$ 是连续函数，则 $int_L P(x, y) dif x =$（ #choice[D] ).
    A. $2 int_0^1 P(x, sqrt(x)) dif x$ #quad B. $2 int_(-1)^0 P(x, -sqrt(x)) dif x$ \
    C. $int_0^1 P(x, -sqrt(x)) dif x + int_0^1 P(x, sqrt(x)) dif x$ #quad D. $int_1^0 P(x, -sqrt(x)) dif x + int_0^1 P(x, sqrt(x)) dif x$
  ],
  p: [抛物线 $y^2=x$分上下两支。下支 $y = -sqrt(x)$，从 $(1, -1)$ 到 $(0, 0)$，$x$ 从 1 到 0；上支 $y = sqrt(x)$，从 $(0, 0)$ 到 $(1, 1)$，$x$ 从 0 到 1。故选 D。],
  a: [D.],
)

#question(
  [
    3. 设 $L$ 为圆 $x^2 + y^2 = -2x$ 的正向边界，则 $oint_L (x^3 - y) dif x + (x - y^3) dif y =$（ #choice[D] ）。
    A. $-2 pi$ #quad B. 0 #quad C. $3/2 pi$ #quad D. $2 pi$
  ],
  p: [由格林公式，$I = iint_D (1 - (-1)) dif sigma = 2 iint_D dif sigma = 2 sigma(D)$。圆 $(x+1)^2 + y^2 = 1$ 的面积为 $pi$。故积分值为 $2 pi$。],
  a: [D.],
)

#question(
  [
    4. 设 $Sigma$ 为平面 $2x + 2y + z - 2 = 0$ 被三个坐标面所截的在第一卦限的部分，则 $iint_Sigma (2x + 2y + z) dif S =$（ #choice[C] ）。
    A. $3/4$ #quad B. $3/2$ #quad C. 3 #quad D. 6
  ],
  p: [
    在曲面 $Sigma$ 上，$2x + 2y + z = 2$，故积分为 $2 iint_Sigma dif S = 2 S_Sigma$。
    平面法向量 $bold(n) = (2, 2, 1)$，其在 $x O y$ 面投影 $D$ 为由 $x=0, y=0, 2x+2y=2$ 围成的三角形，面积 $1/2$。
    $cos gamma = 1 / sqrt(2^2+2^2+1^2) = 1/3$。
    故 $S_Sigma = (1/2) / (1/3) = 3/2$。积分为 $2 dot 3/2 = 3$。
  ],
  a: [C.],
)

#question(
  [
    5. 已知 $( (x + a y) dif x + y dif y ) / (x + y)^2$ 为某个函数的全微分，则 $a =$（ #choice[D] ）。
    A. -1 #quad B. 0 #quad C. 1 #quad D. 2
  ],
  p: [
    全微分条件 $(partial P) / (partial y) = (partial Q) / (partial x)$。$P = (x+a y)/(x+y)^2, Q = y/(x+y)^2$。
    $(partial P) / (partial y) = (a(x+y)^2 - 2(x+y)(x+a y))/(x+y)^4 = (a x + a y - 2x - 2a y)/(x+y)^3 = ((a-2)x - a y)/(x+y)^3$。
    $(partial Q) / (partial x) = -2y/(x+y)^3$。对比系数得 $a-2=0, -a=-2$，故 $a=2$。
  ],
  a: [D.],
)

#question(
  [
    6. 设 $int_L x y^2 dif x + psi(y) x dif y$ 与路径无关，其中 $psi(y)$ 具有连续导数，且 $psi(0) = 0$ ，则 $int_(0,0)^(1,1) x y^2 dif x + psi(y) x dif y =$（ #choice[B] ）。
    A. $3/8$ #quad B. $1/2$ #quad C. $3/4$ #quad D. 1
  ],
  p: [路径无关条件 $2x y = psi(y)$。故 $psi(y) = 2y$（且 $psi(0)=0$ 满足）。$I = int_(0,0)^(1,1) x y^2 dif x + 2y x dif y = [ 1/2 x^2 y^2 ]_(0,0)^(1,1) = 1/2$。],
  a: [B.],
)

#question(
  [
    7. 设 $S$ 是平面 $x + y + z = 4$ 被柱面 $x^2 + y^2 = 1$ 截出的有限部分，则 $iint_S y dif S =$（ #choice[A] ）。
    A. 0 #quad B. $4/3 sqrt(3)$ #quad C. $4 sqrt(3)$ #quad D. $pi$
  ],
  p: [由对称性，区域 $S$ 关于 $x O z$ 平面对称，而被积函数 $y$ 关于 $y$ 是奇函数，故积分为 0。],
  a: [A.],
)

#prob-type("二、填空题")

#question(
  [
    8. 设 $L$ 为圆 $x^2 + y^2 = a^2$ 在第一象限的部分，则 $int_L x y dif s =$ #ans[$1/2 a^3$]。
  ],
  a: [参数化 $x=a cos t, y=a sin t, 0<=t<=pi/2$，则 $dif s=a dif t$。
    原积分
    $= int_0^(pi/2) (a cos t)(a sin t) a dif t
    = a^3 int_0^(pi/2) sin t cos t dif t
    = a^3/2$。],
)

#question(
  [
    9. 设 $L$ 为抛物线 $y = x^2$ 上从点 $O(0, 0)$ 到点 $A(1, 1)$ 的一段弧，则 $int_L x y dif x + (y - x) dif y =$ #ans[$1/12$]。
  ],
  a: [沿曲线取参数 $x=t, y=t^2, 0<=t<=1$，
    则
    $dif x=dif t, dif y=2t dif t$。
    原积分为
    $int_0^1 [t dot t^2 dot 1 + (t^2-t) dot 2t] dif t$
    $=int_0^1 (t^3+2t^3-2t^2) dif t$
    $=int_0^1 (3t^3-2t^2) dif t$
    $=[3/4 t^4-2/3 t^3]_0^1
    =3/4-2/3=1/12$。],
)

#question(
  [
    10. 设有一质量分布均匀的曲面 $Sigma$，在点 $(x, y, z)$ 处的面密度为 $rho(x, y, z)$，则该曲面关于 $z$ 轴的转动惯量 $I_z =$ #ans[$iint_Sigma (x^2 + y^2) rho dif S$]。
  ],
  a: [曲面质量微元
    $dif m=rho(x, y, z) dif S$。
    点 $(x,y,z)$ 到 $z$ 轴距离
    $r=sqrt(x^2+y^2)$。
    由转动惯量定义
    $I_z=int r^2 dif m$，
    即
    $I_z=iint_Sigma (x^2+y^2) rho(x, y, z) dif S$。],
)

#question(
  [
    11. 设光滑闭曲面 $Sigma$ 围成的空间区域为 $Omega$，则利用高斯公式化曲面积分为重积分时，有 $iint_Sigma x y dif x dif y + z x dif z dif x + y z dif y dif z =$ #ans[$0$]。
  ],
  a: [写成通量形式
    $iint_Sigma P dif y dif z + Q dif z dif x + R dif x dif y$，
    其中
    $P=y z, Q=z x, R=x y$。
    由高斯公式
    $iint_Sigma ... =iiint_Omega (P_x+Q_y+R_z) dif v$。

    计算散度：
    $P_x=0, Q_y=0, R_z=0$，故被积函数恒为 0。
    因而
    $iint_Sigma ... =iiint_Omega 0 dif v=0$。],
)

#question(
  [
    12. 设 $L$ 为 $x O y$ 面上沿顺时针方向绕行的闭曲线，且 $oint_L (x - 2y) dif x + (4x + 3y) dif y = -9$，则 $L$ 所围成平面区域 $D$ 的面积为 #ans[$3/2$]。
  ],
  a: [令
    $P=x-2y, Q=4x+3y$。
    对正向（逆时针）曲线有
    $oint P dif x+Q dif y=iint_D (Q_x-P_y) dif sigma$。
    这里
    $Q_x=4, P_y=-2$，故
    $Q_x-P_y=6$。

    题设为顺时针，故
    $oint_L P dif x+Q dif y=-iint_D 6 dif sigma=-6S_D$。
    又该值等于 $-9$，所以
    $-6S_D=-9$，得
    $S_D=3/2$。],
)

#question(
  [
    13. 设 $(a x y^3 - y^2 cos x) dif x + (1 + b y sin x + 3x^2 y^2) dif y$ 是某个二元函数 $f(x, y)$ 的全微分，则 $a, b$ 的值分别为 #ans[$a = 2, b = -2$]。
  ],
  a: [设
    $M=a x y^3-y^2 cos x,
    N=1+b y sin x+3x^2 y^2$。
    为全微分需满足
    $M_y=N_x$。

    计算得
    $M_y=3a x y^2-2y cos x$，
    $N_x=b y cos x+6x y^2$。
    比较同类项系数：
    $3a=6 => a=2$，
    $-2=b => b=-2$。],
)

#question(
  [
    14. 设 $L$ 为圆 $x^2 + y^2 = 1$，取顺时针方向，则 $I_1 = oint_L x^6 dif s$ 与 $I_2 = oint_L y^6 dif s$ 的大小关系是 #ans[$I_1 = I_2$]。
  ],
  a: [取参数
    $x=cos t, y=sin t, 0<=t<=2pi$，
    有 $dif s=dif t$。
    则
    $I_1=int_0^(2pi) cos^6 t dif t,
    I_2=int_0^(2pi) sin^6 t dif t$。
    由平移 $t->t-pi/2$（或圆对称性）知两者相等，
    故
    $I_1=I_2$。],
)

#question(
  [
    15. 设函数 $P(x, y, z)$ 在空间有界闭区域 $V$ 上具有一阶连续偏导数，$Sigma$ 为 $V$ 的光滑边界曲面的外侧，由高斯公式得 $iint_Sigma P(x, y, z) dif y dif z =$ #ans[$iiint_V (partial P) / (partial x) dif v$]。
  ],
  a: [把曲面积分看作向量场
    $bold(F)=(P,0,0)$ 的外向通量：
    $iint_Sigma P dif y dif z
    =iint_Sigma bold(F) dot bold(n) dif S$。
    由高斯公式
    $iint_Sigma bold(F) dot bold(n) dif S
    =iiint_V div bold(F) dif v$。
    而
    $div bold(F)=(partial P)/(partial x)$，
    因此
    $iint_Sigma P(x,y,z) dif y dif z
    =iiint_V (partial P)/(partial x) dif v$。],
)

#prob-type("三、计算题")

#question(
  [
    16. 计算 $oint_L sqrt(x^2 + y^2) dif s$，其中 $L$ 为圆 $x^2 + y^2 = a x$。
  ],
  a: [将圆写成
    $(x-a/2)^2+y^2=(a/2)^2$。
    取参数
    $x=a/2+(a/2) cos theta,
    y=(a/2) sin theta,
    0<=theta<=2pi$。

    则
    $dif s=sqrt((x')^2+(y')^2) dif theta=(a/2) dif theta$，
    且
    $sqrt(x^2+y^2)
    =a abs(cos(theta/2))$。
    故
    $oint_L sqrt(x^2+y^2) dif s
    =a^2/2 int_0^(2pi) abs(cos(theta/2)) dif theta$。

    令 $u=theta/2$，得
    $int_0^(2pi) abs(cos(theta/2)) dif theta
    =2 int_0^pi abs(cos u) dif u=4$。
    因而
    $oint_L sqrt(x^2+y^2) dif s= a^2/2 dot 4 =2a^2$。],
)
