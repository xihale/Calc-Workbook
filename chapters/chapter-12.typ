#import "../template.typ": *

= 第十二章 无穷级数

== 第一节 常数项级数的概念与性质

#prob-type("一、选择题")

#question([
  1. 级数 $sum_(n=1)^( oo ) (((-1)^(n+1))/(3^n))$ 的和等于( ).
A. $-(1/4)$ 

B. $(1/4)$ 

C. $(1/2)$ 

D. $-(1/2)$
], a: [B.])

#question([
  2. 下列级数中收敛的是（ ）
A. $sum_(n=1)^( oo ) (4^n + 8^n/8^n)$ 

B. $sum_(n=1)^( oo ) (8^n - 4^n/8^n)$ 

C. $sum_(n=1)^( oo ) (2^n + 4^n/8^n)$ 

D. $sum_(n=1)^( oo ) (2^n dot 4^n/8^n)$
], a: [C.])

#question([
  3. 若 $lim_(n arrow oo )u_n = 0$ ，则级数 $sum_(n = 1)^( oo )u_n( " " )$
A. 一定收敛

B. 一定发散

C. 可能收敛, 也可能发散

D. 部分和 $s_n = u_1 + u_2 + + u_n = 0$
], a: [D.])

#question([
  4. 下列级数中发散的是（ ）
A. $sum_(n=1)^( oo ) ln (1 + (1/n))$ 

B. $sum_(n=1)^( oo ) (1/3^n)$ 

C. $sum_(n=1)^( oo ) ((1)/(n(n+2)))$ 

D. $sum_(n=1)^( oo ) ((3^n + (-1)^n)/(4^n))$
], a: [A.])

#prob-type("二、填空题")

#question([
  5. 级数 $(2/1) - (3/2) + (4/3) - (5/4) + (6/5) - ...$ 的一般项是
], a: [$(-1)^(n + 1)(n + 1/n)$])

#question([
  6. 设级数 $sum_(n=1)^( oo ) ((1)/((2 n-1)(2 n+1)))$ , 则 $s_n = underline("          ")$ , $lim_(n arrow oo ) s_n = underline("          ")$ .
], a: [$(1/2)(1 - (1/2 n + 1)),(1/2).$])

#question([
  7. 设级数 $sum_(n=1)^( oo ) u_n$ 的部分和为 $s_n = (2^n - 1/2^n)$ ，则级数的一般项 $u_n = (n = 1, 2, )$ ，余项 $r_n = sum_(n=1)^( oo ) u_n =$
], a: [$(2^n - 1/2^n), sum_(t = n + 1)^( oo )(2^t - 1/2^t),1 .$])

#question([
  8. 已知数列 $(b_n)$ ，有 $lim_(n arrow oo ) b_n = oo$ ，且 $b_n != 0 (n = 1, 2, )$ ，则级数 $sum_(n=1)^( oo ) ( (1/b_n) - ((1)/(b_(n+1))) )$ 的和为
], a: [$(1/b_1)$])

#prob-type("三、计算题")

#question([
  9. 根据级数收敛与发散的定义判定下列级数的敛散性：
(1) $(1/1 dot 3) + (1/3 dot 5) + + ((1)/((2 n - 1) dot (2 n + 1))) +$ ; 

(2) $sin (pi /6) + sin (2 pi /6) + + sin (n pi /6) +$ ; 

(3) $sum_(n=1)^( oo ) ln (1 + (1/n))$ .
], a: [（1）收敛；
(2) 发散；
（3）发散.])

#question([
  10. 判定下列级数的敛散性：
(1) $-(8/9) + (8^2/9^2) - (8^3/9^3) + + (-1)^n (8^n/9^n) + ;$ 

(2) $(1/3) + (1/6) + (1/9) + + (1/3 n) +$ ; 

(3) $(1/3) + ((1)/( sqrt (3))) + ((1)/( sqrt [3](3))) + + ((1)/( sqrt [n](3))) + .$
], a: [（1）收斂；
(2) 发散；
(3) 发散.])

== 第二节 常数项级数的审敛法（1）

#prob-type("一、选择题")

#question([
  1. 已知 $sum_(n=1)^( oo ) u_n$ 为正项级数，下列命题中错误的是（ ）.
A. 若 $lim_(n arrow oo )((u_(n + 1))/(u_n)) = rho < 1$ ，则 $sum_(n = 1)^( oo )u_n$ 收敛

B. 若 $lim_(n arrow oo )((u_(n + 1))/(u_n)) = rho > 1$ ，则 $sum_(n = 1)^( oo )u_n$ 发散

C. 若 $((u_(n+1))/(u_n)) < 1$ ，则 $sum_(n=1)^( oo ) u_n$ 收敛

D. 若 $((u_(n+1))/(u_n)) > 1$ ，则 $sum_(n=1)^( oo ) u_n$ 发散
], a: [C.])

#question([
  2. 判定级数 $sum_(n=1)^( oo ) (1)(n^(1+(1/n)))$ 的敛散性, 下列说法正确的是( ).
A.因为 $1 + (1/n) >0$ ，所以此级数收敛

B. 因为 $lim_(n arrow oo ) (1)(n^(1 + (1/n))) = 0$ ，所以此级数收敛

C. 因为 $(1)(n^(1 + 1/n)) > (1/n)$ , 所以此级数发散

D. 以上说法均不对
], a: [D.])

#prob-type("二、填空题")

#question([
  3. 级数 $sum_(n=1)^( oo ) (( sqrt (2 n+1))/(n^( alpha )))$ 收敛的充要条件是 $alpha$ 满足条件
], a: [$alpha >(1/2)$])

#question([
  4. 当 $p$ 满足条件  #underline("          ")  时，级数 $sum_(n=1)^( oo ) (1/n^p)$ 收敛。
], a: [$p > 1$])

#question([
  5. 若 $sum_(n=1)^( oo ) u_n$ 为正项级数，且其部分和数列为 $(s_n)$ ，则级数 $sum_(n=1)^( oo ) u_n$ 收敛的充要条件是
], a: [$(s_n)$ 有界])

#prob-type("三、计算题")

#question([
  6. 用比较审敛法或极限形式的比较审敛法判定下列级数的敛散性：
(1) $1 + (1/3) + (1/5) + + (1/2 n - 1) +$ ; 

(2) $(1/2 dot 5) + (1/3 dot 6) + + ((1)/((n + 1)(n + 4))) +$ ; 

(3) $sin (pi /2) + sin (pi /2^2) + + sin (pi /2^n) +$ ; 

(4) $sum_(n=1)^( oo ) (1/1 + a^n) (a > 0)$ .
], a: [（1）发散； （2）收敛；
(3) 收敛; (4) $0 < a <= 1$ 时发散, $a > 1$ 时收敛.])

#question([
  7. 用比值审敛法判定下列级数的敛散性：
(1) $sum_(n=1)^( oo ) (2^n dot n!/n^n)$ ; 

(2) $sum_(n=1)^( oo ) n tan (( pi )/(2^(n+1)))$ .
], a: [（1）收敛； （2）收敛])

#question([
  8. 用根值审敛法判定下列级数的敛散性：
(1) $sum_(n=1)^( oo )(n/2 n+1)^(n)$ ; 

(2) $sum_(n=1)^( oo )(b/a_n)^n$ ，其中 $lim_(n arrow oo )a_n = a, a_n, b, a$ 均为正数.
], a: [(1)收敛； (2) $b < a$ 时收敛， $b > a$ 时发散， $b = a$ 时不能确定

== 第二节 常数项级数的审敛法(2)

#prob-type("一、判断题")

#question([
  1. 若正项级数 $sum_(n=1)^( oo ) u_n$ 收敛，则级数 $sum_(n=1)^( oo ) u_n^2$ 也收敛.
], a: [√.])

#question([
  2. 若正项级数 $sum_(n=1)^( oo ) u_n$ 发散, 则 $lim_(n arrow oo ) ((u_(n+1))/(u_n)) = r > 1$ . （）
], a: [×.])

#prob-type("二、选择题")

#question([
  3. 下列级数中，条件收敛的是（ ）
A. $sum_(n=1)^( oo ) (-1)^(n) (n/n+1)$ 

B. $sum_(n=1)^( oo ) (-1)^(n) (( sqrt (2))/(n^2))$ 

C. $sum_(n=1)^( oo ) (-1)^(n) ((2)/( sqrt (n)))$ 

D. $sum_(n=1)^( oo ) (-1)^(n) (1)(n^(4/3))$
], a: [C.])

#question([
  4. 下列级数中，收敛的是（ ）
A. $sum_(n=1)^( oo ) ((1)/(n sqrt [n](n)))$ 

B. $sum_(n=1)^( oo ) ((n+1)/(n(n+2)))$ 

C. $sum_(n=1)^( oo ) (3^n/n dot 2^n)$ 

D. $sum_(n=2)^( oo ) ((4)/((n-1)(n+3)))$
], a: [D.])

#prob-type("三、填空题")

#question([
  5. 级数 $sum_(n=1)^( oo ) u_n$ 条件收敛的含义是
], a: [$sum_(n=1)^( oo ) u_n$ 收敛，而 $sum_(n=1)^( oo ) |u_n|$ 发散])

#question([
  6. 级数 $sum_(n=1)^( oo ) u_n$ 绝对收敛的含义是
], a: [$sum_(n = 1)^( oo )u_n$ 收敛且 $sum_(n = 1)^( oo )|u_n|$ 收敛])

#prob-type("四、计算题")

#question([
  7. 判定下列级数的敛散性：
(1) $(1^4/1!) + (2^4/2!) + + (n^4/n!) +$ ; 

(2) $sum_(n=1)^( oo ) ((n+1)/(n(n+2)))$ ; 

(3) $sum_(n=1)^( oo ) 2^(n) sin (( pi )/(3^(n)))$ ; 

(4) $sqrt (2) + sqrt (3/2) + + sqrt (n + 1/n) +$ .
], a: [（1）收敛； (2)发散； (3)收敛； (4)发散])

#question([
  8. 判定下列级数的敛散性，如果收敛，是绝对收敛还是条件收敛：
(1) $1 - ((1)/( sqrt (2))) + ((1)/( sqrt (3))) - ((1)/( sqrt (4))) + + (((-1)^(n-1))/( sqrt (n))) +$ ; 

(2) $sum_(n=1)^( oo ) (-1)^(n-1) ((n)/(3^(n-1)))$ .
], a: [（1）条件收敛； （2）绝对收敛])

== 第三节 幂级数

#prob-type("一、判断题")

#question([
  1. 若幂级数 $sum_(n=1)^( oo ) a_n (x - 1)^n$ 在点 $x = -1$ 处收敛，则在点 $x = 2$ 处必收敛.
], a: [√.])

#question([
  2. 已知幂级数 $sum_(n=1)^( oo ) a_n x^n$ 的收敛半径为 $R$ , 则幂级数 $sum_(n=1)^( oo ) a_n (1/2^n) x^(2 n+1)$ 的收敛半径为 $sqrt (R)$ . ( )
], a: [×.])

#question([
  3. 幂级数 $sum_(n=1)^( oo ) a_n x^n$ 和 $sum_(n=1)^( oo ) b_n x^n$ 的收敛半径分别为 $R_a, R_b$ , 则幂级数 $sum_(n=1)^( oo ) (a_n + b_n) x^n$ 的收敛半径为 $R = (R_a, R_b)$ . （）
], a: [×.])

#prob-type("二、选择题")

#question([
  4. 设幂级数 $sum_(n=0)^( oo ) (a^n - b^n/a^n + b^n) x^n (0 < a < b)$ ，则幂级数的收敛半径 $R$ 为（ ）.
A. $b$ 

B. $(1/a)$ 

C. $(1/b)$ 

D. 与 $a, b$ 无关
], a: [D.])

#question([
  5. 当常数 $p > 0$ 时，幂级数 $sum_(n=0)^( oo ) (((-1)^(n-1))/(n^p)) x^n$ 在其收敛区间的右端点处（ ）.
A. 条件收敛

B. 绝对收敛

C. 发散

D. $p <= 1$ 时条件收敛, $p > 1$ 时绝对收敛
], a: [D.])

#prob-type("三、填空题")

#question([
  6. 若幂级数 $sum_(n=0)^( oo ) c_n x^n$ 在点 $x = -4$ 处收敛, 在点 $x = 6$ 处发散, 则当 $x = 1$ 时, $sum_(n=0)^( oo ) c_n x^n$ 的敛散情况是
], a: [收敛.])

#question([
  7. 若 $lim_(n arrow oo )|((c_n)/(c_(n + 1)))| = 2$ ，则幂级数 $sum_(n = 0)^( oo )c_n x^(2 n)$ 的收敛半径为
], a: [√2.])

#question([
  8. 当 $|x| < 1$ 时，幂级数 $sum_(n=1)^( oo ) (x^n/n)$ 的和函数为
], a: [$S(x) = - ln (1 - x)$])

#prob-type("四、计算题")

#question([
  9. 求下列幂级数的收敛区间：
(1) $1 - x + (x^2/2^2) - ... + (-1)^n (x^n/n^2) + ...$ ; 

(2) $sum_(n=1)^( oo ) (-1)^(n) ((x^(2 n+1))/(2 n+1))$ ; 

(3) $sum_(n=1)^( oo ) (((x-5)^(n))/( sqrt (n)))$ .
], a: [（1） $(-1,1)$ ； (2） $(-1,1)$ ； (3）(4，6).])

#question([
  10. 利用逐项求导或逐项积分，求下列幂级数的和函数：
(1) $sum_(n=1)^( oo ) n x^(n-1)$ ; 

(2) $sum_(n=1)^( oo ) ((x^(4 n+1))/(4 n+1))$ ; 

(3) $sum_(n=1)^( oo )(n+2)x^(n+3)$ .
], a: [(1) $S(x) = ((1)/((1 - x)^2)) (-1 < x < 1)$ ;
(2) $S(x) = (1/4) ln (1 + x/1 - x) +(1/2) x - x(-1 < x < 1)$
(3) $S(x) = ((3 x^4 - 2 x^5)/((1 - x)^2)) (-1 < x < 1)$ .])

== 第四节 函数展开成幂级数

#prob-type("一、选择题")

#question([
  1. 函数 $f(x) = (1/3 - x)$ 展开成 $(x - 1)$ 的幂级数为（ ）.
A. $sum_(n=0)^( oo ) (((x-1)^(n))/(2^(n)))$ 

B. $sum_(n=0)^( oo ) (((-1)^n (x - 1)^n)/(2^n))$ 

C. $sum_(n=0)^( oo ) (((x - 1)^(n))/(2^(n+1)))$ 

D. $sum_(n=0)^( oo ) (((x - 1)^(n))/(2))$
], a: [C.])

#question([
  2. 函数 $f(x) = (1/a + b x)$ 展开成 $(x - x_0)(a + b x_0 != 0, a b != 0)$ 的幂级数为（ ）.
A. $sum_(n=0)^( oo ) ((b^n)/((a + b x_0)^(n+1))) (x - x_0)^n$ 

B. $sum_(n=0)^( oo )(b/a + b x_0)^n (x - x_0)^n$ 

C. $sum_(n=0)^( oo )(-1)^(n)(((b)/(a + b x_0)))^(n)(x - x_0)^(n)$ 

D. $sum_(n=0)^( oo ) (((-b)^n)/((a + b x_0)^(n+1))) (x - x_0)^n$
], a: [D.])

#question([
  3. 函数 $f(x) = (e)^(-x^2)$ 展开成 $x$ 的幂级数为（ ）.
A. $sum_(n=0)^( oo ) ((x^(2 n))/(n!))$ 

B. $sum_(n=0)^( oo ) (((-1)^n dot x^(2 n))/(n!))$ 

C. $sum_(n=0)^( oo ) (x^n/n!)$ 

D. $sum_(n=0)^( oo ) (((-1)^n dot x^n)/(n!))$
], a: [B.])

#question([
  4. $f^(n)(0)$ 存在是函数 $f(x)$ 可展开成 $x$ 的幂级数的（ ）.
A. 充要条件

B. 充分条件

C. 必要条件

D. 无关条件
], a: [A.])

#prob-type("二、填空题")

#question([
  5. 若函数 $f(x) = ((1)/((1 - 2 x)(1 - 3 x)))$ 展开成 $x$ 的幂级数，其收敛半径 $R =$  #underline("          ") .
], a: [$(1/3)$])

#question([
  6. 函数 $f(x) = ln (2 + x)$ 关于 $x$ 的幂级数展开式为  #underline("          ") ，其收敛域为  #underline("          ") 。
], a: [$ln 2 + sum_(n = 1)^( oo )(((-1)^(n - 1)x^n)/(n dot 2^n)),(-1,1).$])

#question([
  7. 设函数 $f(x) = sum_(n=0)^( oo ) a_n x^n$ ，则 $g(x) = ((f(x))/(1 - x))$ 的麦克劳林级数展开式为  #underline("          ") .
], a: [$ g(x) = ( sum_(n=0)^( oo ) a_n x^n)( sum_(n=0)^( oo ) x^n) = sum_(n=0)^( oo )( sum_(k=0)^(n) a_k)x^n . $])

#question([
  8. 若 $(1/3 + x) = sum_(n=0)^( oo ) a_n (x - 1)^n (|x - 1| < 4)$ ，则 $a_n =$  #underline("          ") .
], a: [$(((-1)^n)/(4^(n+1)))$ .])

#question([
  9. 若函数 $ln (4 - 9 x^2)$ 展开成 $x$ 的幂级数, 其收敛半径 $R =$
], a: [$(2/3)$])

#prob-type("三、计算题")

#question([
  10. 将函数 $f(x) = (1 + x) ln (1 + x)$ 展开成 $x$ 的幂级数，并求展开式成立的区间.
], a: [$(1 + x) ln (1 + x) = x + sum_(n = 2)^( oo )(((-1)^(n)x^(n))/((n - 1)n)),x in (-1,1]$])

#question([
  11. 将函数 $f(x) = cos x$ 展开成 $(x + (pi /3))$ 的幂级数.
], a: [$ cos x = (1/2) sum_(n=0)^( oo )(-1)^(n)[((1)/((2 n)!))(x + (pi /3))^(2 n) + (( sqrt (3))/((2 n+1)!))(x + (pi /3))^(2 n+1)], x in (- oo , + oo ) $ .])

#question([
  12. 将函数 $f(x) = (1/x^2 + 3 x + 2)$ 展开成 $(x + 4)$ 的幂级数
], a: [$(1/x^2 + 3 x + 2) = sum_(n=0)^( oo )(((1)/(2^(n+1))) - ((1)/(3^(n+1))))(x + 4)^n, x in (-6, -2)$ .])

== 第五节 傅里叶级数

#prob-type("一、选择题")

#question([
  1. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，在 $[- pi , pi )$ 上的表达式为 $ f(x) = cases( 0 & "if" - pi <= x < 0, x & "if" 0 <= x < pi ) $ 已知 $f(x)$ 的傅里叶级数，则该级数的和函数为（ ）.
A. $S(x) = f(x)$ , $x in (- pi , pi )$ 

B. $S(x) = f(x)$ , $x in (- oo , + oo )$ 

C. $ S(x) = cases(f(x) & "if" x != k pi, pi/2 & "if" x = k pi) $ ( $k$ 为整数 ) 

D. $ S(x) = cases(f(x) & "if" x != (2 k - 1) pi, pi/2 & "if" x = (2 k - 1) pi) $ （ $k$ 为整数 ）
], a: [D.])

#question([
  2. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，在 $[- pi , pi )$ 上的表达式为 $ f(x) = cases( x & "if" - pi <= x < 0, 0 & "if" 0 <= x < pi ) $ $f(x)$ 的傅里叶级数的和函数为 $S(x)$ ，则 $S( pi ) = ( " " )$ .
A. $-(pi /2)$ 

B. $- pi$ 

C. 0 

D. 其他值
], a: [A.])

#question([
  3. 函数 $f(x) = | sin x| (- pi <= x <= pi )$ 的傅里叶系数 $a_n, b_n$ 满足（ ）.
A. $a_n = 0(n = 0,1,2, ),b_n != 0(n = 1,2, )$ 

B. $b_n = 0 (n = 1,2, ), a_(2 k+1) = 0 (k = 0,1,2, )$ 

C. $a_n != 0 (n = 0,1,2, ), b_n = 0 (n = 1,2, )$ 

D. 以上结论都不对
], a: [B.])

#question([
  4. 利用函数 $f(x) = x^2$ 在区间 $[- pi , pi ]$ 上的傅里叶级数展开式可得 $sum_(n=1)^( oo ) ((1)/(n^2)) = ( " " )$ .
A. $(pi^2/3)$ 

B. $(pi^2/6)$ 

C. $(pi^2/9)$ 

D. $(pi^2/12)$
], a: [A.])

#prob-type("二、填空题")

#question([
  5. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，在 $[- pi , pi )$ 上的表达式为 $ f(x) = cases( 1 & "if" - pi <= x < 0, x & "if" 0 <= x < pi ) $ 则 $f(x)$ 的傅里叶级数在点 $x = k pi (k in bold(Z) )$ 处收敛于
], a: [$(x + 1/2)$])

#question([
  6. 设函数 $f(x) = pi x + x^2 (- pi <= x <= pi )$ ，且 $f(x)$ 在 $[- pi , pi )$ 上的傅里叶级数为 $(a_0/2) + sum_(n=1)^( oo ) (a_n cos n x + b_n sin n x)$ ，则 $b_3 =$  #underline("          ") .
], a: [$(2 pi /3)$])

#question([
  7. 已知函数 $f(x)$ 满足收敛的条件，其傅里叶级数的和函数为 $S(x)$ ，且 $f(x)$ 在点 $x = 0$ 处左连续， $f(0) = -1, S(0) = 3$ ，则 $lim_(x arrow 0^+) f(x) =$  #underline("          ") .
], a: [7.])

#question([
  8. 设函数 $f(x) = 1 - (x/pi ) (0 <= x <= pi )$ 的余弦级数的和函数为 $S(x)$ ，则 $S(-3) =$  #underline("          ") .
], a: [1-3])

#question([
  9. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数, 其傅里叶系数为 $a_n, b_n$ . 若函数 $g(x) = f(-x)$ , 则 $g(x)$ 的傅里叶系数 $a_n^(*), b_n^(*)$ 与 $a_n, b_n$ 的关系为 $ a_n^(*) = \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ \_ $ .
], a: [$a_n,b_n$])

#prob-type("三、计算题")

#question([
  10. 将函数 $f(x) = (pi - x/2) (0 <= x <= pi )$ 展开成正弦级数
], a: [$f(x) = sum_(n=1)^( oo ) (1/n) sin n x, x in (0, pi ]$ .])

#question([
  11. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，它在区间 $[- pi , pi )$ 上的表达式为 $f(x) = 3 x^2 + 1$ $(- pi <= x < pi )$ ，试将 $f(x)$ 展开成傅里叶级数。
], a: [$f(x) = pi^2 + 1 + 12 sum_(n=1)^( oo )(((-1)^n)/(n^2)) cos n x, x in (- oo , + oo )$ .])

#question([
  12. 将函数 $f(x) = (1/x^2 + 3 x + 2)$ 展开成 $(x + 4)$ 的幂级数
], a: [$(1/x^2 + 3 x + 2) = sum_(n=0)^( oo )(((1)/(2^(n+1))) - ((1)/(3^(n+1))))(x + 4)^n, x in (-6, -2)$ .])

== 第六节 一般周期函数的傅里叶级数

#prob-type("一、选择题")

#question([
  1. 函数 $ f(x) = cases(cos((pi x)/l) & "if" 0 <= x <= l/2, 0 & "if" l/2 < x <= l) $ 展开成余弦级数时，应对 $f(x)$ 进行（ ）.

A. 周期为 $2 l$ 的延拓

B. 偶延拓

C. 周期为 $l$ 的延拓

D. 奇延拓
], a: [B.])

#question([
  2. 函数 $ f(x) = cases(2 x + 1 & "if" -3 <= x <= 0, x & "if" 0 < x <= 3) $ 展开成傅里叶级数时，应（ ）.

A. 在区间 $[-3, 3)$ 外进行周期延拓，级数在区间 $(-3, 0) (0, 3)$ 内收敛于 $f(x)$ 

B. 进行奇延拓, 级数在区间 $(-3, 0) (0, 3)$ 内收敛于 $f(x)$ 

C. 进行偶延拓, 级数在区间 $[-3, 3]$ 上收敛于 $f(x)$ 

D. 在区间 $[-3, 3)$ 外进行周期延拓，级数在区间 $[-3, 3]$ 上收敛于 $f(x)$
], a: [D.])

#prob-type("二、填空题")

#question([
  3. 将函数 $ f(x) = cases(0 & "if" 0 <= x <= 1, 2 x & "if" 1 < x <= 2) $ 在\[0,2\]上展开成余弦级数，其和函数为
], a: [S(x)=2x， 1\<x≤2,1， x=1.])

#prob-type("三、计算题")

#question([
  4. 将函数 $f(x) = x(0 < x < 2)$ 展开成正弦级数
], a: [$x = (4/pi ) sum_(n = 1)^( oo )(((-1)^(n + 1))/(n)) sin (n pi x/2)$ （0\<x\<2).])

== 总习题十二

#prob-type("一、判断题")

#question([
  1. 若级数 $sum_(n=1)^( oo ) u_n$ 收敛，则 $lim_(n arrow oo ) u_n = 0$ . （）
], a: [$$])

#question([
  2. 若级数 $sum_(n=1)^( oo ) u_n$ 收敛, $sum_(n=1)^( oo ) v_n$ 发散, 则级数 $sum_(n=1)^( oo ) (u_n + v_n)$ 发散.
], a: [])

#question([
  3. 级数加括号后不改变其敛散性. （）
], a: [D.])

#question([
  4. 正项级数收敛的充要条件是前 $n$ 项和构成的数列 $(s_n)$ 有界. （）
], a: [A.])

#question([
  5. 若正项级数 $sum_(n=1)^( oo ) u_n$ 收敛, 则级数 $sum_(n=1)^( oo ) sqrt (u_n u_(n+1))$ 也收敛. （）
], a: [$$])

#question([
  6. 若 $lim_(n arrow oo )(u_n/v_n) = l(0 < l < + oo )$ ，则级数 $sum_(n=1)^( oo ) u_n$ 和 $sum_(n=1)^( oo ) v_n$ 有相同的敛散性.
], a: [2.])

#prob-type("二、选择题")

#question([
  7. 当级数 $sum_(n=1)^( oo )(a_n+b_n)$ 收敛时, 级数 $sum_(n=1)^( oo )a_n$ 与 $sum_(n=1)^( oo )b_n$ ( ).
A. 必同时收敛

B. 必同时发散

C. 可能不同时收敛

D. 不可能同时收敛
], a: [x + 1 1 y + 5 z = 1])

#question([
  8. 正项级数 $sum_(n=1)^( oo ) a_n$ 收敛是级数 $sum_(n=1)^( oo ) a_n^2$ 收敛的（ ）.
A. 充分条件

B. 必要条件

C. 充要条件

D. 无关条件
], a: [(1)/(4) (e ^ {2} + 1).  ])

#question([
  9. 设 $sum_(n=1)^( oo ) a_n$ 为任意项级数, 若 $|a_n| > |a_(n+1)|$ 且 $lim_(n arrow oo ) a_n = 0$ , 则该级数( ).
A. 条件收敛

B. 绝对收敛

C. 发散

D.敛散性不确定
], a: [(1)/(2).   1])

#question([
  10. 若函数 $y = sum_(n=0)^( oo ) ((x^n)/((n!)^2))$ ，则 $x y'' + y' = ( " " )$ .
A. $y$ 

B. $2 y^( )$ 

C. $y^( )$ 

D. 0
], a: [B.])

#question([
  11. 若级数 $sum_(n=0)^( oo ) a_n (x - 1)^n$ 在点 $x = -1$ 处收敛, 则该级数在点 $x = 2$ 处( ).
A. 发散

B. 条件收敛

C. 绝对收敛

D.敛散性不确定
], a: [提示：利用极坐标，有])

#question([
  12. 级数 $(1/2) - (1/4) + (1/8) - + (((-1)^(n-1))/(2^n)) +$ 的和为（ ）.
A. $(1/2)$ 

B. 1 

C. $(1/3)$ 

D. $(2/3)$
], a: [提示：（方法一）过点 $M(2, 1, 3)$ 且与直线 $l: (x + 1/3) = (y - 1/2) = (z/-1)$ 垂直的平面 $Pi$ 的方程为])

#prob-type("三、填空题")

#question([
  13. 幂级数 $sum_(n = 0)^( oo )(x^n/n!)$ 的收敛区间为
], a: [提示：利用全微分，有])

#question([
  14. 级数 $sum_(n=0)^( oo ) (1/1+a^n)(a>0)$ 当 $a$ 满足条件  #underline("          ")  时收敛.
], a: [提示：解方程组])

#question([
  15. 幂级数 $sum_(n = 1)^( oo )(((-1)^(n)x^(3 n - 1))/(n dot 8^(n)))$ 的收敛域为
], a: [提示: $ lim_(n arrow oo )|((a_(n + 1))/(a_n))| = lim_(n arrow oo )(((n + 1 + 1)(n + 1 + 2))/((n + 1)(n + 2))) = $])

#question([
  16. 级数 $sum_(n=1)^( oo )(u_n - 2)$ 收敛, 则 $lim_(n arrow oo ) u_n = underline("          ")$ .
], a: [提示：显然 $P = x^3, Q = (1/z) f(y/z) + y^3, R = (1/y) f(y/z) + z^3$ ，设锥面 $x = sqrt (y^2 + z^2)$ 和球面 $x^2 + y^2 + z^2 = 1$ 所围空间闭区域为 $Omega$ ，则])

#question([
  17. 幂级数 $sum_(n = 0)^( oo )((x^n)/(3^n + (-2)^n + 3 dot 2^n))$ 的收敛半径 $R =$
], a: [提示：记 $P = 2 x y^3 - y^2 cos x, Q = 1 - 2 y sin x + 3 x^2y^2$ ，有])

#question([
  18. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，且 $ f(x) = cases( 0 & "if" - pi <= x < 0, x + 2 & "if" 0 <= x < pi ) $ 则 $f(x)$ 的傅里叶级数在点 $x = 0$ 处收敛于
], a: [提示：因为函数 $g(x, y)$ 在点 $(0, 0)$ 的某邻域内连续，所以 $lim_((x, y) arrow (0, 0)) g(x, y) = g(0, 0)$ . 而])

#prob-type("四、计算题")

#question([
  19. 求幂级数 $sum_(n=1)^( oo ) (-1)^(n) (((x - 2)^(2 n+1))/(2 n + 1))$ 的收敛域.
], a: [提示: $ integral.double_D (x^2 + y) \, dif x \, dif y = (1/2) integral.double_D (x^2 + y^2) \, dif x \, dif y + integral.double_D y \, dif x \, dif y $])

#question([
  20. 求幂级数 $sum_(n=1)^( oo ) ((n^2 + 1)/(n)) x^(2 n) (|x| < 1)$ 在收敛区间内的和函数, 并求 $sum_(n=1)^( oo ) ((n^2 + 1)/(n dot 2^(n)))$ 的和.
# 高等数学（下册）期末测试模拟卷（一）
], a: [提示：设坐标原点为 $O$ ，圆上一点 $A(a, 0)$ ，记 $Q(x, y) = x (e)^(y) - 2 y, P(x, y) = (e)^(y) + x - y, D$ 为 $L$ 所围成的半圆。因此])

#prob-type("一、选择题（每小题3分，共15分）")

#question([
  1. 若函数 $f( (x,y))$ 在点 $( ((x)_0,(y)_0))$ 处可微,则 $f( (x,y))$ 在点 $( ((x)_0,(y)_0))$ 处不一定(   ).
A. 连续

B. 偏导数存在

C. 偏导数连续

D. 曲面 $z = f(x, y)$ 的切平面存在
], a: [$$])

#question([
  2. 设 $f(x)$ 为连续函数， $F(t) = integral_1^(t) dif y integral_y^(t) f(x) \, dif x$ ，则 $F'(2) = ( " " )$ .
A. $(2 f)( 2)$ 

B. $f(2)$ 

C. $f(2)$ 

D. 0
], a: [])

#question([
  3. 将 $x O y$ 面上的双曲线 $(x^2/3) - 4 y^2 = 1$ 绕 $y$ 轴旋转一周所得旋转曲面的方程为（）.
A. $(x^2/3) - 4 y^2 - 4 z^2 = 1$ 

B. $((x^2)/(3)) - 4 y^2 + 4 z^2 = 1$ 

C. $((x^2)/(3)) + ((y^2)/(3)) - 4 z^2 = 1$ 

D. $((x^2)/(3)) - 4 y^2 + ((z^2)/(3)) = 1$
], a: [D.])

#question([
  4. 设 $L: x^2 + y^2 = 1$ ，取顺时针方向，则 $integral.cont_L ((x \, dif y - y \, dif x)/(x^2 + y^2)) = ( " " )$ .
A. 0 

B. $2 pi$ 

C. $-2 pi$ 

D. $pi$
], a: [A.])

#question([
  5. 下列级数中，条件收敛的是（ ）
A. $sum_(n=1)^( oo ) (-1)^(n) sqrt (n/n+1)$ 

B. $sum_(n=1)^( oo ) ((-1)^(n-1))( sqrt (n(n+1)))$ 

C. $sum_(n=1)^( oo ) (((-1)^(n-1))/(n(n+1)))$ 

D. $sum_(n=1)^( oo ) (((-1)^(n-1))/(2^n))$
], a: [$$])

#prob-type("二、填空题（每小题3分，共15分）")

#question([
  6. 已知 $|a| = 2$ ， $|b| = sqrt (2)$ ，且 $a dot b = 2$ ，则 $|a times b| =$  #underline("          ") .
], a: [2.])

#question([
  7. 函数 $u = x y^2 + z^3 - x y z$ 在点(1,1,2)处沿方向角为 $alpha = (pi /3), beta = (pi /4), gamma = (pi /3)$ 的方向的方向导数为
], a: [x + 1 1 y + 5 z = 1])

#question([
  8. 曲面 $x^2 + 2 y^2 + z - x e^(z) = 4$ 在点(0,1,2)处的切平面方程为
], a: [(1)/(4) (e ^ {2} + 1).  ])

#question([
  9. 设曲面 $Sigma$ 为上半球面 $z = sqrt (2 - x^2 - y^2)$ ，则 $integral.double_( Sigma ) (y + 1) \, dif S =$  #underline("          ") .
], a: [(1)/(2).   1])

#question([
  10. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数, 且 $ f(x) = cases( 1 - x & "if" - pi <= x < 0, 1 + x & "if" 0 <= x < pi ) $ $S(x)$ 为 $f(x)$ 的傅里叶级数的和函数, 则 $S(-3 pi ) =  #underline("          ") $ .
], a: [B.])

#prob-type("三、计算题 $(11\sim 12$ 每小题6分， $13\sim 17$ 每小题7分，18小题8分，19小题10分，20小题5分，共70分)")

#question([
  11. 设函数 $z = f(x, y)$ 的全微分为 $dif z = (4 - 2 x) dif x - (2 y + 4) dif y$ ，试确定 $f(x, y)$ 的极值点，并判别该点是极大值点还是极小值点。
], a: [提示：利用极坐标，有])

#question([
  12. 计算 $integral.double_D cos (x/y) \, dif x \, dif y$ ，其中 $D$ 为由直线 $x = 0, y = (pi /2), y = pi$ 及抛物线 $x = y^2$ 所围成的平面区域。
], a: [提示：（方法一）过点 $M(2, 1, 3)$ 且与直线 $l: (x + 1/3) = (y - 1/2) = (z/-1)$ 垂直的平面 $Pi$ 的方程为])

#question([
  13. 设函数 $z = f((x/y), (y/x))$ ，其中 $f$ 具有一阶连续偏导数，求 $dif z$ .
], a: [提示：利用全微分，有])

#question([
  14. 求曲线 $ cases( x^2 + 2 y^2 + z^2 = 10, x - y + z = 0 ) $ 在点(1,2,1)处的切线方程
], a: [提示：解方程组])

#question([
  15. 设函数 $f(u)$ 具有一阶连续导数，且 $f(0) = 0, f'(0) = 1$ ，求 $ lim_(t arrow 0^+) (1/t^3) integral.double_(x^2 + y^2 <= t^2) f( sqrt (x^2 + y^2)) \, dif x \, dif y $ .
], a: [提示: $ lim_(n arrow oo )|((a_(n + 1))/(a_n))| = lim_(n arrow oo )(((n + 1 + 1)(n + 1 + 2))/((n + 1)(n + 2))) = $])

#question([
  16. 计算 $integral.cont_L (y^2 + x) dif s$ ，其中 $L$ 为圆 $x^2 + y^2 = 4$ .
], a: [提示：显然 $P = x^3, Q = (1/z) f(y/z) + y^3, R = (1/y) f(y/z) + z^3$ ，设锥面 $x = sqrt (y^2 + z^2)$ 和球面 $x^2 + y^2 + z^2 = 1$ 所围空间闭区域为 $Omega$ ，则])

#question([
  17. 将函数 $f(x) = (1/x^2 + 4 x + 3)$ 展开成 $(x - 1)$ 的幂级数.
], a: [提示：记 $P = 2 x y^3 - y^2 cos x, Q = 1 - 2 y sin x + 3 x^2y^2$ ，有])

#question([
  18. 设函数 $f(x)$ 在区间 $(- oo , + oo )$ 上具有连续导数， $L$ 是上半平面 $(y > 0)$ 内以点 $(a, b)$ 为起点，点 $(c, d)$ 为终点的有向分段光滑曲线，记
$ I = integral_L [1/y + y f(x y)] dif x + [x f(x y) - x/y^2] dif y . $

(1) 证明: 曲线积分 $I$ 与路径 $L$ 无关;

(2) 当 $a b = c d$ 时, 计算 $I$ 的值.
], a: [提示：因为函数 $g(x, y)$ 在点 $(0, 0)$ 的某邻域内连续，所以 $lim_((x, y) arrow (0, 0)) g(x, y) = g(0, 0)$ . 而])

#question([
  19. 计算 $ I = integral.double_( Sigma ) [f_y(x, y) + x^3] dif y dif z + [y^3 - f_x(x, y)] dif z dif x + z^3 dif x dif y $ ，其中 $f(x, y)$ 具有二阶连续偏导数， $Sigma$ 为锥面 $z = sqrt (x^2 + y^2) (0 <= z <= 1)$ 的下侧。
], a: [提示: $ integral.double_D (x^2 + y) \, dif x \, dif y = (1/2) integral.double_D (x^2 + y^2) \, dif x \, dif y + integral.double_D y \, dif x \, dif y $])

#question([
  20. 设幂级数 $sum_(n=0)^( oo ) a_n x^n$ 在 $(- oo , + oo )$ 上收敛，且 $a_0 = 0, a_1 = 1, a_2 = 0, a_(n+2) = (2/n+1) a_n (n = 0, 1, 2, ... )$ ，求该幂级数的和函数 $S(x)$ .
\# 高等数学（下册）期末测试模拟卷（二）
], a: [提示：设坐标原点为 $O$ ，圆上一点 $A(a, 0)$ ，记 $Q(x, y) = x (e)^(y) - 2 y, P(x, y) = (e)^(y) + x - y, D$ 为 $L$ 所围成的半圆。因此])

#prob-type("一、选择题（每小题3分，共15分）")

#question([
  1. 设有直线 $ l: cases( 2 x + 3 y - z = 1,   x - 2 y - 3 z = 2 ) $ 及平面 $Pi : 1 1 x - 5 y + 7 z = 2$ ，则直线 $l( " " )$ .
A.与平面 $$ 斜交

B.垂直于平面 $$ 

C. 平行于平面 $Pi$ 

D. 在平面 $Pi$ 上
], a: [$$])

#question([
  2. 函数 $z = 2 x^3 - 4 x^2 + 2 x y - y^2$ 的极值点为（ ）.
A. $(0,0)$ 

B. (1, 1) 

C. $(0,0)$ 与(1,1)

D. 无极值点
], a: [])

#question([
  3. 设函数 $ f(x, y) = cases( ((x y)/( sqrt (x^4 + y^4))), & (x, y) != (0, 0),   0, & (x, y) = (0, 0), ) $ 则在点(0,0)处（ ）.
A. 偏导数不存在, 函数不连续

B. 偏导数不存在, 函数连续

C. 偏导数存在, 函数连续

D. 偏导数存在, 函数不连续
], a: [D.])

#question([
  4. 设曲面 $Sigma$ 的方程为 $x^2 + y^2 + z^2 = a^2(z >= 0)$ ， $Sigma_1$ 为 $Sigma$ 在第一卦限的部分，则下列选项中正确的是（ ）.
A. $integral.double_( Sigma ) x \, dif S = 4 integral.double_( Sigma_1) x \, dif S$ 

B. $integral.double_( Sigma ) y \, dif S = 4 integral.double_( Sigma_1) y \, dif S$ 

C. $integral.double_( Sigma ) z \, dif S = 4 integral.double_( Sigma_1) x \, dif S$ 

D. $integral.double_( Sigma ) x y z \, dif S = 4 integral.double_( Sigma_1) x y z \, dif S$
], a: [A.])

#question([
  5. 级数 $sum_(n=1)^( oo ) (sin n alpha /n^4)$ 是( ).
A.条件收敛级数

B. 绝对收敛级数

C. 发散级数

D.敛散性不确定的级数
], a: [$$])

#prob-type("二、填空题（每小题3分，共24分）")

#question([
  6. 已知直线 $(x/2) = (y + 2/-2) = (z - 1/1)$ 与 $(x - 1/4) = (y - 3/a) = (z + 1/-2)$ 相互垂直，则 $a =$
], a: [2.])

#question([
  7. 点 $M(1,0,-1)$ 在平面 $x + 2 y + z = 12$ 上的投影点的坐标为
], a: [x + 1 1 y + 5 z = 1])

#question([
  8. 设函数 $f$ 可微， $z = f(x + y, x y)$ 在点 $(x, y)$ 处的全微分 $dif z =$  #underline("          ") .
], a: [(1)/(4) (e ^ {2} + 1).  ])

#question([
  9. 函数 $u = x y^2 + z^3 - x^2y z$ 在点 $M(1,1,1)$ 处的最大方向导数为
], a: [(1)/(2).   1])

#question([
  10. 设 $I = integral.triple_( Omega ) (( dif v)/(1 + x^2 + y^2))$ , 其中空间闭区域 $Omega$ 由 $z = sqrt (x^2 + y^2)$ 与 $z = 1$ 围成, 则 $I$ 在柱面坐标系下的三次积分为  #underline("          ")  (不用计算).
], a: [B.])

#question([
  11. 设 $f(x)$ 为连续函数， $F(t) = integral_0^(t) dif y integral_y^(t) f(x) \, dif x (t > 0)$ ，将 $F(t)$ 交换积分次序后有
], a: [提示：利用极坐标，有])

#question([
  12. 设 $L$ 是直线 $3 x + 4 y = 12 (0 <= x <= 4)$ 的一段，则 $integral_L (3 x + 4 y) dif s =$
], a: [提示：（方法一）过点 $M(2, 1, 3)$ 且与直线 $l: (x + 1/3) = (y - 1/2) = (z/-1)$ 垂直的平面 $Pi$ 的方程为])

#question([
  13. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，它在区间 $[- pi , pi )$ 上的表达式为 $f(x) = x$ ，则 $f(x)$ 的傅里叶级数的和函数 $S(x)$ 在点 $x = (5/2) pi$ 处的值为  #underline("          ") .
], a: [提示：利用全微分，有])

#prob-type("三、计算题(14～17每小题8分，18～19每小题10分，共52分)")

#question([
  14. 求曲线 $ cases( 2 x^2 + 3 y^2 + z^2 = 9,   x + y + z = 2 ) $ 在点(1，-1，2）处的法平面方程
], a: [提示：解方程组])

#question([
  15. 设函数 $z = f(x, y)$ 是由方程 $(c x - a z, c y - b z) = 0$ 所确定的隐函数，其中 $$ 具有一阶连续偏导数，求 $a(partial z/partial x) + b(partial z/partial y) (a, b, c$ 是常数).
], a: [提示: $ lim_(n arrow oo )|((a_(n + 1))/(a_n))| = lim_(n arrow oo )(((n + 1 + 1)(n + 1 + 2))/((n + 1)(n + 2))) = $])

#question([
  16. 计算 $integral.double_D y (e)^(x y) \, dif sigma$ ，其中闭区域 $D: (1/x) <= y <= 1, 1 <= x <= 2$ .
], a: [提示：显然 $P = x^3, Q = (1/z) f(y/z) + y^3, R = (1/y) f(y/z) + z^3$ ，设锥面 $x = sqrt (y^2 + z^2)$ 和球面 $x^2 + y^2 + z^2 = 1$ 所围空间闭区域为 $Omega$ ，则])

#question([
  17. 计算 $integral_L (3 sin x + 2 x y - 4 x) \, dif x + (x^2 - (e)^y) \, dif y$ ，其中 $L$ 为摆线 $ cases( x = t - sin t,   y = 1 - cos t ) $ 上从点 $O(0,0)$ 到点 $A( pi ,2)$ 的一段弧。
], a: [提示：记 $P = 2 x y^3 - y^2 cos x, Q = 1 - 2 y sin x + 3 x^2y^2$ ，有])

#question([
  18. 求幂级数 $sum_(n=1)^( oo )(-1)^(n-1)(2 n-1/n)x^n$ 的收敛半径、收敛域及和函数.
], a: [提示：因为函数 $g(x, y)$ 在点 $(0, 0)$ 的某邻域内连续，所以 $lim_((x, y) arrow (0, 0)) g(x, y) = g(0, 0)$ . 而])

#question([
  19. 计算 $ I = integral.double_( Sigma ) x z^2 \, dif y \, dif z + (x^2 y - z^3) \, dif z \, dif x + (2 x y + y^2 z) \, dif x \, dif y $ , 其中 $Sigma$ 是球面 $x^2 + y^2 + z^2 = a^2 (a > 0)$ 上半部分的上侧.
], a: [提示: $ integral.double_D (x^2 + y) \, dif x \, dif y = (1/2) integral.double_D (x^2 + y^2) \, dif x \, dif y + integral.double_D y \, dif x \, dif y $])

#prob-type("四、应用题（9分）")

#question([
  20. 将周长为 $2 p$ 的矩形绕它的一边旋转一周构成一个圆柱体, 问: 矩形的长、宽分别为多少时, 可使得圆柱体体积最大?
\# 高等数学（下册）期末测试真题（一）
], a: [提示：设坐标原点为 $O$ ，圆上一点 $A(a, 0)$ ，记 $Q(x, y) = x (e)^(y) - 2 y, P(x, y) = (e)^(y) + x - y, D$ 为 $L$ 所围成的半圆。因此])

#prob-type("一、选择题（每小题3分，共30分）")

#question([
  1. 下列四个平面中，通过坐标原点且与 $x$ 轴平行的是（ ）.
A. $(2 x) + (2 y) = 0$ 

B. $3 x + 2 z + 1 = 0$ 

C. $3 x + 2 z = 0$ 

D. $3 y + 2 z = 0$
], a: [$$])

#question([
  2. 已知曲面 $z = 4 - x^2 - y^2$ 在点 $P$ 处的切平面平行于平面 $2 x + 2 y + z - 1 = 0$ ，则点 $P$ 的坐标为（ ）.
A. $(1, - 1,2)$ 

B. $(-1, 1, 2)$ 

C. $(-1, -1, 2)$ 

D. $(1,1,2)$
], a: [])

#question([
  3. 函数 $f(x, y) = (x/y)$ 在点(1,0)处的梯度为( ).
A. $-i$ 

B. $i$ 

C. $-j$ 

D. $j$
], a: [D.])

#question([
  4. 函数 $ f(x, y) = cases( ((x y)/( sqrt (x^2 + y^2))), & (x, y) != (0, 0),   0, & (x, y) = (0, 0) ) $ 在点(0,0)处（ ）.
A. 不连续, 偏导数存在

B. 连续, 偏导数存在

C. 连续, 偏导数不存在

D. 不连续, 偏导数不存在
], a: [A.])

#question([
  5. 函数 $z = x^3 - 3 x + y^2$ 在点(1,0)处（ ）.
A. 取得极大值

B. 取得极小值

C. 不取得极值

D. 不确定是否取得极值
], a: [$$])

#question([
  6. 设函数 $z = (1 + x y)^(x + y)$ ，则 $.(partial z/partial y)|_(2,1) = ( " " )$ .
A. $(27)( ( ln 3 + 2))$ 

B. 27 

C. $(27) ln 3$ 

D. $27( ln 3 + 1)$
], a: [2.])

#question([
  7. 设曲面 $Sigma : x^2 + y^2 + z^2 = R^2 (R > 0)$ 的外法向量的方向余弦为 $cos alpha , cos beta , cos gamma$ ，则 $integral.double_( Sigma ) (x cos alpha + y cos beta + z cos gamma ) dif S = ( " " )$ .
A. $pi R^3$ 

B. $2 pi R^3$ 

C. $3 pi R^3$ 

D. $4 pi R^3$
], a: [x + 1 1 y + 5 z = 1])

#question([
  8. 幂级数 $sum_(n=0)^( oo ) (-1)^(n) ((x^(2 n))/(n!))$ 在区间 $(- oo , + oo )$ 上的和函数是 $S(x) = ( " " )$ .
A. $(e)^(-x^2)$ 

B. $(e)^(x^2)$ 

C. $- (e)^(-x^2)$ 

D. -e
], a: [(1)/(4) (e ^ {2} + 1).  ])

#question([
  9. 设空间闭区域 $Omega = ((x, y, z) | x^2 + y^2 + z^2 <= 1)$ ，则 $integral.triple_( Omega ) sqrt (x^2 + y^2 + z^2) dif v = ( " " )$ .
A. $integral.triple_( Omega ) dif x \, dif y \, dif z$ 

B. $integral_0^(2 pi ) dif theta integral_0^( pi ) dif integral_0^1 rho^3 sin dif rho$ 

C. $integral_0^(2 pi ) dif theta integral_0^ pi dif integral_0^1 rho^3 sin theta dif rho$ 

D. $integral_0^(2 pi ) dif theta integral_0^(2 pi ) dif integral_0^1 rho^3 sin dif rho$
], a: [(1)/(2).   1])

#question([
  10. 当 $-1 <= alpha <= 1$ 时，级数 $sum_(n=1)^( oo ) (((- alpha )^n)/(n^s)) (s > 1)$ （ ）
A. 条件收敛

B. 绝对收敛

C. 发散

D.敛散性不确定
], a: [B.])

#prob-type("二、填空题（每小题3分，共18分）")

#question([
  11. 设 $|a| = 1$ ， $|b| = sqrt (5)$ ，且 $|a + b| = |a - b|$ ，则 $|2 a - 3 b| =$  #underline("          ") .
], a: [提示：利用极坐标，有])

#question([
  12. 设函数 $z = f(x, y)$ 由方程 $(e)^z + x y z + x + cos x = 2$ 所确定，则全微分 $dif z|_(0,1) =$  #underline("          ") .
], a: [提示：（方法一）过点 $M(2, 1, 3)$ 且与直线 $l: (x + 1/3) = (y - 1/2) = (z/-1)$ 垂直的平面 $Pi$ 的方程为])

#question([
  13. $integral_0^2 dif x integral_x^2 (e)^(-y^2) dif y = underline("          ")$
], a: [提示：利用全微分，有])

#question([
  14. 由曲线 $ cases(3 x^2 + 2 y^2 = 12,   z' = 0 ) $ 绕 $y$ 轴旋转一周所得的旋转曲面在点 $(0, sqrt (3), sqrt (2))$ 处的指向外侧的单位法向量为
], a: [提示：解方程组])

#question([
  15. 设函数 $f(x) = |x - (1/2)|, b_n = 2 integral_0^1 f(x) sin n pi x dif x (n = 1,2, )$ ，令 $S(x) = sum_(n=1)^( oo ) b_n sin n pi x$ ，则 $S(-2021) =$  #underline("          ") .
], a: [提示: $ lim_(n arrow oo )|((a_(n + 1))/(a_n))| = lim_(n arrow oo )(((n + 1 + 1)(n + 1 + 2))/((n + 1)(n + 2))) = $])

#question([
  16. 设 $L: |x| + |y| = 1$ ，则 $integral.cont_L (( dif s)/(|x| + |y|)) =$  #underline("          ") .
], a: [提示：显然 $P = x^3, Q = (1/z) f(y/z) + y^3, R = (1/y) f(y/z) + z^3$ ，设锥面 $x = sqrt (y^2 + z^2)$ 和球面 $x^2 + y^2 + z^2 = 1$ 所围空间闭区域为 $Omega$ ，则])

#prob-type("三、计算题（ $17\sim 21$ 每小题7分，22小题9分，共44分）")

#question([
  17. 求过直线 $L_1$ : $(x - 1/1) = (y - 2/2) = (z - 3/3)$ 且平行于直线 $L_2$ : $ cases( x = t + 1,   y = -2,   z = t - 3 ) $ 的平面方程
], a: [提示：记 $P = 2 x y^3 - y^2 cos x, Q = 1 - 2 y sin x + 3 x^2y^2$ ，有])

#question([
  18. 设函数 $z = f(2 x - y, y sin x)$ ，其中 $f$ 具有二阶连续偏导数，求 $(partial^2 z/partial x partial y)$ .
], a: [提示：因为函数 $g(x, y)$ 在点 $(0, 0)$ 的某邻域内连续，所以 $lim_((x, y) arrow (0, 0)) g(x, y) = g(0, 0)$ . 而])

#question([
  19. 计算 $integral.double_D (x^2 + y) \, dif x \, dif y$ ，其中闭区域 $D: x^2 + y^2 <= 1$ .
], a: [提示: $ integral.double_D (x^2 + y) \, dif x \, dif y = (1/2) integral.double_D (x^2 + y^2) \, dif x \, dif y + integral.double_D y \, dif x \, dif y $])

#question([
  20. 计算 $integral_L (x (e)^(y) - 2 y) dif y + ( (e)^(y) + x - y) dif x$ ，其中 $L$ 为圆 $x^2 + y^2 = a x (a > 0)$ 的上半部分，取逆时针方向。
], a: [提示：设坐标原点为 $O$ ，圆上一点 $A(a, 0)$ ，记 $Q(x, y) = x (e)^(y) - 2 y, P(x, y) = (e)^(y) + x - y, D$ 为 $L$ 所围成的半圆。因此])

#question([
  21. 计算 $integral.double_( Sigma ) x \, dif y \, dif z - y \, dif z \, dif x + (z^2 + x) \, dif x \, dif y$ ，其中 $Sigma$ 为半球面 $z = sqrt (4 - x^2 - y^2)$ 的下侧。
], a: [提示: 作辅助曲面 $Sigma_1: z = 0 (x^2 + y^2 <= 4)$ , 取上侧, $Omega$ 为 $Sigma$ 与 $Sigma_1$ 所围成的空间闭区域. 由高斯公式, 得
原式 $ = ( integral.double_( Sigma + Sigma_1) - integral.double_( Sigma_1))[x dif y dif z - y dif z dif x + (z^2 + x) dif x dif y] $
$$
\begin{array}{l} = - \iiint\_ {Omega} (1 - 1 + 2 z) d v - \iint\_ {x ^ {2} + y ^ {2} <=qslant 4} x d x d y   = - 2 \int\_ {0} ^ {2} z  dot  pi (4 - z ^ {2}) d z - 0 = - 8 pi .   \end{array}
$$])

#question([
  22. 设幂级数 $sum_(n=1)^( oo ) (((x-3)^(n))/(n dot 3^(n)))$ , 求该幂级数的
（1）收敛半径；

（2）收敛域；

（3）和函数.
], a: [提示：(1) 因 $ lim_(n arrow oo )|((a_(n + 1))/(a_n))| = lim_(n arrow oo )((n dot 3^n)/((n + 1) dot 3^(n + 1))) = (1/3) $ ，故收敛半径为 $R = 3$
(2) 当 $x = 0$ 时, 原级数为 $sum_(n=1)^( oo ) (((-1)^n)/(n))$ 收敛; 当 $x = 6$ 时, 原级数为 $sum_(n=1)^( oo ) (1/n)$ 发散, 从而原级数的收敛域为 $[0,6)$ .
(3) 记和函数 $S(x) = sum_(n=1)^( oo ) (((x - 3)^n)/(n dot 3^n))$ , 令 $t = (x - 3/3), -1 <= t < 1$ , 则
$$
S (t) = \sum\_ {n = 1} ^ {oo} \frac {t ^ {n}}{n}, \quad S ^ {\prime} (t) = \sum\_ {n = 1} ^ {oo} t ^ {n - 1} = (1)/(1 - t).
$$
于是，有 $S(t) = - ln (1 - t)$ ，从而
$$
$$])

#prob-type("四、选答题(8分)(考生可从下面2个题中任选1个作答，多做不多得分)")

#question([
  23. 在椭球面 $2 x^2 + 2 y^2 + z^2 = 1$ 上求一点，使得函数 $u = x^2 + y^2 + z^2$ 在该点处沿方向 $l = (1, -1, 0)$ 的方向导数最大。
], a: [提示：由题意可知目标函数为
$$
(partial u)/(partial l) = op {g r a d} u (x, y, z)  dot  e \_ {l} = {2 x, 2 y, 2 z } <=ft{\frac {1}{\sqrt {2}}, - \frac {1}{\sqrt {2}}, 0 \right} = \sqrt {2} (x - y).
$$
作拉格朗日函数
$$
F (x, y, z, lambda) = x - y + lambda (2 x ^ {2} + 2 y ^ {2} + z ^ {2} - 1),
$$
解方程组
cases(F_x' = 1 + 4 lambda x = 0, F_y' = -1 + 4 lambda y = 0, F_z' = 2 lambda z = 0, F_lambda' = 2x^2 + 2y^2 + z^2 - 1 = 0)
得两个可能极值点 $M_1((1/2), - (1/2),0),M_2(-(1/2),(1/2),0)$ .在点 $M_1$ 处， $(partial u/partial l) = sqrt (2)$ ；在点 $M_2$ 处， $(partial u/partial l) = - sqrt (2)$ ，所以在点 $((1/2), - (1/2),0)$ 处方向导数最大.])

#question([
  24. 设有一凤凰山, 取其底面所在平面为 $x O y$ 面, 底部所占的区域为 $D = ((x,y) | x^2 + y^2 - x y <= 75)$ , 凤凰山的高度函数为 $h(x,y) = 75 - x^2 - y^2 + x y$ . 现欲利用此山进行攀岩活动, 为此寻找山脚坡度最大的点作为攀爬点, 试确定攀爬起点的位置.
\# 高等数学（下册）期末测试真题（二）
], a: [提示：因为 $op (g r a d) h(x, y) = (y - 2 x, x - 2 y)$ ，所以在点 $(x, y)$ 处的最大方向导数为
$$
\| op {g r a d} h (x, y) \| = \sqrt {5 x ^ {2} + 5 y ^ {2} - 8 x y}.
$$
令函数 $f = 5 x^2 + 5 y^2 - 8 x y$ ，求 $f$ 在约束条件 $x^2 + y^2 - x y = 75$ 下的极值.
作拉格朗日函数
$$
L = 5 x ^ {2} + 5 y ^ {2} - 8 x y + lambda (7 5 - x ^ {2} - y ^ {2} + x y),
$$
解方程组
cases(L_x' = 10x - 8y + lambda (y - 2x) = 0, L_y' = 10y - 8x + lambda (x - 2y) = 0, L_lambda' = 75 - x^2 - y^2 + x y = 0)
O
得可能极值点 $M_1(5 sqrt (3), 5 sqrt (3)), M_2(-5 sqrt (3), -5 sqrt (3)), M_3(5, -5), M_4(-5, 5)$ . 由于
$$
f (M \_ {1}) = f (M \_ {2}) = 1 5 0, \quad f (M \_ {3}) = f (M \_ {4}) = 4 5 0,
$$
因此在山脚的点 $M_3$ 或点 $M_4$ 可作为攀爬的起点.
\# 高等数学（下册）期末测试真题（二）
$$
$$
$$
\iint\_ {D}  {e} ^ {- x ^ {2} - y ^ {2}}  {d} x  {d} y = \int\_ {0} ^ {2 pi}  {d} theta \int\_ {0} ^ {R} \rho  {e} ^ {- \rho^ {2}}  {d} \rho = pi (1 -  {e} ^ {- R ^ {2}}).
$$
$$
3 (x - 2) + 2 (y - 1) - (z - 3) = 0,
$$
令 $(x + 1/3) = (y - 1/2) = (z/-1) = t$ ，即 $x = 3 t - 1, y = 2 t + 1, z = -t$ ，代入上式得
$$
3 (3 t - 1) + 2 (2 t + 1) - (- t) = 5,
$$
即 $t = (3/7)$
则直线 $l$ 与平面 $Pi$ 的交点为 $((2/7),(13/7), - (3/7))$ ．于是，所求直线过点 $M(2,1,3)$ 及点 $((2/7),(13/7), - (3/7))$ ，则直线方程为
$$
(x - 2)/(2) = (y - 1)/(- 1) = (z - 3)/(4).
$$
（方法二）将已知直线方程化为一般方程 $ cases( 2 x - 3 y + 5 = 0,   x + 3 z + 1 = 0, ) $ 并写出该直线的平面束方程为
$$
(2 x - 3 y + 5) + lambda (x + 3 z + 1) = 0,
$$
即
$$
$$
将点(2,1,3)代入上述方程，解得 $lambda = -(1/2)$ ，则过点 $M$ 与已知直线的平面方程为
$$
$$
过点 $M$ 且垂直于已知直线的平面方程为
$$
3 x + 2 y - z - 5 = 0,
$$
因此所求直线即为所得两平面的交线, 直线方程为
$$
$$
$$
\begin{array}{l}  {d} z =  {d} f (x y, (x)/(y)) +  {d} g (x ^ {2} - y ^ {2})   = f \_ {1} ^ {\prime}  {d} (x y) + f \_ {2} ^ {\prime}  {d} ((x)/(y)) + g ^ {\prime}  {d} (x ^ {2} - y ^ {2})   = f \_ {1} ^ {\prime} (y  {d} x + x  {d} y) + f \_ {2} ^ {\prime} \frac {y  {d} x - x  {d} y}{y ^ {2}} + g ^ {\prime} (2 x  {d} x - 2 y  {d} y)   = (y f \_ {1} ^ {\prime} + \frac {f \_ {2} ^ {\prime}}{y} + 2 x g ^ {\prime}) d x + (x f \_ {1} ^ {\prime} - \frac {x f \_ {2} ^ {\prime}}{y ^ {2}} - 2 y g ^ {\prime}) d y,   \end{array}
$$
从而
$$
(partial z)/(partial x) = y f \_ {1} ^ {\prime} + \frac {f \_ {2} ^ {\prime}}{y} + 2 x g ^ {\prime},
$$
$$
\begin{array}{l} \frac {partial^ {2} z}{partial x partial y} = (partial)/(partial y) ((partial z)/(partial x)) = (partial)/(partial y) (y f \_ {1} ^ {\prime} + \frac {f \_ {2} ^ {\prime}}{y} + 2 x g ^ {\prime}) = (partial)/(partial y) (y f \_ {1} ^ {\prime}) + (partial)/(partial y) (\frac {f \_ {2} ^ {\prime}}{y}) + (partial)/(partial y) (2 x g ^ {\prime})   = <=ft\[ f \_ {1} ^ {\prime} + y (x f \_ {1 1} ^ {\prime \prime} - \frac {x}{y ^ {2}} f \_ {1 2} ^ {\prime \prime}) \right\] + \frac {1}{y ^ {2}} <=ft\[ y (x f \_ {2 1} ^ {\prime \prime} - \frac {x}{y ^ {2}} f \_ {2 2} ^ {\prime \prime}) - f \_ {2} ^ {\prime} \right\] - 4 x y g ^ {\prime \prime}   = f \_ {1} ^ {\prime} - \frac {f \_ {2} ^ {\prime}}{y ^ {2}} + x y f \_ {1 1} ^ {\prime \prime} - \frac {x}{y ^ {3}} f \_ {2 2} ^ {\prime \prime} - 4 x y g ^ {\prime \prime}.   \end{array}
$$
cases(f_x' = e^(2x)(2x + 2y^2 + 4y + 1) = 0, f_y' = e^(2x)(2y + 2) = 0)
得驻点 $((1/2), - 1)$ .因为
$$
f \_ {x x} ^ {\prime \prime} ((1)/(2), - 1) = 2 e = A \> 0, \quad f \_ {x y} ^ {\prime \prime} ((1)/(2), - 1) = 0 = B, \quad f \_ {y y} ^ {\prime \prime} ((1)/(2), - 1) = 2 e = C,
$$
且 $"AC" - B^2 > 0$ ，所以该驻点为极小值点，其值为 $-(( (e))/(2))$
当 $|x - 1| < 1$ ，即 $0 < x < 2$ 时，幂级数收敛；当 $x = 0$ ，级数为 $sum_(n=0)^( oo ) (-1)^n (n+1)(n+2)$ 发散；当 $x = 2$ ，级数为 $sum_(n=0)^( oo ) (n+1)(n+2)$ 发散，因此幂级数的收敛域为 $(0,2)$ .
令 $x - 1 = t$ ，记 $S(t) = sum_(n=0)^( oo )(n + 1)(n + 2)t^(n)$ . 由于
$$
\sum\_ {n = 0} ^ {oo} t ^ {n + 2} = \frac {t ^ {2}}{1 - t}, \quad | t | \<   1,
$$
对上式两端同时逐项求导两次，得
$$
\sum\_ {n = 0} ^ {oo} (n + 1) (n + 2) t ^ {n} = \frac {2}{(1 - t) ^ {3}}.
$$
因此，和函数为
$$
$$
$$
(partial P)/(partial x) = 3 x ^ {2}, \quad (partial Q)/(partial y) = 3 y ^ {2} + \frac {f ^ {\prime}}{z ^ {2}}, \quad (partial R)/(partial z) = 3 z ^ {2} - \frac {f ^ {\prime}}{z ^ {2}}.
$$
由高斯公式，得
原式 $ = integral.triple_( Omega ) ( (partial P/partial x) + (partial Q/partial y) + (partial R/partial z) ) dif v = 3 integral.triple_( Omega ) (x^2 + y^2 + z^2) dif v $
$$
\begin{array}{l} = 3 \int\_ {0} ^ {2 pi}  {d} theta \int\_ {0} ^ {(pi)/(4)} \sin phi  {d} phi \int\_ {0} ^ {1} r ^ {4}  {d} r   = (3)/(5) (2 - \sqrt {2}) pi .   \end{array}
$$
$$
(partial P)/(partial y) = 6 x y ^ {2} - 2 y \cos x = (partial Q)/(partial x),
$$
从而曲线积分与路径无关.设点 $O(0,0),A((pi /2),1),B((pi /2),0)$ ，建立新路径为从点 $o$ 到点 $B$ 再到点 $A$ 的折线段，于是
原式 $= integral_("OB")P dif x + Q dif y + integral_("BA")P dif x + Q dif y$
$$
\= 0 + \int\_ {0} ^ {1} (1 - 2 y + \frac {pi^ {2}}{4} y ^ {2}) d y = \frac {pi^ {2}}{4}.
$$
$$
f \_ {x} ^ {\prime} (0, 0) = \lim  \_ {Delta x \rightarrow 0} (f (Delta x , 0) - f (0 , 0))/(Delta x) = \lim  \_ {Delta x \rightarrow 0} (| Delta x |)/(Delta x) g (Delta x, 0),
$$
同理，当 $g(0,0) = 0$ 时，
$$
$$
利用可微分的定义，记 $rho = sqrt (( Delta x)^2 + ( Delta y)^2)$ ，则
$$
\begin{array}{l} \lim  \_ {\rho \rightarrow 0} \frac {Delta f -  {d} f}{\rho} = \lim  \_ {\rho \rightarrow 0} \frac {\[ f (Delta x , Delta y) - f (0 , 0) \] - \[ f \_ {x} ^ {\prime} (0 , 0) Delta x + f \_ {y} ^ {\prime} (0 , 0) Delta y \]}{\rho}   = \lim  \_ {\rho \rightarrow 0} (f (Delta x , Delta y))/(\rho) = \lim  \_ {\rho \rightarrow 0} (| Delta x - Delta y |)/(\rho) g (Delta x, Delta y).   \end{array}
$$
由于 $0 <= (| Delta x - Delta y|/rho ) <= 2$ 为有界量，而当 $g(0,0) = 0$ 时，
$$
\lim  \_ {\rho \rightarrow 0} \frac {Delta f -  {d} f}{\rho} = \lim  \_ {\rho \rightarrow 0} (| Delta x - Delta y |)/(\rho) g (Delta x, Delta y) = 0,
$$
因此函数 $f(x,y)$ 在点 $(0,0)$ 处可微分
129])

#prob-type("一、选择题（每小题4分，共20分）")

#question([
  1. 级数 $sum_(n=1)^( oo ) (((-1)^(n-1))/(n + (-1)^(n-1)))$ .
A. 绝对收敛

B. 条件收敛

C. 发散

D.敛散性不确定

$x + 3 y + 2 z + 1 = 0,$ 2.直线 $4 x - 2 y + z - 2 = 0$ 的位置关系是( ).

A. 直线在平面内

B. 平行但不在平面内

C. 垂直

D. 相交但不垂直
], a: [$$])

#question([
  3. 设 $L: 4 x^2 + y^2 = 1$ ，取正向，则 $integral.cont_L ((-y dif x + x dif y)/(4 x^2 + y^2)) = ( " " )$
A. $-2 pi$ 

B. $2 pi$ 

C. 0 

D. $pi$
], a: [D.])

#question([
  4. 设函数 $f(x, y) = (x y/x^2 + y^2)$ ，则 $lim_((x, y) arrow (0, 0)) f(x, y) = ( " " )$ .
A. 不存在

B. 0 

C. 1 

D. 无穷大
], a: [A.])

#question([
  5. $ integral_0^2 dif x integral_0^x f(x,y) dif y + integral_2^( sqrt (8)) dif x integral_0^( sqrt (8 - x^2))f(x,y) dif y $ 交换积分次序后为( ).
A. $integral_0^2 dif y integral_( sqrt (8 - y^2))^2 f(x,y) dif x$ 

B. $integral_0^2 dif y integral_0^( sqrt (8 - y^2))f(x,y) dif x$ 

C. $integral_0^2 dif y integral_(y^2)^2 f(x,y) dif x$ 

D. $integral_0^2 dif y integral_y^( sqrt (8 - y^2))f(x,y) dif x$
], a: [$$])

#prob-type("二、填空题（每小题4分，共20分）")

#question([
  6. 已知 $|a| = 4$ ，向量 $bold(a)$ 与轴 $u$ 的夹角是 $(pi /3)$ ，则 $op (P r j)_u bold(a) =  #underline("          ") .$
], a: [2.])

#question([
  7. 曲面 $x^3 + y^3 + z^3 + x y z - 6 = 0$ 在点(1,2，-1)处的切平面方程是
], a: [x + 1 1 y + 5 z = 1])

#question([
  8. 平面曲线 $x = (1/4) y^2 - (1/2) ln y (1 <= y <= e)$ 的弧长为
], a: [(1)/(4) (e ^ {2} + 1).  ])

#question([
  9. 函数 $u = ln (x + sqrt (y^2 + z^2))$ 在点 $A(1,0,1)$ 处从点 $A$ 到点 $B(3,-2,2)$ 的方向导数为
], a: [(1)/(2).   1])

#question([
  10. 设函数 $ f(x) = cases( x, & 0 < x <= 1,   1 - x, & 1 < x <= 2, ) S(x) = (a_0/2) + sum_(n=1)^( oo ) a_n cos (n pi x/2) $ 是其傅里叶级数，则 $S(7) =$  #underline("          ") .
], a: [B.])

#prob-type("三、计算题（ $11\sim 15$ 每小题7分， $16\sim 17$ 每小题9分，18小题7分，共60分）")

#question([
  11. 计算 $integral.double_D (e)^(-x^2 - y^2) \, dif x \, dif y$ ，其中 $D$ 是由中心在坐标原点，半径为 $R$ 的圆所围成的闭区域。
], a: [提示：利用极坐标，有])

#question([
  12. 求过点 $M(2, 1, 3)$ 且与直线 $(x + 1/3) = (y - 1/2) = (z/-1)$ 垂直的直线方程
], a: [提示：（方法一）过点 $M(2, 1, 3)$ 且与直线 $l: (x + 1/3) = (y - 1/2) = (z/-1)$ 垂直的平面 $Pi$ 的方程为])

#question([
  13. 设函数 $z = f(x y, (x/y)) + g(x^2 - y^2)$ ，其中 $f$ 具有二阶连续偏导数， $g$ 具有二阶连续导数，求 $(partial^2 z/partial x partial y)$ .
], a: [提示：利用全微分，有])

#question([
  14. 求函数 $f(x, y) = (e)^(2 x)(x + y^2 + 2 y)$ 的极值
], a: [提示：解方程组])

#question([
  15. 已知幂级数 $sum_(n=0)^( oo )(n+1)(n+2)(x-1)^(n)$ , 求其收敛域及和函数.
], a: [提示: $ lim_(n arrow oo )|((a_(n + 1))/(a_n))| = lim_(n arrow oo )(((n + 1 + 1)(n + 1 + 2))/((n + 1)(n + 2))) = $])

#question([
  16. 计算 $ integral.double_( Sigma ) x^3 \, dif y \, dif z + [(1/z) f(y/z) + y^3] \, dif z \, dif x + [(1/y) f(y/z) + z^3] \, dif x \, dif y $ ，其中 $f$ 具有一阶连续导数， $Sigma$ 为锥面 $x = sqrt (y^2 + z^2)$ 和球面 $x^2 + y^2 + z^2 = 1$ 所围立体表面的外侧。
], a: [提示：显然 $P = x^3, Q = (1/z) f(y/z) + y^3, R = (1/y) f(y/z) + z^3$ ，设锥面 $x = sqrt (y^2 + z^2)$ 和球面 $x^2 + y^2 + z^2 = 1$ 所围空间闭区域为 $Omega$ ，则])

#question([
  17. 计算 $integral_L (2 x y^3 - y^2 cos x) dif x + (1 - 2 y sin x + 3 x^2y^2) dif y$ ，其中 $L$ 为抛物线 $2 x = pi y^2$ 上从点 $(0,0)$ 到点 $((pi /2),1)$ 的一段弧。
], a: [提示：记 $P = 2 x y^3 - y^2 cos x, Q = 1 - 2 y sin x + 3 x^2y^2$ ，有])

#question([
  18. 设函数 $f(x, y) = |x - y|g(x, y)$ ，其中函数 $g(x, y)$ 在点(0,0)的某邻域内连续，试问： $g(0,0)$ 为何值时， $f(x, y)$ 在点(0,0)处的两个偏导数均存在？ $g(0,0)$ 为何值时， $f(x, y)$ 在点(0,0)处可微分？
], a: [提示：因为函数 $g(x, y)$ 在点 $(0, 0)$ 的某邻域内连续，所以 $lim_((x, y) arrow (0, 0)) g(x, y) = g(0, 0)$ . 而])

