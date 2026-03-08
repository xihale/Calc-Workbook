#import "../template.typ": *

= 第九章 多元函数微分法及其应用

== 第一节 多元函数的基本概念

#prob-type("一、选择题")

#question([
  1. $lim_((x,y) arrow (0,0)) (x^2 y)/(x^4 + y^2)$
A. $= 0$ 

B. 不存在

C. $= 1/2$ 

D. 存在但不等于 0 或 $1/2$
], a: [B.])

#question([
  2. 设函数 $ f(x, y) = cases(x sin(1/y) + y sin(1/x) & "if" x y != 0, 0 & "if" x y = 0) $ 则 $lim_((x, y) arrow (0, 0)) f(x, y) = underline("          ")$ .
A. 不存在

B. 1 

C. 0 

D. 2
], a: [])

#question([
  3. 设函数 $ f(x, y) = cases((x y)/(sqrt(x^2 + y^2)) & "if" x^2 + y^2 != 0, 0 & "if" x^2 + y^2 = 0) $ 则 $f(x, y)$ ( ).
A. 处处连续

B. 处处有极限, 但不连续

C. 仅在点 $(0,0)$ 处连续

D. 除点 $(0,0)$ 外处处连续
], a: [A.])

#prob-type("二、填空题")

#question([
  4. 函数 $z = sqrt(ln(x + y))$ 的定义域为
], a: [${(x, y) | x + y >= 1}$])

#question([
  5. 设函数 $f(x, y) = x^2 + y^2 + x y ln (y/x)$ ，则 $f(k x, k y) =$  #underline("          ") .
], a: [$k^2 f(x,y)$])

#question([
  6. $lim_((x,y) arrow (0,1)) ( ln (y + (e)^(x^2)))( sqrt (x^2 + y^2)) = underline("          ")$
], a: [In])

#question([
  7. 设函数 $ f(x, y) = cases( (( tan (x^2 + y^2))/(x^2 + y^2)), & (x, y) != (0, 0),   A, & (x, y) = (0, 0), ) $ 要使得 $f(x, y)$ 在点(0,0)处连续，则 $A =$  #underline("          ") .
], a: [1.])

#question([
  8. 函数 $f(x, y) = (1/x^2 - y^2) cos (y/x)$ 的间断点为
], a: [$((x,y) | y = plus.minus x)$])

#prob-type("三、计算题")

#question([
  9. 求下列函数的定义域，并画出定义域的图形：
(1) $z = sqrt (1 - x^2 - y^2)$ ; 

(2) $z = ln (x + y)$ ; 

(3) $z = ((1)/( ln (x + y)))$ 

(4) $z = ln (x y - 1)$
], a: [jpg)])

#question([
  10. 求下列极限：
(1) $lim_((x,y) arrow (0,0))((2 - sqrt (x y + 4))/(x y))$ ; 

(2) $lim_((x,y) arrow (0,0)) (x y)( sqrt (2 - e^(x y)) - 1);$ 

(3) $lim_((x,y) arrow (2,0))(tan x y/y)$ ; 

(4) $lim_((x,y) arrow (0,0))((1 - cos (x^2 + y^2))/((x^2 + y^2) (e)^(x^2 y^2))).$
], a: [(1) $-(1/4)$ ;
(2) -2;
(3) 2;])

== 第二节 偏导数

#prob-type("一、选择题")

#question([
  1. 设函数 $u = (y/x)$ ，则 $(partial u/partial x) = ( " " )$
A. $(x/x^2 + y^2)$ 

B. $-((y)/(x^2 + y^2))$ 

C. $((y)/(x^2 + y^2))$ 

D. $-((x)/(x^2 + y^2))$
], a: [B.])

#question([
  2. 设函数 $f(x, y) = sqrt (y/x)$ ，则 $f_x'(2, 1) = ( " " )$ .
A. $-(1/4)$ 

B. $(1/4)$ 

C. $-(1/2)$ 

D. $(1/2)$
], a: [A.])

#question([
  3. 设函数 $z = y^x$ ，则 $( (partial z) / (partial x) + (partial z) / (partial y) ) |_(x = 2, y = 1) = underline("          ")$
A. 2 

B. $1 + ln 2$ 

C. 0 

D. 1
], a: [A.])

#prob-type("二、填空题")

#question([
  4. 设函数 $z = sin (3 x - y) + y$ ，则 $((partial z) / (partial x)) |_(x=2, y=1) = $
], a: [3cos5.])

#question([
  5. 设函数 $u = x y + (y/x)$ , 则 $(partial^2 u/partial x^2) =$  #underline("          ") .
], a: [$(2 y/x^3)$])

#question([
  6. 设函数 $u = x ln x y$ ，则 $ (partial^2 u) / (partial x partial y) $ =$  #underline("          ") .
], a: [$(1/y)$])

#prob-type("三、计算题")

#question([
  7. 求下列函数的偏导数：
(1) $z = sqrt ( ln x y)$ ; 

(2) $z = (1 + x y)^y$ 

(3) $u = x^(y/z)$ 

(4) $u = (x - y)^z$
], a: [(1) $ (partial z/partial x) = ((1)/(2 x sqrt ( ln x y))), (partial z/partial y) = ((1)/(2 y sqrt ( ln x y))); $
(2) $ (partial z/partial x) = y^2 (1 + x y)^(y - 1), (partial z/partial y) = (1 + x y)^y [ ln (1 + x y) + (x y/1 + x y) ] $ ;
(3) $ (partial u/partial x) = (y/z) x^((y/z) - 1), (partial u/partial y) = (1/z) x^(y/z) ln x, (partial u/partial z) = -(y/z^2) x^(y/z) ln x; $
(4) $ (partial u/partial x) = ((z(x - y)^(z - 1))/(1 + (x - y)^(2 z))), (partial u/partial y) = -((z(x - y)^(z - 1))/(1 + (x - y)^(2 z))), (partial u/partial z) = (((x - y)^(z) ln (x - y))/(1 + (x - y)^(2 z))). $])

#question([
  8. 求下列函数的二阶偏导数 $ (partial^2 z/partial x^2), (partial^2 z/partial y^2), (partial^2 z/partial x partial y) $
(1) $z = (y/x)$ ; 

(2) $z = y^x$
], a: [(1) $ (partial^2 z/partial x^2) = ((2 x y)/((x^2 + y^2)^2)), (partial^2 z/partial y^2) = -((2 x y)/((x^2 + y^2)^2)), (partial^2 z/partial x partial y) = ((y^2 - x^2)/((x^2 + y^2)^2)) $ ;
(2) $ (partial^2 z/partial x^2) = y^x ln^2 y, (partial^2 z/partial y^2) = x(x - 1)y^(x - 2), (partial^2 z/partial x partial y) = y^(x - 1)(1 + x ln y). $])

#prob-type("四、证明题")

#question([
  9. 设函数 $z = (e)^(-((1/x) + (1/y)))$ ，求证： $x^2 (partial z/partial x) + y^2 (partial z/partial y) = 2 z$
], a: [略])

== 第三节 全微分

#prob-type("一、选择题")

#question([
  1. 函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处两个偏导数 $f_x'(x_0, y_0), f_y'(x_0, y_0)$ 存在是 $f(x, y)$ 在该点处全微分存在的（ ）.
A. 充分条件

B. 充要条件

C. 必要条件

D. 无关条件
], a: [C.])

#question([
  2. 函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处两个偏导数 $f_x'(x_0, y_0), f_y'(x_0, y_0)$ 存在是 $f(x, y)$ 在该点处连续的（ ）.
A. 充要条件

B. 必要条件

C. 充分条件

D. 无关条件
], a: [D.])

#question([
  3. 函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处满足关系（ ）
A. 可微分 $$ 可偏导 $$ 连续

B. 可微分 $$ 可偏导 $$ 连续

C. 可微分 $$ 可偏导, 或可微分 $$ 连续, 但可偏导不一定连续

D. 可偏导 $$ 连续, 但可偏导不一定可微分
], a: [C.])

#prob-type("二、填空题")

#question([
  4. 函数 $z = (y/x)$ 当 $x = 2, y = 1, Delta x = 0 .1, Delta y = -0 .2$ 时的全增量 $Delta z =$ 全微分 $dif z =$
], a: [$-(5/42), - (1/8)$])

#question([
  5. 设函数 $z = (e)^(y(x^2 + y^2))$ ，则 $dif z =$
], a: [$2 x y (e)^(y(x^2 +y^2)) dif x + (x^2 +3 y^2) (e)^(y(x^2 +y^2)) dif y .$])

#question([
  6. 设函数 $z = f(y/x)$ ，则 $dif z =$
], a: [$-(y/x^2) f'(y/x) dif x + (1/x) f'(y/x) dif y .$])

#prob-type("三、计算题")

#question([
  7. 设函数 $u = a^(x + y z) - ln x^a (a > 0)$ ，求 $dif u$
], a: [提示: $ (partial u/partial x) = a^(x + y z) ln a - a x^(-1), (partial u/partial y) = a^(x + y z) dot z ln a, (partial u/partial z) = y a^(x + y z) ln a, $
$$
 {d} u = (a ^ {x + y z} \ln a - a x ^ {- 1})  {d} x + a ^ {x + y z} \ln a (z  {d} y + y  {d} z).
$$])

#question([
  8. 求函数 $z = ln (x^2 + y^2 + e^(x y))$ 的全微分.
], a: [提示: $ (partial z/partial x) = ((2 x + y (e)^(x y))/(x^2 + y^2 + (e)^(x y))), (partial z/partial y) = ((2 y + x (e)^(x y))/(x^2 + y^2 + (e)^(x y))) $
$$
 {d} z = \frac {1}{x ^ {2} + y ^ {2} +  {e} ^ {x y}} <=ft\[ (2 x + y  {e} ^ {x y})  {d} x + (2 y + x  {e} ^ {x y})  {d} y \right\].
$$])

#question([
  9. 求函数 $z = ln (1 + x^2 + y^2)$ 当 $x = 1, y = 2$ 时的全微分.
], a: [$(1/3) dif x + (2/3) dif y .$])

#prob-type("四、证明题")

#question([
  10. 设函数 $ f(x, y) = cases( x y sin ((1)/( sqrt (x^2 + y^2))), & x^2 + y^2 != 0,   0, & x^2 + y^2 = 0, ) $ 证明: $f(x, y)$ 在点 (0,0) 处连续且偏导数存在, 但偏导数在点 (0,0) 处不连续, 而 $f(x, y)$ 在点 (0,0) 处可微分.
], a: [略.])

== 第四节 多元复合函数的求导法则

#prob-type("一、选择题")

#question([
  1. 设函数 $u = (x - y)^z$ ，而函数 $z = x^2 + y^2$ ，则 $u_x' + u_y' = ( " " )$
A. $2[z(x - y)^(z - 1) + (x + y)(x - y)^(z) ln (x - y)]$ 

B. $2 z(x - y)^(z)$ 

C. $2(( x - y) )^(z)( (x + y)) ln ( (x - y))$ 

D. $2(x - y)^(z + 1) ln (x - y)$
], a: [C.])

#question([
  2. 设函数 $z = 3^(x y)$ ，而 $x = f(y)$ 且 $f$ 可导，则 $(( dif z)/( dif y)) = ( " " )$ .
A. $3^(x y)[y + x f'(y)] ln 3$ 

B. $3^(x y)[x + y f'(y)] ln 3$ 

C. $((3^(x y))/( ln 3)) [x + y f'(y)]$ 

D. $z_x^( )f^( )(y) + z_y^( ) - 3^(x y)[x + y f^( )(y)] ln 3$
], a: [B.])

#question([
  3. 设函数 $u = f(x + y, x z)$ ，其中 $f$ 具有二阶连续偏导数，则 $(partial^2 u/partial x partial z) = ( " " )$
A. $f_2^( ) + x f_11^( ) + z f_12^( ) + x f_12^( )$ 

B. $x f_12^( ) + x f_2^( ) + x z f_22^( )$ 

C. $x f_21^( ) + x z f_22^( )$ 

D. $f_2^( ) + x f_21^( ) + x z f_22^( )$
], a: [D.])

#question([
  4. 若函数 $f(x, 2 x) = x^2 + 3 x$ , $f_1'(x, 2 x) = 6 x + 1$ ，则 $f_2'(x, 2 x) = ( " " )$ .
A. $x + (3/2)$ 

B. $x - (3/2)$ 

C. $(2 x) + 1$ 

D. $-2 x + 1$
], a: [D.])

#prob-type("二、填空题")

#question([
  5. 设函数 $z = x^2 + sin y, x = cos t, y = t^3$ ，则 $(( dif z)/( dif t)) =$  #underline("          ") .
], a: [$- sin 2 t + 3 t^2 cos t^3$])

#question([
  6. 设函数 $z = f(x + y, x - y)$ ，其中 $f$ 可微，则 $dif z =$
], a: [$(f_1' + f_2') dif x + (f_1' - f_2') dif y .$])

#question([
  7. 设函数 $z = f(x, (x/y))$ ，其中 $f$ 具有二阶连续偏导数，则 $(partial^2 z/partial x partial y) =$  #underline("          ") .
], a: [$-(1/y^2) f_2' - (x/y^2) f_12'' - (x/y^3) f_22''.$])

#prob-type("三、计算题")

#question([
  8. 设函数 $z = u^2 ln v$ , 而 $u = (x/y), v = 3 x - 2 y$ , 求 $(partial z/partial x), (partial z/partial y)$ .
], a: [$ (partial z/partial x) = (2 x/y^2) ln (3 x - 2 y) + ((3 x^2)/((3 x - 2 y)y^2)), (partial z/partial y) = -(2 x^2/y^3) ln (3 x - 2 y) - ((2 x^2)/((3 x - 2 y)y^2)). $])

#question([
  9. 设函数 $z = (x - y)$ ，而 $x = 3 t, y = 4 t^3$ ，求 $(( dif z)/( dif t))$ .
], a: [$(3(1 - 4 t^2))( sqrt (1 - (3 t - 4 t^3)^2))$ .])

#question([
  10. 设函数 $z = x y$ ，而 $y = (e)^x$ ，求 $(( dif z)/( dif x))$
], a: [$(( (e)^x(1 + x))/(1 + x^2 (e)^(2 x)))$])

#question([
  11. 设函数 $u = f((x/y), (y/z))$ , 其中 $f$ 具有一阶连续偏导数, 求 $(partial u/partial x), (partial u/partial y), (partial u/partial z)$ .
], a: [$ (partial u/partial x) = (1/y) f_1', (partial u/partial y) = -(x/y^2) f_1' + (1/z) f_2', (partial u/partial z) = -(y/z^2) f_2' $ .])

#question([
  12. 设函数 $z = f(x^2 + y^2)$ ，其中 $f$ 具有二阶连续导数，求 $ (partial^2 z/partial x^2), (partial^2 z/partial y^2), (partial^2 z/partial x partial y) $ .
], a: [$(partial^2 z/partial x^2) = 2 f' + 4 x^2 f''$ , $(partial^2 z/partial y^2) = 2 f' + 4 y^2 f''$ , $(partial^2 z/partial x partial y) = 4 x y f''$ .
O])

== 第五节 隐函数的求导公式

#prob-type("一、选择题")

#question([
  1. 已知 $x + y - z = (e)^(x), x (e)^(x) = tan t, y = cos t$ ，则 $.(( dif z)/( dif t))|_(t=0) = ( " " )$
A. $(1/2)$ 

B. $-(1/2)$ 

C. 1 

D. 0
], a: [D.])

#question([
  2. 设函数 $y = y(x, z)$ 由方程 $x y z = (e)^(x + y)$ 所确定，则 $(partial y/partial x) = ( " " )$ .
A. $((y(x - 1))/(x(1 - y)))$ 

B. $((y)/(x(1 - y)))$ 

C. $(y z/1 - y)$ 

D. $((y(1 - x z))/(x(1 - y)))$
], a: [A.])

#prob-type("二、填空题")

#question([
  3. 设函数 $y = y(x)$ 由方程 $1 + x^2y = (e)^(y)$ 所确定，则 $(( (d y))/( (d x))) =$
], a: [$((2 x y)/( (e)^y - x^2))$])

#question([
  4. 设函数 $z = z(x, y)$ 由方程 $x y^2 z = x + y + z$ 所确定，则 $(partial z/partial y) =$  #underline("          ") .
], a: [$(2 x y z - 1/1 - x y^2)$])

#question([
  5. 由方程 $x y z + sqrt (x^2 + y^2 + z^2) = sqrt (2)$ 所确定的函数 $z = z(x, y)$ 在点 $(1,0,-1)$ 处的全微分 $dif z =$
], a: [$(d x) - sqrt (2) (d y)$])

#prob-type("三、计算题")

#question([
  6. 设 $ln sqrt (x^2 + y^2) = (y/x)$ , 求 $(( dif y)/( dif x))$ .
], a: [$(x + y/x - y)$])

#question([
  7. 设 $(x/z) = ln (z/y)$ , 求 $(partial z/partial x), (partial z/partial y)$ .
], a: [$(partial z/partial x) = (z/x + z), (partial z/partial y) = ((z^2)/(y(x + z))).$])

#question([
  8. 设 $ cases(z = x^2 + y^2, x^2 + 2 y^2 + 3 z^2 = 20) $ 求 $dy/dx, dz/dx$ .
], a: [$(( (d y))/( (d x))) = -((x(6 z + 1))/(2 y(3 z + 1))),(( (d z))/( (d x))) = (x/3 z + 1).$])

#question([
  9. 设 $ cases( u = f(u x, v + y),   v = g(u - x, v^2y), ) $ 其中 $f, g$ 具有一阶连续偏导数，求 $(partial u/partial x), (partial v/partial x)$ .
], a: [$ (partial u/partial x) = (-u f_1^( )(2 y v g_2^( ) - 1) - f_2^( ) g_1^( ))((x f_1^( ) - 1)(2 y v g_2^( ) - 1) - f_2^( ) g_1^( )), (partial v/partial x) = (g_1^( )(x f_1^( ) + u f_1^( ) - 1))((x f_1^( ) - 1)(2 y v g_2^( ) - 1) - f_2^( ) g_1^( )). $])

#prob-type("四、证明题")

#question([
  10. 设 $2 sin (x + 2 y - 3 z) = x + 2 y - 3 z$ ，证明： $(partial z/partial x) + (partial z/partial y) = 1 .$
], a: [\sim 11$. text("略")$])

#question([
  11. 设函数 $Phi (u, v)$ 具有一阶连续偏导数，证明：由方程 $Phi (c x - a z, c y - b z) = 0$ 所确定的函数 $z = f(x, y)$ 满足 $a(partial z/partial x) + b(partial z/partial y) = c .$
], a: none)

== 第六节 多元函数微分学的几何应用

#prob-type("一、选择题")

#question([
  1. 曲线 $x = 2 sin t, y = 4 cos t, z = t$ 在点 $(2,0, pi/2)$ 处的法平面方程为（ ）.
A. $2 x - z = 4 - (pi /2)$ 

B. $2 x - z = (pi /2) - 4$ 

C. $4 y - z = -(pi /2)$ 

D. $4 y - z = (pi /2)$
], a: [C.])

#question([
  2. 曲线 $4 x = y^5, y = sqrt (z)$ 在点(8,2,4)处的切线方程为（ ）.
A. $(x - 8/20) = y - 2 = (z - 4/4)$ 

B. $(x + 12/20) = y = (z + 4/4)$ 

C. $(x - 8/5) = y - 2 = (z - 4/4)$ 

D. $(x - 3/5) = y - 1 = (z/4)$
], a: [A.])

#question([
  3. 曲面 $x cos z + y cos x - (pi /2) z = (pi /2)$ 在点 $((pi /2), 1 - (pi /2), 0)$ 处的切平面方程为( ).
A. $x - z = pi - 1$ 

B. $x - y = pi - 1$ 

C. $x - y = (pi /2)$ 

D. $x - z = (pi /2)$
], a: [D.])

#question([
  4. 曲面 $x^2y z - x y^2z^3 = 6$ 在点(3,2，1)处的法线方程为（ ）.
A. $(x + 5/8) = (y - 5/-3) = (z - 19/-18)$ 

B. $(x - 3/8) = (y - 2/3) = (z - 1/-18)$ 

C. $8 x - 3 y - 1 8 z = 0$ 

D. $8 x + 3 y - 1 8 z = 12$
], a: [A.])

#prob-type("二、填空题")

#question([
  5. 曲线 $x = t^2, y = 2 t, z = (1/3) t^3$ 在点 $(1,2,(1/3))$ 处的切线方程为
], a: [$(x - 1/2) = (y - 2/2) = z - (1/3)$])

#question([
  6. 曲线 $x = 2 t (e)^(2 t), y = 3 (e)^(2 t), z = t^2 (e)^(2 t)$ 在 $t = -1$ 的对应点处的法平面方程为
], a: [$x - 3 y + 11 (e)^(-2) = 0$])

#question([
  7. 曲面 $x (e)^(y) + y^2 (e)^(2 z) + z^3 (e)^(3 x) = ((2)/( (e))) + 1$ 在点 $(2, -1, 0)$ 处的法线方程为
], a: [$x - 2 = ((y + 1)/(2 - 2 (e))) = ((z)/(2 (e))).$])

#question([
  8. 曲面 $(y/1 + x z) = (pi /4)$ 在点 $(-2, 1, 0)$ 处的切平面方程为
], a: [$y + 2 z = 1$])

#prob-type("三、计算题")

#question([
  9. 求曲线 $x = (t/1 + t), y = (1 + t/t), z = t^2$ 在 $t = 1$ 的对应点处的切线及法平面方程
], a: [切线方程为 $x - (1/2) = (y - 2/-4) = (z - 1/8)$ ，法平面方程为 $2 x - 8 y + 1 6 z - 1 = 0$ .])

#question([
  10. 求曲线 $ cases(x^2 + y^2 + z^2 - 3 x = 0, 2 x - 3 y + 5 z - 4 = 0) $ 在点(1,1,1)处的切线及法平面方程
], a: [切线方程为 $(x - 1)/16 = (y - 1)/9 = (z - 1)/(-1)$, 法平面方程为 $16x + 9y - z - 24 = 0$.])

#question([
  11. 求曲面 $(e)^z - z + x y = 3$ 在点(2,1,0)处的切平面及法线方程
], a: [切平面方程为 $x + 2 y - 4 = 0$ ，法线方程为 $ cases( x - 2 = (y - 1/2),   z = $])

#question([
  12. 求椭球面 $x^2 + 2 y^2 + z^2 = 1$ 上平行于平面 $x - y + 2 z = 0$ 的切平面方程
], a: [$x - y + 2 z = plus.minus sqrt (11/2)$])

#question([
  13. 求旋转椭球面 $3 x^2 + y^2 + z^2 = 16$ 在点 $(-1, -2, 3)$ 处的切平面与 $x O y$ 面的夹角的余弦.
], a: [$((3)/( sqrt (22)))$])

== 第七节 方向导数与梯度

#prob-type("一、判断题（如果错误，请加以改正）")

#question([
  1. 若函数在某一点处连续且存在偏导数，则该函数在这一点处的方向导数必存在.（）
], a: [$times$])

#question([
  2. 若函数在某一点处存在任意方向的方向导数，则该函数在这一点处的偏导数必存在. （）
], a: [$times$])

#question([
  3. $.(partial f/partial l)|_(x_0,y_0) = | bold(g r a d) f(x_0,y_0)|$
], a: [$times$ 改正略

#prob-type("二、填空题")

#question([
  4. 函数 $z = x (e)^(2 y)$ 在点 $A(1,0)$ 处沿从点 $A(1,0)$ 到点 $B(2, - 1)$ 的方向的方向导数为
], a: [$-(( sqrt (2))/(2))$])

#question([
  5. 设函数 $f(x, y, z) = x^2 + 2 y^2 + 3 z^3 + x y + 3 x - 2 y - 6 z$ ，则 $bold(g r a d) f(0,0,0) =$
], a: [$(3, -2, -6)$ .])

#prob-type("三、计算题")

#question([
  6. 设函数 $u = x^2 + y^2 + z^2$ , 求:
(1) $bold(g r a d) u(1,1,1)$ 

(2) $.(partial u/partial l)|_(1,1,1)$ ，其中方向 $l$ 从点 $(1,1,1)$ 到点 $(2,3,3)$ .
], a: [（1） $(2,2,2)$ (2） $(10/3)$])

#question([
  7. 设函数 $f(x, y) = sqrt (x^2 + y^4)$ ，求：
(1) $bold(g r a d) f(1, - 1)$ 

(2) $.(partial f/partial l)|_(1, - 1)$ ，其中方向 $l$ 与 $x$ 轴正向成 $(pi /4)$ 角；

(3) $.(partial f/partial l)|_(1, - 1)$ ，其中方向 $l$ 与 $bold(g r a d) f(1,1)$ 同向.
], a: [(1) $((( sqrt (2))/(2)), - sqrt (2))$ ;
(2) $-(1/2)$ ;
(3) $-((3 sqrt (10))/(10))$ .])

#question([
  8. 如果可微函数 $f(x, y)$ 在点(1,2)处沿从点(1,2)到点(2,2)的方向的方向导数为2，沿从点(1,2)到点(1,1)的方向的方向导数为-2，求：
(1) $op (g r a d) f(1,2)$ ; 

(2) $.(partial f/partial l)|_(1,2)$ ，其中方向 $l$ 从点（1，2）到点（4，6）.
], a: [(1）{2,2}；
(2) $(14/5)$ .])

#question([
  9. 已知曲面 $2 x^2 + 3 y^2 + z^2 = 6$ 在点 $P(1,1,1)$ 处指向外侧的法向量为 $bold(n)$ , 求函数 $u = (( sqrt (6 x^2 + 8 y^2))/(z))$ 在点 $P$ 处沿方向 $bold(n)$ 的方向导数.
], a: [$(11/7)$])

#prob-type("四、证明题")

#question([
  10. （附加题）证明：函数 $f(x, y) = sqrt [3](x y)$ 在点(0,0)处连续且可偏导，但除沿坐标轴的方向外，在点(0,0)处沿其他方向的方向导数都不存在。
], a: [略])

== 第八节 多元函数的极值及其求法

#prob-type("一、选择题")

#question([
  1. 函数 $z = f(x, y)$ 在点 $(x_0, y_0)$ 处具有偏导数且在点 $(x_0, y_0)$ 处有极值是 $f_x'(x_0, y_0) = 0$ 及 $f_y'(x_0, y_0) = 0$ 的（ ）.
A. 充分条件

B. 必要条件

C. 充要条件

D. 无关条件
], a: [A.])

#question([
  2. 设函数 $z = f(x, y)$ 的全微分 $dif z = x dif x + y dif y$ ，则点(0，0)( ).
A. 不是 $f(x, y)$ 的连续点

B. 不是 $f(x, y)$ 的极值点

C. 是 $f(x, y)$ 的极大值点

D. 是 $f(x, y)$ 的极小值点
], a: [D.])

#question([
  3. 函数 $z = 3(x + y) - x^3 - y^3$ 的极值点是（ ）.
A. (1,2) 

B. $(1, - 2)$ 

C. $(-1, 2)$ 

D. $(-1, - 1)$
], a: [D.])

#prob-type("二、填空题")

#question([
  4. 设函数 $f(x, y) = 2 x^2 + a x + x y^2 + 2 y$ 在点 $(1, -1)$ 处取得极值，则常数 $a =$  #underline("          ") ，极值的类型为  #underline("          ") 。
], a: [-5, 极小值.])

#question([
  5. 若要求函数 $u = sin x sin y sin z$ 满足 $x + y + z = (pi /2)$ 且 $x > 0, y > 0, z > 0$ 的条件极值，可构造函数  #underline("          ") ，求得其驻点为  #underline("          ") ，在该点处函数取得  #underline("          ") 。
], a: [$ L = sin x sin y sin z + lambda (x + y + z - (pi /2)), ((pi /6), (pi /6), (pi /6)) $ ，极大值 $(1/8)$])

#prob-type("三、计算题")

#question([
  6. 求函数 $f(x, y) = (6 x - x^2)(4 y - y^2)$ 的极值
], a: [极大值 $f(3,2) = 36$ .])

#question([
  7. 在 $x O y$ 面上求一点，使得它到 $x = 0, y = 0$ 及 $x + 2 y - 16 = 0$ 三直线的距离的平方和最小.
], a: [$((8/5),(16/5))$])

#question([
  8. 求内接于半径为 $a$ 的球且有最大体积的长方体
], a: [边长为 $((2 a)/( sqrt (3)))$ 的正方体])

#question([
  9. 在椭圆 $x^2 + 4 y^2 = 4$ 上求一点，使得它到直线 $2 x + 3 y - 6 = 0$ 的距离最短.
], a: [$((8/5),(3/5))$])

#question([
  10. （附加题）求函数 $f(x, y, z) = ln x + ln y + 3 ln z$ 在球面 $x^2 + y^2 + z^2 = 5 r^2 (x > 0, y > 0, z > 0)$ 上的最大值，并证明： $forall a, b, c in bold(R)_+$ ，有 $a b c^3 <= 27(a + b + c/5)^5$ 成立.
], a: [最大值 $f(r, r, sqrt (3) r) = ln 3 sqrt (3) r^5$ . 证明略])

== 总习题九

#prob-type("一、选择题")

#question([
  1. 设函数 $ f(x, y) = cases( (x^2 + 2 y^2/x + y), & (x, y) != (0, 0),   0, & (x, y) = (0, 0), ) $ 则 $f'_y(0, 0) = ( " " )$ .
A. 0 

B. 1 

C. 2 

D. -1
], a: [$$])

#question([
  2. 若函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处的两个偏导数 $f_x'(x_0, y_0), f_y'(x_0, y_0)$ 存在，则（ ）.
A. $f(x,y)$ 在点 $(x_0,y_0)$ 处可微分

B. $f(x,y)$ 在点 $(x_0,y_0)$ 处连续

C. $f(x,y)$ 在点 $(x_0,y_0)$ 处存在任意方向的方向导数

D. $f(x,y)$ 在点 $(x_0,y_0)$ 处关于 $x$ 与 $y$ 皆连续
], a: [D.])

#question([
  3. 设函数 $z = f(x, y)$ 在点 $(x_0, y_0)$ 处可微分， $Delta z$ 是 $f$ 在点 $(x_0, y_0)$ 处的全增量，则在点 $(x_0, y_0)$ 处有（ ）.
A. $Delta z = dif z$ 

B. $Delta z = f_x^( )(x_0,y_0) Delta x + f_y^( )(x_0,y_0) Delta y$ 

C. $Delta z = f_x^( )(x_0,y_0) dif x + f_y^( )(x_0,y_0) dif y$ 

D. $Delta z = dif z + o( rho )$ , 其中 $rho = sqrt (( Delta x)^2 + ( Delta y)^2)$
], a: [D.])

#question([
  4. 设方程 $y = F(x^2 + y^2) + F(x + y)$ 能确定隐函数 $y = f(x)$ ( $F$ 可微), 且 $f(0) = 2$ , $F'(2) = (1/2), F'(4) = 1$ , 则 $f'(0) = ( " " )$ .
A. $(1/7)$ 

B. $-(1/7)$ 

C. $-(1/4)$ 

D. $-(1/3)$
], a: [B.])

#question([
  5. 曲面 $x y z = 1$ 上平行于平面 $x + y + z + 3 = 0$ 的切平面方程是（ ）.
A. $x + y + z - 3 = 0$ 

B. $x + y + z - 2 = 0$ 

C. $x + y + z - 1 = 0$ 

D. $x + y + z = 0$
], a: [A.])

#prob-type("二、填空题")

#question([
  6. $lim_((x,y) arrow (0,0))(1 + sin x y)^(1/x y) = underline("          ")$
], a: [e.])

#question([
  7. 设函数 $z = x^(y + 1) (x > 0, x != 1)$ ，则 $dif z =$  #underline("          ") .
], a: [$(y + 1)x^(y) dif x + x^(y + 1) ln x dif y .$])

#question([
  8. 设函数 $u = ln sqrt (x^2 + y^2 + z^2)$ ，则它在点 $M_0(1, -1, 1)$ 处的方向导数的最大值为
], a: [$(( sqrt (3))/(3))$ .])

#question([
  9. 曲线 $x = cos t, y = sin t, z = tan (t/2)$ 在点(0,1,1)处的切线方程为
], a: [$(x/-1) = (y - 1/0) = z -$])

#question([
  10. 函数 $z = x y$ 在闭区域 $D = ((x, y) | x >= 0, y >= 0, x + y <= 1)$ 上的最大值为  #underline("          ") .
], a: [$(1/4)$])

#prob-type("三、计算题")

#question([
  11. 设函数 $w = f(x + y + z, x y z)$ ，其中 $f$ 具有二阶连续偏导数，求 $(partial w/partial x), (partial^2 w/partial x partial z)$ .
], a: [$(partial w/partial x) = f_1' + y z f_2'$ , $(partial^2 w/partial x partial z) = y f_2' + f_11'' + y(x + z)f_12'' + x y^2 z f_22''$

#question([
  12. 设函数 $z = z(x, y)$ 由方程 $F(z^2 - x^2, z^2 - y^2) = 0$ 所确定，其中 $F$ 具有一阶连续偏导数，试求 $(1/x) (partial z/partial x) + (1/y) (partial z/partial y)$ .
], a: [$(1/z)$])

#question([
  13. 求螺旋线 $x = a cos theta , y = a sin theta , z = b theta$ 在点 $(a,0,0)$ 处的切线及法平面方程
], a: [切线方程为 $(x - a/0) = (y/a) = (z/b)$ , 法平面方程为 $a y + b z = 0$ .])

#question([
  14. 求坐标原点到曲线 $ cases(z = x^2 + y^2, x + y + z = 1) $ 的最短和最长距离.
], a: [最短距离为 $sqrt(9 - 5 sqrt(3))$ ，最长距离为 $sqrt(9 + 5 sqrt(3))$ 。])

#prob-type("四、证明题")

#question([
  15. 设函数 $ f(x, y) = cases( (x^2 y^2)((x^2 + y^2)^(3/2)), & x^2 + y^2 != 0,   0, & x^2 + y^2 = 0, ) $ 证明: $f(x, y)$ 在点 (0,0) 处连续且偏导数存在, 但不可微分.
], a: [略.])
