#import "../template.typ": *

= 第十二章 无穷级数

== 第一节 常数项级数的概念与性质

#prob-type("一、选择题")

#question(
  [
    1. 级数 $sum_(n=1)^oo ((-1)^(n+1)) / 3^n$ 的和等于（ #choice[B] ）。
    A. $-1/4$ #quad B. $1/4$ #quad C. $1/2$ #quad D. $-1/2$
  ],
  a: [$1/4$],
)

#question(
  [
    2. 下列级数中收敛的是（ #choice[C] ）。
    A. $sum_(n=1)^oo (4^n + 8^n) / 8^n$ #quad B. $sum_(n=1)^oo (8^n - 4^n) / 8^n$ \
    C. $sum_(n=1)^oo (2^n + 4^n) / 8^n$ #quad D. $sum_(n=1)^oo (2^n dot 4^n) / 8^n$
  ],
  a: [C.],
)

#question(
  [
    3. 若 $lim_(n arrow oo) u_n = 0$，则级数 $sum_(n=1)^oo u_n$（ #choice[C] ）。
    A. 一定收敛 #quad B. 一定发散 \
    C. 可能收敛，也可能发散 #quad D. 部分和 $s_n = u_1 + u_2 + dots + u_n = 0$
  ],
  a: [C.],
)

#question(
  [
    4. 下列级数中发散的是（ #choice[A] ）。
    A. $sum_(n=1)^oo ln(1 + 1/n)$ #quad B. $sum_(n=1)^oo 1/3^n$ \
    C. $sum_(n=1)^oo 1 / (n(n+2))$ #quad D. $sum_(n=1)^oo (3^n + (-1)^n) / 4^n$
  ],
  a: [A.],
)

#prob-type("二、填空题")

#question(
  [
    5. 级数 $2/1 - 3/2 + 4/3 - 5/4 + 6/5 - dots$ 的一般项是 #ans[$(-1)^(n+1) (n+1)/n$]。
  ],
  a: [$(-1)^(n+1) (n+1)/n$],
)

#question(
  [
    6. 设级数 $sum_(n=1)^oo 1 / ((2n-1)(2n+1))$，则 $s_n =$ #ans[$1/2 (1 - 1/(2n+1))$]，$lim_(n arrow oo) s_n =$ #ans[$1/2$]。
  ],
  a: [$s_n = 1/2 (1 - 1/(2n+1)), S = 1/2$],
)

#question(
  [
    7. 设级数 $sum_(n=1)^oo u_n$ 的部分和为 $s_n = (2^n - 1) / 2^n$，则级数的一般项 $u_n =$ #ans[$1/2^n$]，余项 $r_n = sum_(k=n+1)^oo u_k =$ #ans[$1/2^n$]。
  ],
  a: [$u_n = 1/2^n, r_n = 1/2^n$],
)

#question(
  [
    8. 已知数列 $(b_n)$，有 $lim_(n arrow oo) b_n = oo$，且 $b_n != 0$ ($n = 1, 2, dots$)，则级数 $sum_(n=1)^oo ( 1/b_n - 1/b_(n+1) )$ 的和为 #ans[$1/b_1$]。
  ],
  a: [$1/b_1$],
)

#prob-type("三、计算题")

#question(
  [
    9. 根据级数收敛与发散的定义判定下列级数的敛散性：
    (1) $1/(1 dot 3) + 1/(3 dot 5) + dots + 1/((2n-1)(2n+1)) + dots$；

    (2) $sin(pi/6) + sin((2 pi)/6) + dots + sin((n pi)/6) + dots$；

    (3) $sum_(n=1)^oo ln(1 + 1/n)$。
  ],
  a: [(1) 收敛；(2) 发散；(3) 发散。],
)

#question(
  [
    10. 判定下列级数的敛散性：
    (1) $-8/9 + (8/9)^2 - (8/9)^3 + dots + (-1)^n (8/9)^n + dots$；

    (2) $1/3 + 1/6 + 1/9 + dots + 1/(3n) + dots$；

    (3) $1/3 + 1/(sqrt(3)) + 1/(root(3, 3)) + dots + 1/(root(n, 3)) + dots$。
  ],
  a: [(1) 收敛；(2) 发散；(3) 发散。],
)

== 第二节 常数项级数的审敛法（1）

#prob-type("一、选择题")

#question(
  [
    1. 已知 $sum_(n=1)^oo u_n$ 为正项级数，下列命题中错误的是（ #choice[C] ）。
    A. 若 $lim_(n arrow oo) u_(n+1) / u_n = rho < 1$，则 $sum_(n=1)^oo u_n$ 收敛 #quad B. 若 $lim_(n arrow oo) u_(n+1) / u_n = rho > 1$，则 $sum_(n=1)^oo u_n$ 发散 \
    C. 若 $u_(n+1) / u_n < 1$，则 $sum_(n=1)^oo u_n$ 收敛 #quad D. 若 $u_(n+1) / u_n > 1$，则 $sum_(n=1)^oo u_n$ 发散
  ],
  a: [C.],
)

#question(
  [
    2. 判定级数 $sum_(n=1)^oo 1 / n^(1 + 1/n)$ 的敛散性，下列说法正确的是（ #choice[D] ）。
    A. 因为 $1 + 1/n > 0$，所以此级数收敛 #quad B. 因为 $lim_(n arrow oo) 1 / n^(1 + 1/n) = 0$，所以此级数收敛 \
    C. 因为 $1 / n^(1 + 1/n) > 1/n$，所以此级数发散 #quad D. 以上说法均不对
  ],
  a: [D.],
)

#prob-type("二、填空题")

#question(
  [
    3. 级数 $sum_(n=1)^oo sqrt(2n+1) / n^alpha$ 收敛的充要条件是 $alpha$ 满足条件 #ans[$alpha > 3/2$]。
  ],
  a: [$alpha > 3/2$],
)

#question(
  [
    4. 当 $p$ 满足条件 #ans[$p > 1$] 时，级数 $sum_(n=1)^oo 1/n^p$ 收敛。
  ],
  a: [$p > 1$],
)

#question(
  [
    5. 若 $sum_(n=1)^oo u_n$ 为正项级数，且其部分和数列为 $(s_n)$，则级数 $sum_(n=1)^oo u_n$ 收敛的充要条件是
  ],
  a: [$(s_n)$ 有界。],
)

#prob-type("三、计算题")

#question(
  [
    6. 用比较审敛法或极限形式的比较审敛法判定下列级数的敛散性：
    (1) $1 + 1/3 + 1/5 + dots + 1/(2n-1) + dots$；

    (2) $1/(2 dot 5) + 1/(3 dot 6) + dots + 1 / ((n+1)(n+4)) + dots$；

    (3) $sin(pi/2) + sin(pi/2^2) + dots + sin(pi/2^n) + dots$；

    (4) $sum_(n=1)^oo 1 / (1 + a^n)$ ($a > 0$)。
  ],
  a: [(1) 发散；(2) 收敛；(3) 收敛；(4) $0 < a <= 1$ 时发散，$a > 1$ 时收敛。],
)

#question(
  [
    7. 用比值审敛法判定下列级数的敛散性：
    (1) $sum_(n=1)^oo (2^n dot n!) / n^n$；

    (2) $sum_(n=1)^oo n tan(pi / 2^(n+1))$。
  ],
  a: [(1) 收敛；(2) 收敛。],
)

#question(
  [
    8. 用根值审敛法判定下列级数的敛散性：
    (1) $sum_(n=1)^oo (n / (2n+1))^n$；

    (2) $sum_(n=1)^oo (b / a_n)^n$，其中 $lim_(n arrow oo) a_n = a$，$a_n, b, a$ 均为正数。
  ],
  a: [(1) 收敛；(2) $b < a$ 时收敛，$b > a$ 时发散，$b = a$ 时不能确定。],
)

== 第二节 常数项级数的审敛法(2)

#prob-type("一、判断题")

#question(
  [
    1. 若正项级数 $sum_(n=1)^oo u_n$ 收敛，则级数 $sum_(n=1)^oo u_n^2$ 也收敛。
  ],
  a: [√],
)

#question(
  [
    2. 若正项级数 $sum_(n=1)^oo u_n$ 发散，则 $lim_(n arrow oo) u_(n+1) / u_n = rho > 1$。
  ],
  a: [×],
)

#prob-type("二、选择题")

#question(
  [
    3. 下列级数中，条件收敛的是（ #choice[C] ）。
    A. $sum_(n=1)^oo (-1)^n n / (n+1)$ #quad B. $sum_(n=1)^oo (-1)^n sqrt(2) / n^2$ \
    C. $sum_(n=1)^oo (-1)^n 2 /(sqrt(n))$ #quad D. $sum_(n=1)^oo (-1)^n 1 / n^(4/3)$
  ],
  a: [C.],
)

#question(
  [
    4. 下列级数中，收敛的是（ #choice[D] ）。
    A. $sum_(n=1)^oo 1 / (n root(n, n))$ #quad B. $sum_(n=1)^oo (n+1) / (n(n+2))$ \
    C. $sum_(n=1)^oo 3^n / (n dot 2^n)$ #quad D. $sum_(n=2)^oo 4 / ((n-1)(n+3))$
  ],
  a: [D.],
)

#prob-type("三、填空题")

#question(
  [
    5. 级数 $sum_(n=1)^oo u_n$ 条件收敛的含义是 #ans[$sum u_n$ 收敛而 $sum |u_n|$ 发散]。
  ],
  a: [$sum_(n=1)^oo u_n$ 收敛，而 $sum_(n=1)^oo |u_n|$ 发散。],
)

#question(
  [
    6. 级数 $sum_(n=1)^oo u_n$ 绝对收敛的含义是 #ans[$sum |u_n|$ 收敛]。
  ],
  a: [$sum_(n=1)^oo u_n$ 收敛且 $sum_(n=1)^oo |u_n|$ 收敛。],
)

#prob-type("四、计算题")

#question(
  [
    7. 判定下列级数的敛散性：
    (1) $1^4/1! + 2^4/2! + dots + n^4/n! + dots$；

    (2) $sum_(n=1)^oo (n+1) / (n(n+2))$；

    (3) $sum_(n=1)^oo 2^n sin(pi / 3^n)$；

    (4) $sqrt(2) + sqrt(3/2) + dots + sqrt((n+1)/n) + dots$。
  ],
  a: [(1) 收敛；(2) 发散；(3) 收敛；(4) 发散。],
)

#question(
  [
    8. 判定下列级数的敛散性，如果收敛，是绝对收敛还是条件收敛：
    (1) $1 - 1/(sqrt(2)) + 1/(sqrt(3)) - 1/(sqrt(4)) + dots + (-1)^(n-1) /(sqrt(n)) + dots$；

    (2) $sum_(n=1)^oo (-1)^(n-1) n / 3^(n-1)$。
  ],
  a: [(1) 条件收敛；(2) 绝对收敛。],
)

== 第三节 幂级数

#prob-type("一、判断题")

#question(
  [
    1. 若幂级数 $sum_(n=1)^oo a_n (x - 1)^n$ 在点 $x = -1$ 处收敛，则在点 $x = 2$ 处必收敛。
  ],
  a: [√],
)

#question(
  [
    2. 已知幂级数 $sum_(n=1)^oo a_n x^n$ 的收敛半径为 $R$，则幂级数 $sum_(n=1)^oo a_n (1 / 2^n) x^(2n+1)$ 的收敛半径为 $sqrt(R)$。
  ],
  a: [×],
)

#question(
  [
    3. 幂级数 $sum_(n=1)^oo a_n x^n$ 和 $sum_(n=1)^oo b_n x^n$ 的收敛半径分别为 $R_a, R_b$，则幂级数 $sum_(n=1)^oo (a_n + b_n) x^n$ 的收敛半径为 $R = min(R_a, R_b)$。
  ],
  a: [×],
)

#prob-type("二、选择题")

#question(
  [
    4. 设幂级数 $sum_(n=0)^oo (a^n - b^n) / (a^n + b^n) x^n$ ($0 < a < b$)，则幂级数的收敛半径 $R$ 为（ #choice[D] ）。
    A. $b$ #quad B. $1/a$ #quad C. $1/b$ #quad D. 与 $a, b$ 无关
  ],
  a: [D.（收敛半径 $R = 1$）],
)

#question(
  [
    5. 当常数 $p > 0$ 时，幂级数 $sum_(n=1)^oo ((-1)^(n-1) / n^p) x^n$ 在其收敛区间的右端点处（ #choice[D] ）。
    A. 条件收敛 #quad B. 绝对收敛 #quad C. 发散 #quad D. $p <= 1$ 时条件收敛，$p > 1$ 时绝对收敛
  ],
  a: [D.],
)

#prob-type("三、填空题")

#question(
  [
    6. 若幂级数 $sum_(n=0)^oo c_n x^n$ 在点 $x = -4$ 处收敛，在点 $x = 6$ 处发散，则当 $x = 1$ 时，$sum_(n=0)^oo c_n x^n$ 的敛散情况是 #ans[绝对收敛]。
  ],
  a: [绝对收敛],
)

#question(
  [
    7. 若 $lim_(n arrow oo) |c_n / c_(n+1)| = 2$，则幂级数 $sum_(n=0)^oo c_n x^(2n)$ 的收敛半径为 #ans[$sqrt(2)$]。
  ],
  a: [$sqrt(2)$],
)

#question(
  [
    8. 当 $|x| < 1$ 时，幂级数 $sum_(n=1)^oo x^n / n$ 的和函数为 #ans[$-ln(1 - x)$]。
  ],
  a: [$-ln(1 - x)$],
)

#prob-type("四、计算题")

#question(
  [
    9. 求下列幂级数的收敛区间：
    (1) $1 - x + x^2/2^2 - dots + (-1)^n x^n/n^2 + dots$；

    (2) $sum_(n=1)^oo (-1)^n x^(2n+1) / (2n+1)$；

    (3) $sum_(n=1)^oo (x-5)^n /(sqrt(n))$。
  ],
  a: [(1) $[-1, 1]$；(2) $[-1, 1]$；(3) $[4, 6)$。],
)

#question(
  [
    10. 利用逐项求导或逐项积分，求下列幂级数的和函数：
    (1) $sum_(n=1)^oo n x^(n-1)$；

    (2) $sum_(n=0)^oo x^(4n+1) / (4n+1)$；

    (3) $sum_(n=1)^oo (n+2) x^(n+3)$。
  ],
  a: [(1) $S(x) = 1 / (1-x)^2$ ($|x| < 1$)；
    (2) $S(x) = 1/4 ln((1+x)/(1-x)) + 1/2 arctan x$ ($|x| < 1$)；
    (3) $S(x) = x^4 (3-2x) / (1-x)^2$ ($|x| < 1$)。],
)

== 第四节 函数展开成幂级数

#prob-type("一、选择题")

#question(
  [
    1. 函数 $f(x) = 1 / (3 - x)$ 展开成 $(x - 1)$ 的幂级数为（ #choice[C] ）。
    A. $sum_(n=0)^oo (x-1)^n / 2^n$ #quad B. $sum_(n=0)^oo (-1)^n (x - 1)^n / 2^n$ \
    C. $sum_(n=0)^oo (x - 1)^n / 2^(n+1)$ #quad D. $sum_(n=0)^oo (x - 1)^n / 2$
  ],
  a: [C.],
)

#question(
  [
    2. 函数 $f(x) = 1 / (a + b x)$ 展开成 $(x - x_0)$ ($a + b x_0 != 0, a b != 0$) 的幂级数为（ #choice[D] ）。
    A. $sum_(n=0)^oo b^n / (a + b x_0)^(n+1) (x - x_0)^n$ #quad B. $sum_(n=0)^oo (b / (a + b x_0))^n (x - x_0)^n$ \
    C. $sum_(n=0)^oo (-1)^n (b / (a + b x_0))^n (x - x_0)^n$ #quad D. $sum_(n=0)^oo (-b)^n / (a + b x_0)^(n+1) (x - x_0)^n$
  ],
  a: [D.],
)

#question(
  [
    3. 函数 $f(x) = e^(-x^2)$ 展开成 $x$ 的幂级数为（ #choice[B] ）。
    A. $sum_(n=0)^oo x^(2n) / n!$ #quad B. $sum_(n=0)^oo (-1)^n x^(2n) / n!$ \
    C. $sum_(n=0)^oo x^n / n!$ #quad D. $sum_(n=0)^oo (-1)^n x^n / n!$
  ],
  a: [B.],
)

#question(
  [
    4. $f^(n)(0)$ 存在（$n=1, 2, dots$）是函数 $f(x)$ 可展开成 $x$ 的幂级数的（ #choice[C] ）。
    A. 充要条件 #quad B. 充分条件 #quad C. 必要条件 #quad D. 无关条件
  ],
  a: [C.],
)

#prob-type("二、填空题")

#question(
  [
    5. 若函数 $f(x) = 1 / ((1 - 2x)(1 - 3x))$ 展开成 $x$ 的幂级数，其收敛半径 $R =$ #ans[$1/3$]。
  ],
  a: [1/3],
)

#question(
  [
    6. 函数 $f(x) = ln(2 + x)$ 关于 $x$ 的幂级数展开式为 #ans[$ln 2 + sum_(n=1)^oo (-1)^(n-1) / (n dot 2^n) x^n$]，其收敛域为 #ans[$(-2, 2]$]。
  ],
  a: [$ln 2 + sum_(n=1)^oo (-1)^(n-1) / (n dot 2^n) x^n, (-2, 2]$],
)

#question(
  [
    7. 设函数 $f(x) = sum_(n=0)^oo a_n x^n$，则 $g(x) = f(x) / (1 - x)$ 的麦克劳林级数展开式为 #ans[$sum_(n=0)^oo (sum_(k=0)^n a_k) x^n$]。
  ],
  a: [$sum_(n=0)^oo (sum_(k=0)^n a_k) x^n$],
)

#question(
  [
    8. 若 $1 / (3 + x) = sum_(n=0)^oo a_n (x - 1)^n$ ($|x - 1| < 4$)，则 $a_n =$ #ans[$(-1)^n / 4^(n+1)$]。
  ],
  a: [$(-1)^n / 4^(n+1)$],
)

#question(
  [
    9. 若函数 $ln(4 - 9x^2)$ 展开成 $x$ 的幂级数，其收敛半径 $R =$ #ans[$2/3$]。
  ],
  a: [2/3],
)

#prob-type("三、计算题")

#question(
  [
    10. 将函数 $f(x) = (1 + x) ln(1 + x)$ 展开成 $x$ 的幂级数，并求展开式成立的区间。
  ],
  a: [$f(x) = x + sum_(n=2)^oo (-1)^n / (n(n-1)) x^n$，$x in (-1, 1]$。],
)

#question(
  [
    11. 将函数 $f(x) = cos x$ 展开成 $(x + pi/3)$ 的幂级数。
  ],
  a: [$cos x = 1/2 sum_(n=0)^oo (-1)^n [ 1/(2n)! (x + pi/3)^(2n) + sqrt(3)/(2n+1)! (x + pi/3)^(2n+1) ]$，$x in (-oo, +oo)$。],
)

#question(
  [
    12. 将函数 $f(x) = 1 / (x^2 + 3x + 2)$ 展开成 $(x + 4)$ 的幂级数。
  ],
  a: [$1 / (x^2 + 3x + 2) = sum_(n=0)^oo ( 1 / 2^(n+1) - 1 / 3^(n+1) ) (x + 4)^n$，$x in (-6, -2)$。],
)

== 第五节 傅里叶级数

#prob-type("一、选择题")

#question(
  [
    1. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，在 $[-pi, pi)$ 上的表达式为 $f(x) = cases(0 & "if" -pi <= x < 0, x & "if" 0 <= x < pi)$。已知 $f(x)$ 的傅里叶级数，则该级数的和函数为（ #choice[D] ）。
    A. $S(x) = f(x)$，$x in (-pi, pi)$ #quad B. $S(x) = f(x)$，$x in (-oo, +oo)$ \
    C. $S(x) = cases(f(x) & "if" x != k pi, pi/2 & "if" x = k pi)$（$k$ 为整数） #quad D. $S(x) = cases(f(x) & "if" x != (2k-1) pi, pi/2 & "if" x = (2k-1) pi)$（$k$ 为整数）
  ],
  a: [D.],
)

#question(
  [
    2. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，在 $[-pi, pi)$ 上的表达式为 $f(x) = cases(x & "if" -pi <= x < 0, 0 & "if" 0 <= x < pi)$。$f(x)$ 的傅里叶级数的和函数为 $S(x)$，则 $S(pi) =$（ #choice[A] ）。
    A. $-pi/2$ #quad B. $-pi$ #quad C. 0 #quad D. 其他值
  ],
  a: [A.],
)

#question(
  [
    3. 函数 $f(x) = |sin x|$ ($-pi <= x <= pi$) 的傅里叶系数 $a_n, b_n$ 满足（ #choice[B] ）。
    A. $a_n = 0$ ($n = 0, 1, 2, dots$)，$b_n != 0$ ($n = 1, 2, dots$) #quad B. $b_n = 0$ ($n = 1, 2, dots$)，$a_(2k+1) = 0$ ($k = 0, 1, 2, dots$) \
    C. $a_n != 0$ ($n = 0, 1, 2, dots$)，$b_n = 0$ ($n = 1, 2, dots$) #quad D. 以上结论都不对
  ],
  a: [B.],
)

#question(
  [
    4. 利用函数 $f(x) = x^2$ 在区间 $[-pi, pi]$ 上的傅里叶级数展开式可得 $sum_(n=1)^oo 1 / n^2 =$（ #choice[B] ）。（注：原选项 A 为 $pi^2/3$ 是 $a_0/2$，求和应为 $pi^2/6$）
    A. $pi^2/3$ #quad B. $pi^2/6$ #quad C. $pi^2/9$ #quad D. $pi^2/12$
  ],
  a: [B.],
)

#prob-type("二、填空题")

#question(
  [
    5. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，在 $[-pi, pi)$ 上的表达式为 $f(x) = cases(1 & "if" -pi <= x < 0, x & "if" 0 <= x < pi)$。则 $f(x)$ 的傅里叶级数在点 $x = pi$ 处收敛于 #ans[$(pi+1)/2$]。
  ],
  a: [$(pi+1)/2$],
)

#question(
  [
    6. 设函数 $f(x) = pi x + x^2$ ($-pi <= x <= pi$)，且其傅里叶级数为 $a_0/2 + sum_(n=1)^oo (a_n cos n x + b_n sin n x)$，则 $b_3 =$ #ans[$2/3$]。
  ],
  a: [2/3],
)

#question(
  [
    7. 已知函数 $f(x)$ 满足狄利克雷收敛条件，其傅里叶级数的和函数为 $S(x)$，且 $f(x)$ 在点 $x = 0$ 处左连续，$f(0^-) = -1$，$S(0) = 3$，则 $lim_(x arrow 0^+) f(x) =$ #ans[$7$]。
  ],
  a: [7],
)

#question(
  [
    8. 设函数 $f(x) = 1 - x/pi$ ($0 <= x <= pi$) 的余弦级数的和函数为 $S(x)$，则 $S(-3) =$ #ans[$1 - 3/pi$]。
  ],
  a: [$1 - 3/pi$],
)

#question(
  [
    9. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，其傅里叶系数为 $a_n, b_n$。若函数 $g(x) = f(-x)$，则 $g(x)$ 的傅里叶系数 $a_n^*, b_n^*$ 与 $a_n, b_n$ 的关系为 $a_n^* = a_n$，$b_n^* = -b_n$。
  ],
  a: [$a_n^* = a_n, b_n^* = -b_n$],
)

#prob-type("三、计算题")

#question(
  [
    10. 将函数 $f(x) = pi - x/2$ ($0 <= x <= pi$) 展开成正弦级数。
  ],
  a: [$f(x) = sum_(n=1)^oo ( 2/n + (-1)^n/n ) sin n x$，$x in (0, pi)$。],
)

#question(
  [
    11. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，它在区间 $[-pi, pi)$ 上的表达式为 $f(x) = 3x^2 + 1$，试将 $f(x)$ 展开成傅里叶级数。
  ],
  a: [$f(x) = pi^2 + 1 + 12 sum_(n=1)^oo (-1)^n / n^2 cos n x$，$x in (-oo, +oo)$。],
)

#question(
  [
    12. 设 $f(x) = x e^x$，$x in [-pi, pi]$。求该函数的傅里叶级数在 $x = pi$ 处收敛于何值？
  ],
  a: [$pi sinh pi$],
)
== 第六节 一般周期函数的傅里叶级数

#prob-type("一、选择题")

#question(
  [
    1. 函数 $f(x) = cases(cos((pi x)/l) & "if" 0 <= x <= l/2, 0 & "if" l/2 < x <= l)$ 展开成余弦级数时，应对 $f(x)$ 进行（ #choice[B] ）。
    A. 周期为 $2 l$ 的延拓 #quad B. 偶延拓 #quad C. 周期为 $l$ 的延拓 #quad D. 奇延拓
  ],
  a: [B.],
)

#question(
  [
    2. 函数 $f(x) = cases(2x + 1 & "if" -3 <= x <= 0, x & "if" 0 < x <= 3)$ 展开成傅里叶级数时，应（ #choice[D] ）。
    A. 在区间 $[-3, 3)$ 外进行周期延拓，级数在区间 $(-3, 0) union (0, 3)$ 内收敛于 $f(x)$ #quad B. 进行奇延拓，级数在区间 $(-3, 0) union (0, 3)$ 内收敛于 $f(x)$ \
    C. 进行偶延拓，级数在区间 $[-3, 3]$ 上收敛于 $f(x)$ #quad D. 在区间 $[-3, 3)$ 外进行周期延拓，级数在区间 $(-3, 3)$ 上收敛于 $f(x)$，且在端点处收敛于均值。
  ],
  a: [D.],
)

#prob-type("二、填空题")

#question(
  [
    3. 将函数 $f(x) = cases(0 & "if" 0 <= x <= 1, 2x & "if" 1 < x <= 2)$ 在 $[0, 2]$ 上展开成余弦级数，其和函数在 $x=1$ 处的值为 #ans[$1$]。
  ],
  a: [1],
)

#prob-type("三、计算题")

#question(
  [
    4. 将函数 $f(x) = x$ ($0 < x < 2$) 展开成正弦级数。
  ],
  a: [$x = 4/pi sum_(n=1)^oo (-1)^(n+1) / n sin((n pi x) / 2)$，$0 < x < 2$。],
)

== 总习题十二

#prob-type("一、判断题")

#question(
  [
    1. 若级数 $sum_(n=1)^oo u_n$ 收敛，则 $lim_(n arrow oo) u_n = 0$。（ #choice[√] ）
  ],
  a: [√],
)

#question(
  [
    2. 若级数 $sum_(n=1)^oo u_n$ 收敛，$sum_(n=1)^oo v_n$ 发散，则级数 $sum_(n=1)^oo (u_n + v_n)$ 发散。（ #choice[√] ）
  ],
  a: [√],
)

#question(
  [
    3. 级数加括号后不改变其敛散性。（ #choice[×] ）
  ],
  a: [×],
)

#question(
  [
    4. 正项级数收敛的充要条件是前 $n$ 项和构成的数列 $(s_n)$ 有界。（ #choice[√] ）
  ],
  a: [√],
)

#question(
  [
    5. 若正项级数 $sum_(n=1)^oo u_n$ 收敛，则级数 $sum_(n=1)^oo sqrt(u_n u_(n+1))$ 也收敛。（ #choice[√] ）
  ],
  a: [√],
)

#question(
  [
    6. 若 $lim_(n arrow oo) u_n / v_n = l$ ($0 < l < +oo$)，则级数 $sum_(n=1)^oo u_n$ 和 $sum_(n=1)^oo v_n$ 有相同的敛散性。（ #choice[√] ）
  ],
  a: [√],
)

#prob-type("二、选择题")

#question(
  [
    7. 当级数 $sum_(n=1)^oo (a_n + b_n)$ 收敛时，级数 $sum_(n=1)^oo a_n$ 与 $sum_(n=1)^oo b_n$（ #choice[C] ）。
    A. 必同时收敛 #quad B. 必同时发散 #quad C. 可能同时发散 #quad D. 不可能同时収敛
  ],
  a: [C.],
)

#question(
  [
    8. 在正项级数中，$sum_(n=1)^oo a_n$ 收敛是级数 $sum_(n=1)^oo a_n^2$ 收敛的（ #choice[A] ）。
    A. 充分条件 #quad B. 必要条件 #quad C. 充要条件 #quad D. 无关条件
  ],
  a: [A.],
)

#question(
  [
    9. 设 $sum_(n=1)^oo a_n$ 为任意项级数，若 $|a_n| > |a_(n+1)|$ 且 $lim_(n arrow oo) a_n = 0$，则该级数（ #choice[D] ）。
    A. 条件收敛 #quad B. 绝对收敛 #quad C. 发散 #quad D. 敛散性不确定（符号未定）
  ],
  a: [D.],
)

#question(
  [
    10. 若函数 $y = sum_(n=0)^oo x^n / (n!)^2$，则 $x y'' + y' =$（ #choice[C] ）。
    A. $y$ #quad B. $2y$ #quad C. $y/4$ （注：原题系数通常为 $x y'' + y' - y = 0$ 变形，需核对） #quad D. 0
  ],
  a: [A.],
)

#question(
  [
    11. 若级数 $sum_(n=0)^oo a_n (x - 1)^n$ 在点 $x = -1$ 处收敛，则该级数在点 $x = 2$ 处（ #choice[C] ）。
    A. 发散 #quad B. 条件收敛 #quad C. 绝对收敛 #quad D. 敛散性不确定
  ],
  a: [C.],
)

#question(
  [
    12. 级数 $1/2 - 1/4 + 1/8 - dots + (-1)^(n-1) / 2^n + dots$ 的和为（ #choice[C] ）。
    A. $1/2$ #quad B. 1 #quad C. $1/3$ #quad D. $2/3$
  ],
  a: [C.],
)

#prob-type("三、填空题")

#question(
  [
    13. 幂级数 $sum_(n=0)^oo x^n / n!$ 的收敛区间为 #ans[$(-oo, +oo)$]。
  ],
  a: [$(-oo, +oo)$],
)

#question(
  [
    14. 级数 $sum_(n=0)^oo 1 / (1 + a^n)$ ($a > 0$) 当 $a$ 满足条件 #ans[$a > 1$] 时收敛。
  ],
  a: [$a > 1$],
)

#question(
  [
    15. 幂级数 $sum_(n=1)^oo ((-1)^n x^(3n-1)) / (n dot 8^n)$ 的收敛域为 #ans[$(-2, 2]$]。
  ],
  a: [$(-2, 2]$],
)

#question(
  [
    16. 级数 $sum_(n=1)^oo (u_n - 2)$ 收敛，则 $lim_(n arrow oo) u_n =$ #ans[$2$]。
  ],
  a: [2],
)

#question(
  [
    17. 幂级数 $sum_(n=0)^oo x^n / (3^n + (-2)^n + 3 dot 2^n)$ 的收敛半径 $R =$ #ans[$3$]。
  ],
  a: [3],
)

#question(
  [
    18. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，且 $f(x) = cases(0 & "if" -pi <= x < 0, x + 2 & "if" 0 <= x < pi)$。则 $f(x)$ 的傅里叶级数在点 $x = 0$ 处收敛于 #ans[$1$]。
  ],
  a: [1],
)

#prob-type("四、计算题")

#question(
  [
    19. 计算 $iint_D (x^2 + y) dif x dif y$，其中 $D$ 是由 $x^2 + y^2 <= 1$ 围成的闭区域。
  ],
  a: [提示: $iint_D (x^2 + y) dif x dif y = (1/2) iint_D (x^2 + y^2) dif x dif y + iint_D y dif x dif y$],
)

#question(
  [
    20. 求幂级数 $sum_(n=1)^oo (n^2 + 1)/n x^(2n)$ ($|x| < 1$) 在收敛区间内的和函数，并求 $sum_(n=1)^oo (n^2 + 1)/(n dot 2^n)$ 的和。
  ],
  a: [$S(x) = x^2 / (1 - x^2)^2 - ln(1 - x^2)$；和为 $2 + ln 2$。],
)

= 高等数学（下册）期末测试模拟卷（一）

#prob-type("一、选择题（每小题3分，共15分）")

#question(
  [
    1. 若函数 $f(x, y)$ 在点 $(x_0, y_0)$ 处可微，则 $f(x, y)$ 在点 $(x_0, y_0)$ 处不一定（ #choice[C] ）。
    A. 连续 #quad B. 偏导数存在 #quad C. 偏导数连续 #quad D. 曲面 $z = f(x, y)$ 的切平面存在
  ],
  a: [C.],
)

#question(
  [
    2. 设 $f(x)$ 为连续函数，$F(t) = int_1^t dif y int_y^t f(x) dif x$，则 $F'(2) =$ #ans[$int_1^2 f(x) dif x$]。
  ],
  a: [$int_1^2 f(x) dif x$],
)

#question(
  [
    3. 将 $x O y$ 面上的双曲线 $x^2/3 - 4y^2 = 1$ 绕 $y$ 轴旋转一周所得旋转曲面的方程为（ #choice[D] ）。
    A. $x^2/3 - 4y^2 - 4z^2 = 1$ #quad B. $x^2/3 - 4y^2 + 4z^2 = 1$ \
    C. $x^2/3 + y^2/3 - 4z^2 = 1$ #quad D. $x^2/3 - 4y^2 + z^2/3 = 1$
  ],
  a: [D.],
)

#question(
  [
    4. 设 $L: x^2 + y^2 = 1$，取顺时针方向，则 $oint_L (x dif y - y dif x) / (x^2 + y^2) =$ #ans[$-2 pi$]。
  ],
  a: [$-2 pi$],
)

#question(
  [
    5. 下列级数中，条件收敛的是（ #choice[B] ）。
    A. $sum_(n=1)^oo (-1)^n sqrt(n / (n+1))$ #quad B. $sum_(n=1)^oo (-1)^(n-1) /(sqrt(n(n+1)))$ \
    C. $sum_(n=1)^oo (-1)^(n-1) / (n(n+1))$ #quad D. $sum_(n=1)^oo (-1)^(n-1) / 2^n$
  ],
  a: [B.],
)

#prob-type("二、填空题（每小题3分，共15分）")

#question(
  [
    6. 已知 $|a| = 2$，$|b| = sqrt(2)$，且 $a dot b = 2$，则 $|a times b| =$ #ans[$2$]。
  ],
  a: [2],
)

#question(
  [
    7. 函数 $u = x y^2 + z^3 - x y z$ 在点 $(1, 1, 2)$ 处在方向角为 $alpha = pi/3, beta = pi/4, gamma = pi/3$ 的方向上的方向导数为 #ans[$1 + sqrt(2)$]。
  ],
  a: [$1 + sqrt(2)$],
)

#question(
  [
    8. 曲面 $x^2 + 2y^2 + z - x e^z = 4$ 在点 $(0, 1, 2)$ 处的切平面方程为 #ans[$e^2 x - 4y - z + 6 = 0$]。
  ],
  a: [$e^2 x - 4y - z + 6 = 0$],
)

#question(
  [
    9. 设曲面 $Sigma$ 为上半球面 $z = sqrt(2 - x^2 - y^2)$，则 $iint_Sigma (y + 1) dif S =$ #ans[$4 pi$]。
  ],
  a: [$4 pi$],
)

#question(
  [
    10. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，且 $f(x) = cases(1 - x & "if" -pi <= x < 0, 1 + x & "if" 0 <= x < pi)$，$S(x)$ 为 $f(x)$ 的傅里叶级数的和函数，则 $S(-3 pi) =$ #ans[$1+pi$]。
  ],
  a: [$1+pi$],
)

#prob-type("三、计算题 $(11~ 12$ 每小题6分， $13~ 17$ 每小题7分，18小题8分，19小题10分，20小题5分，共70分)")

#question(
  [
    11. 设函数 $z = f(x, y)$ 的全微分为 $dif z = (4 - 2x) dif x - (2y + 4) dif y$，试确定 $f(x, y)$ 的极值点，并判别该点是极大值点还是极小值点。
  ],
  a: [驻点为 $(2, -2)$，$A = -2, B = 0, C = -2$，$A C - B^2 = 4 > 0$，且 $A < 0$，该点为极大值点。],
)

#question(
  [
    12. 计算 $iint_D cos(x/y) dif x dif y$，其中 $D$ 为由直线 $x = 0, y = pi/2, y = pi$ 及抛物线 $x = y^2$ 所围成的平面区域。
  ],
  a: [原式 $= int_(pi/2)^pi dif y int_0^(y^2) cos(x/y) dif x = int_(pi/2)^pi y sin y dif y = [sin y - y cos y]_(pi/2)^pi = pi - 1$。],
)

#question(
  [
    13. 设函数 $z = f(x/y, y/x)$，其中 $f$ 具有一阶连续偏导数，求 $dif z$。
  ],
  a: [$dif z = (1/y f_1' - y/x^2 f_2') dif x + (-x/y^2 f_1' + 1/x f_2') dif y$],
)

#question(
  [
    14. 求曲线 $cases(x^2 + 2y^2 + z^2 = 10, x - y + z = 0)$ 在点 $(1, 2, 1)$ 处的切线方程。
  ],
  a: [$(x-1)/3 = (y-2)/0 = (z-1)/-3$],
)

#question(
  [
    15. 设函数 $f(u)$ 具有一阶连续导数，且 $f(0) = 0, f'(0) = 1$，求 $lim_(t arrow 0^+) 1/t^3 iint_(x^2 + y^2 <= t^2) f(sqrt(x^2 + y^2)) dif x dif y$。
  ],
  a: [$2 pi / 3$],
)

#question(
  [
    16. 计算 $oint_L (y^2 + x) dif s$，其中 $L$ 为圆 $x^2 + y^2 = 4$。
  ],
  a: [$8 pi$],
)

#question(
  [
    17. 将函数 $f(x) = 1 / (x^2 + 4x + 3)$ 展开成 $(x - 1)$ 的幂级数。
  ],
  a: [$sum_(n=0)^oo (1 / 2^(n+2) - 1 / 4^(n+1)) (x-1)^n$],
)

#question(
  [
    18. 设函数 $f(x)$ 在区间 $(-oo, +oo)$ 上具有连续导数，$L$ 是上半平面 ($y > 0$) 内以点 $(a, b)$ 为起点，点 $(c, d)$ 为终点的有向分段光滑曲线，记
    $I = int_L [1/y + y f(x y)] dif x + [x f(x y) - x/y^2] dif y .$

    (1) 证明：曲线积分 $I$ 与路径 $L$ 无关；

    (2) 当 $a b = c d$ 时，计算 $I$ 的值。
  ],
  a: [(2) $c/d - a/b$],
)

#question(
  [
    19. 计算 $I = iint_Sigma [f_y(x, y) + x^3] dif y dif z + [y^3 - f_x(x, y)] dif z dif x + z^3 dif x dif y$，其中 $f(x, y)$ 具有二阶连续偏导数，$Sigma$ 为锥面 $z = sqrt(x^2 + y^2)$ ($0 <= z <= 1$) 的下侧。
  ],
  a: [$-3 pi / 10$],
)

#question(
  [
    20. 设幂级数 $sum_(n=0)^oo a_n x^n$ 在 $(-oo, +oo)$ 上收敛，且 $a_0 = 0, a_1 = 1, a_2 = 0, a_(n+2) = 2/(n+1) a_n$ ($n = 0, 1, 2, dots$)，求该级数的和函数 $S(x)$。
  ],
  a: [$x e^(x^2)$],
)

#prob-type("一、选择题（每小题3分，共15分）")

#question(
  [
    1. 设有直线 $l: cases(2 x + 3 y - z = 1, x - 2 y - 3 z = 2)$ 及平面 $Pi : 11x - 5y + 7z = 2$，则直线 $l$（ #choice[D] ）。
    A. 与平面 $Pi$ 斜交 #quad B. 垂直于平面 $Pi$ #quad C. 平行于平面 $Pi$ #quad D. 在平面 $Pi$ 上
  ],
  a: [D.],
)

#question(
  [
    2. 函数 $z = 2x^3 - 4x^2 + 2x y - y^2$ 的极大值点为（ #choice[A] ）。
    A. $(0, 0)$ #quad B. $(1, 1)$ #quad C. $(4/3, 4/3)$ #quad D. 不存在
  ],
  a: [A.],
)

#question(
  [
    3. 设函数 $f(x, y) = cases(((x y)/( sqrt(x^4 + y^4))), & (x, y) != (0, 0), 0, & (x, y) = (0, 0),)$ 则在点(0,0)处（#choice[D]）.
    A. 偏导数不存在, 函数不连续 #quad B. 偏导数不存在, 函数连续 #quad C. 偏导数存在, 函数连续 #quad D. 偏导数存在, 函数不连续
  ],
  a: [D.],
)

#question(
  [
    4. 设曲面 $Sigma$ 的方程为 $x^2 + y^2 + z^2 = a^2$ ($z >= 0$)，$Sigma_1$ 为 $Sigma$ 在第一卦限的部分，则下列选项中正确的是（ #choice[A] ）。
    A. $iint_Sigma x dif S = 4 iint_(Sigma_1) x dif S$ #quad B. $iint_Sigma y dif S = 4 iint_(Sigma_1) y dif S$ \
    C. $iint_Sigma z dif S = 4 iint_(Sigma_1) x dif S$ #quad D. $iint_Sigma x y z dif S = 4 iint_(Sigma_1) x y z dif S$
  ],
  a: [A.],
)

#question(
  [
    5. 级数 $sum_(n=1)^oo (sin n alpha) / n^4$ 是（ #choice[B] ）。
    A. 条件收敛级数 #quad B. 绝对收敛级数 #quad C. 发散级数 #quad D. 敛散性不确定的级数
  ],
  a: [B.],
)

#prob-type("二、填空题（每小题3分，共24分）")

#question(
  [
    6. 已知直线 $x/2 = (y+2)/-2 = (z-1)/1$ 与 $(x-1)/4 = (y-3)/a = (z+1)/-2$ 相互垂直，则 $a =$ #ans[$3$]。
  ],
  a: [3],
)

#question(
  [
    7. 点 $M(1, 0, -1)$ 在平面 $x + 2y + z = 12$ 上的投影点的坐标为 #ans[$(3, 4, 1)$]。
  ],
  a: [$(3, 4, 1)$],
)

#question(
  [
    8. 设函数 $f$ 可微，$z = f(x + y, x y)$ 在点 $(x, y)$ 处的全微分 $dif z =$ #ans[$(f_1' + y f_2') dif x + (f_1' + x f_2') dif y$]。
  ],
  a: [$(f_1' + y f_2') dif x + (f_1' + x f_2') dif y$],
)

#question(
  [
    9. 函数 $u = x y^2 + z^3 - x^2 y z$ 在点 $M(1, 1, 1)$ 处的最大方向导数为 #ans[$sqrt(14)$]。
  ],
  a: [$sqrt(14)$],
)

#question(
  [
    10. 设 $I = iiint_Omega dif v / (1 + x^2 + y^2)$，其中空间闭区域 $Omega$ 由 $z = sqrt(x^2 + y^2)$ 与 $z = 1$ 围成，则 $I$ 在柱面坐标系下的三次积分为 #ans[$int_0^(2 pi) dif theta int_0^1 rho dif rho int_rho^1 rho / (1 + rho^2) dif z$]。
  ],
  a: [$int_0^(2 pi) dif theta int_0^1 rho dif rho int_rho^1 rho / (1 + rho^2) dif z$],
)

#question(
  [
    11. 设 $f(x)$ 为连续函数，$F(t) = int_0^t dif y int_y^t f(x) dif x$ ($t > 0$)，将 $F(t)$ 交换积分次序后有 #ans[$int_0^t dif x int_0^x f(x) dif y = int_0^t x f(x) dif x$]。
  ],
  a: [$int_0^t x f(x) dif x$],
)

#question(
  [
    12. 设 $L$ 是直线 $3x + 4y = 12$ ($0 <= x <= 4$) 的一段，则 $int_L (3x + 4y) dif s =$ #ans[$60$]。
  ],
  a: [60],
)

#question(
  [
    13. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，它在区间 $[-pi, pi)$ 上的表达式为 $f(x) = x$，则 $f(x)$ 的傅里叶级数的和函数 $S(x)$ 在点 $x = 5/2 pi$ 处的值为 #ans[$pi/2$]。
  ],
  a: [$pi/2$],
)

#prob-type("三、计算题(14～17每小题8分，18～19每小题10分，共52分)")

#question(
  [
    14. 求曲线 $cases(2 x^2 + 3 y^2 + z^2 = 9, x + y + z = 2)$ 在点 $(1, -1, 2)$ 处的法平面方程。
  ],
  a: [$x + 4y - 3z + 9 = 0$],
)

#question(
  [
    15. 设函数 $z = f(x, y)$ 是由方程 $Phi(c x - a z, c y - b z) = 0$ 所确定的隐函数，其中 $Phi$ 具有一阶连续偏导数，求 $a partial z/partial x + b partial z/partial y$ ($a, b, c$ 是常数)。
  ],
  a: [$c$],
)

#question(
  [
    16. 计算 $iint_D y e^(x y) dif sigma$，其中闭区域 $D: 1/x <= y <= 1, 1 <= x <= 2$。
  ],
  a: [$e^2 - e - 1$],
)

#question(
  [
    17. 计算 $int_L (3 sin x + 2 x y - 4 x) dif x + (x^2 - e^y) dif y$，其中 $L$ 为摆线 $x = t - sin t, y = 1 - cos t$ 上从点 $O(0, 0)$ 到点 $A(pi, 2)$ 的一段弧。
  ],
  a: [$4 - e^2 - pi$],
)

#question(
  [
    18. 求幂级数 $sum_(n=1)^oo (-1)^(n-1) (2n-1)/n x^n$ 的收敛半径、收敛域及和函数。
  ],
  a: [$R = 1$，$(-1, 1]$，$S(x) = 2x / (1+x) + ln(1+x)$],
)

#question(
  [
    19. 计算 $I = iint_Sigma x z^2 dif y dif z + (x^2 y - z^3) dif z dif x + (2 x y + y^2 z) dif x dif y$，其中 $Sigma$ 是球面 $x^2 + y^2 + z^2 = a^2$ ($a > 0$) 上半部分的上侧。
  ],
  a: [$2/5 pi a^5$],
)

#prob-type("四、应用题（9分）")

#question(
  [
    20. 将周长为 $2 p$ 的矩形绕它的一边旋转一周构成一个圆柱体，问：矩形的长、宽分别为多少时，可使得圆柱体体积最大？
  ],
  a: [长为 $2/3 p$，宽为 $1/3 p$（以宽为轴）或长为 $1/3 p$，宽为 $2/3 p$（以长为轴）],
)

#prob-type("一、选择题（每小题3分，共30分）")

#question(
  [
    1. 下列四个平面中，通过坐标原点且与 $x$ 轴平行的是（ #choice[D] ）。
    A. $2x + 2y = 0$ #quad B. $3x + 2z + 1 = 0$ #quad C. $3x + 2z = 0$ #quad D. $3y + 2z = 0$
  ],
  a: [D.],
)

#question(
  [
    2. 已知曲面 $z = 4 - x^2 - y^2$ 在点 $P$ 处的切平面平行于平面 $2x + 2y + z - 1 = 0$，则点 $P$ 的坐标为（ #choice[D] ）。
    A. $(1, -1, 2)$ #quad B. $(-1, 1, 2)$ #quad C. $(-1, -1, 2)$ #quad D. $(1, 1, 2)$
  ],
  a: [D.],
)

#question(
  [
    3. 函数 $f(x, y) = x/y$ 在点 $(1, 1)$ 处的梯度为（ #choice[D] ）。（注：原题点 (1,0) 处无意义，修正为 (1,1) 或考察 $(x,y) arrow (1,0)$ 的极限行为）
    A. $-bold(i)$ #quad B. $bold(i)$ #quad C. $-bold(j)$ #quad D. $bold(i) - bold(j)$
  ],
  a: [D.（此处假设 $bold(n) = (1, -1)$）],
)

#question(
  [
    4. 函数 $f(x, y) = cases(((x y)/( sqrt(x^2 + y^2))), & (x, y) != (0, 0), 0, & (x, y) = (0, 0))$ 在点(0,0)处（#choice[A]）.
    A. 不连续, 偏导数存在 #quad B. 连续, 偏导数存在 #quad C. 连续, 偏导数不存在 #quad D. 不连续, 偏导数不存在
  ],
  a: [A.],
)

#question(
  [
    5. 函数 $z = x^3 - 3x + y^2$ 在点 $(1, 0)$ 处（ #choice[B] ）。
    A. 取得极大值 #quad B. 取得极小值 #quad C. 不取得极值 #quad D. 不确定是否取得极值
  ],
  a: [B.],
)

#question(
  [
    6. 设函数 $z = (1 + x y)^(x + y)$ ，则 $partial z/partial y|_((2,1)) =$ #ans[$27(ln 3 + 2)$]。
    A. $27(ln 3 + 2)$ #quad B. 27 #quad C. $27 ln 3$ #quad D. $27(ln 3 + 1)$
  ],
  a: [A.],
)

#question(
  [
    7. 设曲面 $Sigma : x^2 + y^2 + z^2 = R^2 (R > 0)$ 的外法向量的方向余弦为 $cos alpha , cos beta , cos gamma$ ，则 $iint_Sigma (x cos alpha + y cos beta + z cos gamma ) dif S =$ #ans[$4 pi R^3$]。
    A. $pi R^3$ #quad B. $2 pi R^3$ #quad C. $3 pi R^3$ #quad D. $4 pi R^3$
  ],
  a: [D.],
)

#question(
  [
    8. 幂级数 $sum_(n=0)^oo (-1)^n x^(2n) / n!$ 在区间 $(-oo, +oo)$ 上的和函数是 $S(x) =$（ #choice[A] ）。
    A. $e^(-x^2)$ #quad B. $e^(x^2)$ #quad C. $-e^(-x^2)$ #quad D. $-e^(x^2)$
  ],
  a: [A.],
)

#question(
  [
    9. 设空间闭区域 $Omega = ((x, y, z) | x^2 + y^2 + z^2 <= 1)$ ，则 $iiint_Omega sqrt(x^2 + y^2 + z^2) dif v =$ #ans[$pi/2$]。
    A. $iiint_Omega dif x dif y dif z$ #quad B. $int_0^(2 pi ) dif theta int_0^( pi ) dif phi int_0^1 rho^3 sin phi dif rho$ \
    C. $int_0^(2 pi ) dif theta int_0^pi dif phi int_0^1 rho^3 sin theta dif rho$ #quad D. $int_0^(2 pi ) dif theta int_0^(2 pi ) dif phi int_0^1 rho^3 sin phi dif rho$
  ],
  a: [B.],
)

#question(
  [
    10. 当 $-1 <= alpha <= 1$ 时，级数 $sum_(n=1)^oo ((- alpha )^n)/(n^s) (s > 1)$ （#choice[B]）
    A. 条件收敛 #quad B. 绝对收敛 #quad C. 发散 #quad D.敛散性不确定
  ],
  a: [B.],
)

#prob-type("二、填空题（每小题3分，共18分）")

#question(
  [
    11. 设 $|a| = 1$ ， $|b| = sqrt(5)$ ，且 $|a + b| = |a - b|$ ，则 $|2 a - 3 b| =$ #ans[$7$]。
  ],
  a: [由 $|a+b|^2 = |a-b|^2$ 得 $|a|^2 + |b|^2 + 2 a dot b = |a|^2 + |b|^2 - 2 a dot b$，解得 $a dot b = 0$ (向量垂直)。
    则 $|2 a - 3 b|^2 = 4|a|^2 + 9|b|^2 - 12 a dot b = 4(1)^2 + 9(sqrt(5))^2 - 0 = 4 + 45 = 49$。
    故 $|2 a - 3 b| = 7$。],
)

#question(
  [
    12. 设函数 $z = f(x, y)$ 由方程 $e^z + x y z + x + cos x = 2$ 所确定，则 $dif z|_((0,1)) =$ #ans[$-dif x$]。
  ],
  a: [$-dif x$],
)

#question(
  [
    13. $int_0^2 dif x int_x^2 e^(-y^2) dif y =$ #ans[$1/2 (1 - e^-4)$]。
  ],
  a: [$1/2 (1 - e^-4)$],
)

#question(
  [
    14. 由曲线 $3x^2 + 2y^2 = 12, z = 0$ 绕 $y$ 轴旋转一周所得的旋转曲面在点 $(0, sqrt(6), 0)$ 处的一个单位法向量为 #ans[$(0, 1, 0)$]。
  ],
  a: [$(0, 1, 0)$],
)

#question(
  [
    15. 设函数 $f(x) = |x - 1/2|, b_n = 2 int_0^1 f(x) sin(n pi x) dif x$ ，其正弦级数为 $S(x) = sum_(n=1)^( oo ) b_n sin(n pi x)$ ，则 $S(-2021) =$ #ans[$0$].
  ],
  a: [$S(x)$ 是 $f(x)$ 的正弦级数，根据狄利克雷收敛定理，级数在 $x = k pi / pi = k$ (整数) 处的和为 0 (因为所有项 $sin(n pi k) = 0$)。故 $S(-2021) = 0$。],
)

#question(
  [
    16. 设 $L: |x| + |y| = 1$ ，则 $oint_L (dif s)/(|x| + |y|) =$ #ans[$4 sqrt(2)$].
  ],
  a: [在曲线 $L$ 上，$|x| + |y| = 1$ 恒成立。
    则 $oint_L (dif s)/(|x| + |y|) = oint_L 1 dif s$，即为正方形 $L$ 的周长。
    正方形顶点为 $(1,0), (0,1), (-1,0), (0,-1)$，边长为 $sqrt(1^2 + 1^2) = sqrt(2)$。
    故周长为 $4 sqrt(2)$。],
)

#prob-type("三、计算题（ $17~ 21$ 每小题7分，22小题9分，共44分）")

#question(
  [
    17. 求过直线 $L_1$: $(x-1)/1 = (y-2)/2 = (z-3)/3$ 且平行于直线 $L_2$: $x = t+1, y = -2, z = t-3$ 的平面方程。
  ],
  a: [$x - 2y + z = 0$],
)
#question(
  [
    18. 设函数 $z = f(2x - y, y sin x)$，其中 $f$ 具有二阶连续偏导数，求 $partial^2 z / (partial x partial y)$。
  ],
  a: [$-2 f_(11)'' + 2y sin x f_(12)'' + sin x f_2' - y sin x f_(21)'' + y^2 sin^2 x f_(22)''$（注：需按链式法则展开）],
)
#question(
  [
    19. 计算 $iint_D (x^2 + y) dif x dif y$，其中闭区域 $D: x^2 + y^2 <= 1$。
  ],
  a: [$pi/4$],
)
#question(
  [
    20. 计算 $int_L (x e^y - 2y) dif y + (e^y + x - y) dif x$，其中 $L$ 为圆 $x^2 + y^2 = a x$ ($a > 0$) 的上半部分，取逆时针方向。
  ],
  a: [$a^2 - pi a^2/8$],
)

#question(
  [
    21. 计算 $iint_Sigma x dif y dif z - y dif z dif x + (z^2 + x) dif x dif y$，其中 $Sigma$ 为半球面 $z = sqrt(4 - x^2 - y^2)$ 的下侧。
  ],
  a: [提示: 作辅助曲面 $Sigma_1: z = 0 (x^2 + y^2 <= 4)$ , 取上侧, $Omega$ 为 $Sigma$ 与 $Sigma_1$ 所围成的空间闭区域. 由高斯公式, 得
    原式 $= ( iint_( Sigma + Sigma_1) - iint_( Sigma_1))[x dif y dif z - y dif z dif x + (z^2 + x) dif x dif y]$
    $= - iiint_Omega (1 - 1 + 2 z) dif v - iint_(x^2 + y^2 <= 4) x dif x dif y = - 2 int_0^2 z dot pi (4 - z^2) dif z - 0 = - 8 pi .$],
)

#question(
  [
    22. 设幂级数 $sum_(n=1)^oo (x-3)^n / (n dot 3^n)$, 求该幂级数的：（1）收敛半径；（2）收敛域；（3）和函数.
  ],
  a: [(1) 系数 $a_n = 1/(n dot 3^n)$。
    $R = lim_(n arrow oo) |a_n / a_(n+1)| = lim_(n arrow oo) ((n+1) dot 3^(n+1)) / (n dot 3^n) = 3$。
    (2) 收敛区间为 $|x-3| < 3$，即 $0 < x < 6$。
    当 $x = 0$ 时, 原级数为 $sum_(n=1)^( oo ) (-1)^n/n$ 收敛;
    当 $x = 6$ 时, 原级数为 $sum_(n=1)^( oo ) 1/n$ 发散.
    从而原级数的收敛域为 $[0,6)$ .
    (3) 记和函数为 $S(x)$，令 $t = (x-3)/3, t in [-1, 1)$。
    $S(t) = sum_(n=1)^oo t^n/n$。
    $S'(t) = sum_(n=1)^oo t^(n-1) = 1 / (1-t)$。
    由 $S(0) = 0$，对 $S'(t)$ 积分得 $S(t) = -ln(1-t)$。
    故 $S(x) = -ln(1 - (x-3)/3) = ln(3/(6-x))$，$x in [0, 6)$。],
)

#prob-type("四、选答题(8分)(考生可从下面2个题中任选1个作答，多做不多得分)")

#question(
  [
    23. 在椭球面 $2 x^2 + 2 y^2 + z^2 = 1$ 上求一点，使得函数 $u = x^2 + y^2 + z^2$ 在该点处沿方向 $l = (1, -1, 0)$ 的方向导数最大。
  ],
  a: [提示：由题意可知目标函数为
    $pd u / pd l = grad u(x, y, z) dot e_l = (2 x, 2 y, 2 z) dot (1/(sqrt(2)), -1/(sqrt(2)), 0) = sqrt(2) (x - y) .$
    作拉格朗日函数
    $F(x, y, z, lambda) = x - y + lambda (2 x^2 + 2 y^2 + z^2 - 1),$
    解方程组
    $cases(F_x' = 1 + 4 lambda x = 0, F_y' = -1 + 4 lambda y = 0, F_z' = 2 lambda z = 0, F_lambda' = 2x^2 + 2y^2 + z^2 - 1 = 0)$
    得两个可能极值点 $M_1(1/2, -1/2, 0), M_2(-1/2, 1/2, 0)$ . 在点 $M_1$ 处， $partial u / partial l = sqrt(2)$；在点 $M_2$ 处， $partial u / partial l = -sqrt(2)$，所以在点 $(1/2, -1/2, 0)$ 处方向导数最大。],
)

#question(
  [
    24. 设有一凤凰山, 取其底面所在平面为 $x O y$ 面, 底部所占的区域为 $D = {(x,y) | x^2 + y^2 - x y <= 75}$ , 凤凰山的高度函数为 $h(x,y) = 75 - x^2 - y^2 + x y$ . 现欲利用此山进行攀岩活动, 为此寻找山脚坡度最大的点作为攀爬点, 试确定攀爬起点的位置.
  ],
  a: [提示：因为 $grad h(x, y) = (y - 2 x, x - 2 y)$ ，所以在点 $(x, y)$ 处的最大方向导数为
    $norm(grad h(x, y)) = sqrt(5 x^2 + 5 y^2 - 8 x y).$
    令函数 $f = 5 x^2 + 5 y^2 - 8 x y$ ，求 $f$ 在约束条件 $x^2 + y^2 - x y = 75$ 下的极值.
    作拉格朗日函数
    $L = 5 x^2 + 5 y^2 - 8 x y + lambda (75 - x^2 - y^2 + x y),$
    解方程组
    $cases(L_x' = 10x - 8y + lambda (y - 2x) = 0, L_y' = 10y - 8x + lambda (x - 2y) = 0, L_lambda' = 75 - x^2 - y^2 + x y = 0)$
    得可能极值点 $M_1(5 sqrt(3), 5 sqrt(3)), M_2(-5 sqrt(3), -5 sqrt(3)), M_3(5, -5), M_4(-5, 5)$ . 由于
    $f(M_1) = f(M_2) = 150, quad f(M_3) = f(M_4) = 450,$
    因此在山脚的点 $M_3$ 或点 $M_4$ 可作为攀爬的起点.
  ],
)

#prob-type("一、选择题（每小题4分，共20分）")

#question(
  [
    1. 级数 $sum_(n=1)^oo (-1)^(n-1) / (n + (-1)^(n-1))$ 是（ #choice[B] ）。
    A. 绝对收敛 #quad B. 条件收敛 #quad C. 发散 #quad D. 敛散性不确定
  ],
  a: [B.],
)

#question(
  [
    2. 直线 $cases(x + 3y + 2z + 1 = 0, 4x - 2y + z - 2 = 0)$ 的位置关系是（ #choice[C] ）。
    A. 直线在平面内 #quad B. 平行但不在平面内 #quad C. 垂直 #quad D. 相交但不垂直
  ],
  a: [C.],
)

#question(
  [
    3. 设 $L: 4 x^2 + y^2 = 1$，取正向，则 $oint_L (-y dif x + x dif y) / (4x^2 + y^2) =$ （ #choice[D] ）。
    A. $-2 pi$ #quad B. $2 pi$ #quad C. 0 #quad D. $pi$
  ],
  a: [D.],
)

#question(
  [
    4. 设函数 $f(x, y) = x y / (x^2 + y^2)$，则 $lim_((x, y) arrow (0, 0)) f(x, y)$（ #choice[A] ）。
    A. 不存在 #quad B. 0 #quad C. 1 #quad D. 无穷大
  ],
  a: [A.],
)

#question(
  [
    5. $int_0^2 dif x int_0^x f(x,y) dif y + int_2^(sqrt(8)) dif x int_0^(sqrt(8 - x^2))f(x,y) dif y$ 交换积分次序后为( ).
    A. $int_0^2 dif y int_(sqrt(8 - y^2))^2 f(x,y) dif x$ #quad B. $int_0^2 dif y int_0^(sqrt(8 - y^2))f(x,y) dif x$ \
    C. $int_0^2 dif y int_(y^2)^2 f(x,y) dif x$ #quad D. $int_0^2 dif y int_y^(sqrt(8 - y^2))f(x,y) dif x$
  ],
  a: [D.],
)

#prob-type("二、填空题（每小题4分，共20分）")

#question(
  [
    6. 已知 $|bold(a)| = 4$ ，向量 $bold(a)$ 与轴 $u$ 的夹角是 $pi / 3$ ，则 $op("Prj")_u bold(a) =$ #ans[$2$] .
  ],
  a: [2.],
)

#question(
  [
    7. 曲面 $x^3 + y^3 + z^3 + x y z - 6 = 0$ 在点(1,2，-1)处的切平面方程是
  ],
  a: [x + 1 1 y + 5 z = 1],
)

#question(
  [
    8. 平面曲线 $x = (1/4) y^2 - (1/2) ln y (1 <= y <= e)$ 的弧长为
  ],
  a: [1 / 4 (e ^2 + 1).  ],
)

#question(
  [
    9. 函数 $u = ln (x + sqrt(y^2 + z^2))$ 在点 $A(1,0,1)$ 处从点 $A$ 到点 $B(3,-2,2)$ 的方向导数为
  ],
  a: [1 / 2.   1],
)

#question(
  [
    10. 设函数 $f(x) = cases(x, & 0 < x <= 1, 1 - x, & 1 < x <= 2,) S(x) = (a_0/2) + sum_(n=1)^( oo ) a_n cos (n pi x/2)$ 是其傅里叶级数，则 $S(7) =$  #ans[$B.$] .
  ],
  a: [B.],
)

#prob-type("三、计算题（ $11~ 15$ 每小题7分， $16~ 17$ 每小题9分，18小题7分，共60分）")

#question(
  [
    11. 计算 $iint_D e^(-x^2 - y^2) dif x dif y$ ，其中 $D$ 是由中心在坐标原点，半径为 $R$ 的圆所围成的闭区域。
  ],
  a: [提示：利用极坐标，有
    $iint_D e^(-x^2 - y^2) dif x dif y = int_0^(2 pi) dif theta int_0^R rho e^(-rho^2) dif rho = pi (1 - e^(-R^2)).$],
)

#question(
  [
    12. 求过点 $M(2, 1, 3)$ 且与直线 $(x + 1/3) = (y - 1/2) = (z/-1)$ 垂直的直线方程
  ],
  a: [提示：（方法一）过点 $M(2, 1, 3)$ 且与直线 $l: (x + 1/3) = (y - 1/2) = (z/-1)$ 垂直的平面 $Pi$ 的方程为 $3 (x - 2) + 2 (y - 1) - (z - 3) = 0,$ 令 $(x + 1/3) = (y - 1/2) = (z/-1) = t$ ，即 $x = 3 t - 1, y = 2 t + 1, z = -t$ ，代入上式得 $3 (3 t - 1) + 2 (2 t + 1) - (- t) = 5,$ 即 $t = (3/7)$
    则直线 $l$ 与平面 $Pi$ 的交点为 $(2/7, (13/7), - (3/7))$ ．于是，所求直线过点 $M(2,1,3)$ 及点 $(2/7, (13/7), - (3/7))$ ，则直线方程为 $(x - 2)/(2) = (y - 1)/(- 1) = (z - 3)/(4).$ （方法二）将已知直线方程化为一般方程 $cases(2 x - 3 y + 5 = 0, x + 3 z + 1 = 0,)$ 并写出该直线的平面束方程为 $(2 x - 3 y + 5) + lambda (x + 3 z + 1) = 0,$ 即 $(2 + lambda) x - 3 y + 3 lambda z + 5 + lambda = 0.$ 将点(2,1,3)代入上述方程，解得 $lambda = -(1/2)$ ，则过点 $M$ 与已知直线的平面方程为 $3 x - 6 y + 3 z + 9 = 0, text{"即"} x - 2 y + z + 3 = 0.$ 过点 $M$ 且垂直于已知直线的平面方程为 $3 x + 2 y - z - 5 = 0,$ 因此所求直线即为所得两平面的交线, 直线方程为 $cases(x - 2 y + z + 3 = 0, 3 x + 2 y - z - 5 = 0.)$ ],
)

#question(
  [
    13. 设函数 $z = f(x y, x/y) + g(x^2 - y^2)$ ，其中 $f$ 具有二阶连续偏导数， $g$ 具有二阶连续导数，求 $partial^2 z / (partial x partial y)$ .
  ],
  a: [提示：利用全微分，有
    $dif z = d f(x y, x/y) + d g(x^2 - y^2) = f_1' d(x y) + f_2' d(x/y) + g' d(x^2 - y^2)$
    $= f_1' (y dif x + x dif y) + f_2' (y dif x - x dif y)/y^2 + g' (2 x dif x - 2 y dif y)$
    $= (y f_1' + f_2'/y + 2 x g') dif x + (x f_1' - (x f_2')/y^2 - 2 y g') dif y,$
    从而 $partial z / partial x = y f_1' + f_2'/y + 2 x g',$
    $partial^2 z / (partial x partial y) = partial / partial y (partial z / partial x) = partial / partial y (y f_1' + f_2'/y + 2 x g')$
    $= f_1' - f_2' / y^2 + x y f_11'' - x/y^3 f_22'' - 4 x y g'' .$ ],
)

#question(
  [
    14. 求函数 $f(x, y) = e^(2 x)(x + y^2 + 2 y)$ 的极值
  ],
  a: [提示：解方程组
    cases(f_x' = e^(2x)(2x + 2y^2 + 4y + 1) = 0, f_y' = e^(2x)(2y + 2) = 0)
    得驻点 $(1/2, - 1)$ .因为 $f_x x'' (1/2, -1) = 2 e = A > 0, quad f_x y'' (1/2, -1) = 0 = B, quad f_y y'' (1/2, -1) = 2 e = C,$ 且 $"A C" - B^2 > 0$ ，所以该驻点为极小值点，其值为 $-(e / 2)$],
)

#question(
  [
    15. 已知幂级数 $sum_(n=0)^( oo )(n+1)(n+2)(x-1)^(n)$ , 求其收敛域及和函数.
  ],
  a: [提示: $lim_(n arrow oo )|((a_(n + 1))/(a_n))| = lim_(n arrow oo )(((n + 1 + 1)(n + 1 + 2))/((n + 1)(n + 2))) = 1$
    当 $|x - 1| < 1$ ，即 $0 < x < 2$ 时，幂级数收敛；当 $x = 0$ ，级数为 $sum_(n=0)^( oo ) (-1)^n (n+1)(n+2)$ 发散；当 $x = 2$ ，级数为 $sum_(n=0)^( oo ) (n+1)(n+2)$ 发散，因此幂级数的收敛域为 $(0,2)$ .
    令 $x - 1 = t$ ，记 $S(t) = sum_(n=0)^( oo )(n + 1)(n + 2)t^(n)$ . 由于 $sum_n = 0^oo t^n + 2 = (t^2)/(1 - t), quad | t | < 1,$ 对上式两端同时逐项求导两次，得 $sum_n = 0^oo (n + 1) (n + 2) t^n = (2)/((1 - t)^3).$ 因此，和函数为 $S(x) = (2)/((1 - (x - 1))^3) = (2)/((2 - x)^3).$ ],
)

#question(
  [
    16. 计算 $iint_( Sigma ) x^3 dif y dif z + [(1/z) f(y/z) + y^3] dif z dif x + [(1/y) f(y/z) + z^3] dif x dif y$ ，其中 $f$ 具有一阶连续导数， $Sigma$ 为锥面 $x = sqrt(y^2 + z^2)$ 和球面 $x^2 + y^2 + z^2 = 1$ 所围立体表面的外侧。
  ],
  a: [提示：显然 $P = x^3, Q = (1/z) f(y/z) + y^3, R = (1/y) f(y/z) + z^3$ ，设锥面 $x = sqrt(y^2 + z^2)$ 和球面 $x^2 + y^2 + z^2 = 1$ 所围空间闭区域为 $Omega$ ，则
    $(partial P)/(partial x) = 3 x^2, quad (partial Q)/(partial y) = 3 y^2 + (f')/(z^2), quad (partial R)/(partial z) = 3 z^2 - (f')/(z^2).$
    由高斯公式，得
    原式 $= iiint_Omega ( (partial P/partial x) + (partial Q/partial y) + (partial R/partial z) ) dif v = 3 iiint_Omega (x^2 + y^2 + z^2) dif v$
    $= 3 int_0^(2 pi) dif theta int_0^(pi/4) sin phi dif phi int_0^1 r^4 dif r = 3/5 (2 - sqrt(2)) pi .$],
)

#question(
  [
    17. 计算 $int_L (2 x y^3 - y^2 cos x) dif x + (1 - 2 y sin x + 3 x^2 y^2) dif y$ ，其中 $L$ 为抛物线 $2 x = pi y^2$ 上从点 $(0,0)$ 到点 $(pi /2, 1)$ 的一段弧。
  ],
  a: [提示：记 $P = 2 x y^3 - y^2 cos x, Q = 1 - 2 y sin x + 3 x^2 y^2$ ，有
    $(partial P)/(partial y) = 6 x y^2 - 2 y cos x = (partial Q)/(partial x),$
    从而曲线积分与路径无关. 设点 $O(0,0), A(pi/2, 1), B(pi/2, 0)$ ，建立新路径为从点 $O$ 到点 $B$ 再到点 $A$ 的折线段，于是
    原式 $= int_"O B" P dif x + Q dif y + int_"B A" P dif x + Q dif y$
    $= 0 + int_0^1 (1 - 2 y + pi^2/4 y^2) dif y = pi^2/4 .$],
)

#question(
  [
    18. 设函数 $f(x, y) = |x - y|g(x, y)$ ，其中函数 $g(x, y)$ 在点(0,0)的某邻域内连续，试问： $g(0,0)$ 为何值时， $f(x, y)$ 在点(0,0)处的两个偏导数均存在？ $g(0,0)$ 为何值时， $f(x, y)$ 在点(0,0)处可微分？
  ],
  a: [提示：因为函数 $g(x, y)$ 在点 $(0, 0)$ 的某邻域内连续，所以 $lim_((x, y) arrow (0, 0)) g(x, y) = g(0, 0)$ . 而
    $f_x' (0, 0) = lim_Delta x arrow 0 (f (Delta x , 0) - f (0 , 0))/(Delta x) = lim_Delta x arrow 0 (| Delta x |)/(Delta x) g (Delta x, 0),$
    同理，当 $g(0,0) = 0$ 时，
    $f_x' (0, 0) = 0, quad f_y' (0, 0) = 0.$
    利用可微分的定义，记 $rho = sqrt(( Delta x)^2 + ( Delta y)^2)$ ，则
    $lim_(rho arrow 0) (Delta f - dif f)/rho = lim_(rho arrow 0) ([f(Delta x, Delta y) - f(0, 0)] - [f_x'(0, 0) Delta x + f_y'(0, 0) Delta y])/rho = lim_(rho arrow 0) (f(Delta x, Delta y))/rho = lim_(rho arrow 0) (|Delta x - Delta y|)/rho g(Delta x, Delta y).$
    由于 $0 <= (| Delta x - Delta y|/rho ) <= 2$ 为有界量，而当 $g(0,0) = 0$ 时，
    $lim_(rho arrow 0) (Delta f - dif f)/rho = lim_(rho arrow 0) (|Delta x - Delta y|)/rho g(Delta x, Delta y) = 0,$
    因此函数 $f(x,y)$ 在点 $(0,0)$ 处可微分
  ],
)
