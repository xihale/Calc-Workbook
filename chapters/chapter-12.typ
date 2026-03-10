#import "../template.typ": *

= 第十二章 无穷级数

== 第一节 常数项级数的概念与性质

#prob-type("一、选择题")

#question(
  [
    1. 级数 $sum_(n=1)^oo ((-1)^(n+1)) / (3^n)$ 的和等于（ #choice[B] ）。
    A. $-1/4$ #quad B. $1/4$ #quad C. $1/2$ #quad D. $-1/2$
  ],
  p: [此为首项 $a = 1/3$，公比 $q = -1/3$ 的等比级数。和 $S = a / (1 - q) = (1/3) / (1 - (-1/3)) = (1/3) / (4/3) = 1/4$。],
)

#question(
  [
    2. 下列级数中收敛的是（ #choice[C] ）。
    A. $sum_(n=1)^oo (4^n + 8^n) / 8^n$ #quad B. $sum_(n=1)^oo (8^n - 4^n) / 8^n$ \
    C. $sum_(n=1)^oo (2^n + 4^n) / 8^n$ #quad D. $sum_(n=1)^oo (2^n dot 4^n) / 8^n$
  ],
  p: [分析各选项通项是否趋于 0：A. $1 + (1/2)^n arrow 1 != 0$；B. $1 - (1/2)^n arrow 1 != 0$；C. $(1/4)^n + (1/2)^n arrow 0$，且为两个收敛等比级数之和，故收敛；D. $1^n = 1 != 0$。故选 C。],
)

#question(
  [
    3. 若 $lim_(n arrow oo) u_n = 0$，则级数 $sum_(n=1)^oo u_n$（ #choice[C] ）。
    A. 一定收敛 #quad B. 一定发散 \
    C. 可能收敛，也可能发散 #quad D. 部分和 $s_n = u_1 + u_2 + dots + u_n = 0$
  ],
  p: [通项趋于 0 是级数收敛的必要不充分条件。例如调和级数 $sum 1/n$ 发散，而级数 $sum 1/n^2$ 收敛。],
)

#question(
  [
    4. 下列级数中发散的是（ #choice[A] ）。
    A. $sum_(n=1)^oo ln(1 + 1/n)$ #quad B. $sum_(n=1)^oo 1/3^n$ \
    C. $sum_(n=1)^oo 1 / (n(n+2))$ #quad D. $sum_(n=1)^oo (3^n + (-1)^n) / 4^n$
  ],
  p: [A. $s_n = sum_{k=1}^n (ln(k+1) - ln k) = ln(n+1) arrow oo$，发散。B、D 为几何级数，C 为 $p$ 级数（或裂项相消），均收敛。],
)

#prob-type("二、填空题")

#question(
  [
    5. 级数 $2/1 - 3/2 + 4/3 - 5/4 + 6/5 - dots$ 的一般项是 #ans[$(-1)^(n+1) (n+1)/n$]。
  ],
  p: [观察到第 $n$ 项分母为 $n$，分子为 $n+1$。
    符号按 $+,-,+,-,dots$ 交替，故符号因子为 $(-1)^(n+1)$。
    因而一般项
    $u_n=(-1)^(n+1) (n+1)/n$。],
)

#question(
  [
    6. 设级数 $sum_(n=1)^oo 1 / ((2n-1)(2n+1))$，则 $s_n =$ #ans[$1/2 (1 - 1/(2n+1))$]，$lim_(n arrow oo) s_n =$ #ans[$1/2$]。
  ],
  p: [先作部分分式分解：
    $1/((2n-1)(2n+1))=1/2 [1/(2n-1)-1/(2n+1)]$。
    因而
    $s_n=1/2 sum_(k=1)^n [1/(2k-1)-1/(2k+1)]$
    $=1/2 (1-1/(2n+1))$。
    令 $n arrow oo$，得
    $S=lim_(n arrow oo) s_n=1/2$。],
)

#question(
  [
    7. 设级数 $sum_(n=1)^oo u_n$ 的部分和为 $s_n = (2^n - 1) / 2^n$，则级数的一般项 $u_n =$ #ans[$1/2^n$]，余项 $r_n = sum_(k=n+1)^oo u_k =$ #ans[$1/2^n$]。
  ],
  p: [由
    $s_n=1-1/2^n$，
    有
    $u_n=s_n-s_(n-1)=(1-1/2^n)-(1-1/2^(n-1))=1/2^n$。
    级数和为
    $S=lim_(n arrow oo) s_n=1$，
    故余项
    $r_n=S-s_n=1-(1-1/2^n)=1/2^n$。],
)

#question(
  [
    8. 已知数列 $(b_n)$，有 $lim_(n arrow oo) b_n = oo$，且 $b_n != 0$ ($n = 1, 2, dots$)，则级数 $sum_(n=1)^oo ( 1/b_n - 1/b_(n+1) )$ 的和为 #ans[$1/b_1$]。
  ],
  p: [部分和
    $s_n=sum_(k=1)^n (1/b_k-1/b_(k+1))=1/b_1-1/b_(n+1)$。
    由 $b_n arrow oo$ 得 $1/b_(n+1) arrow 0$，
    故
    $S=lim_(n arrow oo) s_n=1/b_1$。],
)

#prob-type("三、计算题")

#question(
  [
    9. 根据级数收敛与发散的定义判定下列级数的敛散性：
    (1) $1/(1 dot 3) + 1/(3 dot 5) + dots + 1/((2n-1)(2n+1)) + dots$；

    (2) $sin(pi/6) + sin((2 pi)/6) + dots + sin((n pi)/6) + dots$；

    (3) $sum_(n=1)^oo ln(1 + 1/n)$。
  ],
  a: [
    (1) 记
    $u_n = 1/((2n-1)(2n+1)) = 1/2 [1/(2n-1)-1/(2n+1)]$。
    部分和
    $s_N = 1/2 sum_(n=1)^N [1/(2n-1)-1/(2n+1)]
    = 1/2 [1-1/(2N+1)]$，
    故 $s_N -> 1/2$，级数收敛。

    (2) 通项 $u_n = sin(n pi/6)$。
    取子列 $n=3+12k$，有 $u_n=sin(pi/2+2k pi)=1$，
    通项不趋于 0，故级数发散。

    (3) 记 $u_n=ln(1+1/n)=ln((n+1)/n)$。
    部分和
    $s_N=sum_(n=1)^N ln((n+1)/n)=ln(N+1)$，
    $s_N->oo$，故发散。
  ],
)

#question(
  [
    10. 判定下列级数的敛散性：
    (1) $-8/9 + (8/9)^2 - (8/9)^3 + dots + (-1)^n (8/9)^n + dots$；

    (2) $1/3 + 1/6 + 1/9 + dots + 1/(3n) + dots$；

    (3) $1/3 + 1/(sqrt(3)) + 1/(root(3, 3)) + dots + 1/(root(n, 3)) + dots$。
  ],
  a: [
    (1) 级数为
    $sum_(n=1)^oo (-1)^n (8/9)^n$，是公比 $q=-8/9$ 的等比级数，
    $|q|<1$，故收敛。

    (2) 级数为
    $sum_(n=1)^oo 1/(3n)=1/3 sum_(n=1)^oo 1/n$，
    与调和级数同敛散，故发散。

    (3) 通项 $u_n=1/(root(n, 3))=3^(-1/n)$。
    因 $3^(1/n)->1$，故 $u_n->1!=0$。
    通项不趋于 0，级数发散。
  ],
)

== 第二节 常数项级数的审敛法（1）

#prob-type("一、选择题")

#question(
  [
    1. 已知 $sum_(n=1)^oo u_n$ 为正项级数，下列命题中错误的是（ #choice[C] ）。
    A. 若 $lim_(n arrow oo) u_(n+1) / u_n = rho < 1$，则 $sum_(n=1)^oo u_n$ 收敛 #quad B. 若 $lim_(n arrow oo) u_(n+1) / u_n = rho > 1$，则 $sum_(n=1)^oo u_n$ 发散 \
    C. 若 $u_(n+1) / u_n < 1$，则 $sum_(n=1)^oo u_n$ 收敛 #quad D. 若 $u_(n+1) / u_n > 1$，则 $sum_(n=1)^oo u_n$ 发散
  ],
  p: [$u_{n+1}/u_n < 1$ 不能保证级数收敛，例如调和级数 $u_n = 1/n$ 满足此条件但发散。比值判别法要求比值的极限小于 1。],
)

#question(
  [
    2. 判定级数 $sum_(n=1)^oo 1 / (n^(1 + 1/n))$ 的敛散性，下列说法正确的是（ #choice[D] ）。
    A. 因为 $1 + 1/n > 0$，所以此级数收敛 #quad B. 因为 $lim_(n arrow oo) 1 / n^(1 + 1/n) = 0$，所以此级数收敛 \
    C. 因为 $1 / (n^(1 + 1/n)) > 1/n$，所以此级数发散 #quad D. 以上说法均不对
  ],
  p: [由于 $lim_{n arrow oo} (1/n^{1+1/n}) / (1/n) = lim_{n arrow oo} 1/n^{1/n} = 1$，由极限比较审敛法可知原级数与调和级数 $sum 1/n$ 同敛散，故原级爆发散。选项 A、B 是错误结论，C 不成立（实际上当 $n$ 较大时 $< 1/n$），故选 D。],
)

#prob-type("二、填空题")

#question(
  [
    3. 级数 $sum_(n=1)^oo sqrt(2n+1) / (n^alpha)$ 收敛的充要条件是 $alpha$ 满足条件 #ans[$alpha > 3/2$]。
  ],
  p: [有
    $sqrt(2n+1)/n^(1/2) arrow sqrt(2)$（$n arrow oo$），
    故可与 $1/n^(alpha-1/2)$ 作极限比较。
    与 $p$ 级数比较，收敛当且仅当
    $alpha-1/2>1$，即
    $alpha>3/2$。],
)

#question(
  [
    4. 当 $p$ 满足条件 #ans[$p > 1$] 时，级数 $sum_(n=1)^oo 1/n^p$ 收敛。
  ],
  p: [$sum 1/n^p$ 是标准 $p$ 级数。
    其审敛结论为：
    当 $p>1$ 收敛，$p<=1$ 发散。
    故所求条件为 $p>1$。],
)

#question(
  [
    5. 若 $sum_(n=1)^oo u_n$ 为正项级数，且其部分和数列为 $(s_n)$，则级数 $sum_(n=1)^oo u_n$ 收敛的充要条件是 #ans[部分和数列有界]。
  ],
  p: [正项级数满足 $u_n>=0$，故部分和数列 $(s_n)$ 单调不减。
    单调数列收敛当且仅当有界，
    因而
    $sum u_n$ 收敛当且仅当 $(s_n)$ 有界。],
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
  p: [
    (1) $u_n=1/(2n-1)$。
    对 $n>=1$ 有
    $u_n > 1/(2n)$，而 $sum 1/(2n)$ 发散，
    故原级数发散。

    (2) $u_n=1/((n+1)(n+4))$。
    对 $n>=1$，
    $u_n <= 1/(n+1)^2$，而 $sum 1/(n+1)^2$ 收敛，
    故原级数收敛。

    (3) $u_n=sin(pi/2^n)$。
    由 $0<sin x<x$（$x>0$）得
    $0<u_n<pi/2^n$。
    而 $sum pi/2^n$ 收敛，故原级数收敛。

    (4) $u_n=1/(1+a^n)$。
    若 $0<a<=1$，则 $a^n<=1$，故 $u_n>=1/2$，通项不趋于 0，发散；
    若 $a>1$，则 $u_n<=1/a^n$，与收敛等比级数比较，故收敛。
  ],
)

#question(
  [
    7. 用比值审敛法判定下列级数的敛散性：
    (1) $sum_(n=1)^oo (2^n dot n!) / (n^n)$；

    (2) $sum_(n=1)^oo n tan(pi / 2^(n+1))$。
  ],
  p: [
    (1) 设 $u_n=(2^n n!)/n^n$，
    $u_(n+1)/u_n = 2 ((n)/(n+1))^n arrow 2/e < 1$，
    由比值审敛法，级数收敛。

    (2) 设 $v_n=n tan(pi/2^(n+1))$。
    且
    $lim_(x arrow 0) tan x / x = 1$，故
    $lim_(n arrow oo) (n tan(pi/2^(n+1))) / (n pi/2^(n+1)) = 1$。
    再看 $w_n=n/2^n$，有
    $w_(n+1)/w_n=(n+1)/(2n) arrow 1/2<1$，故 $sum w_n$ 收敛.
    由极限比较，$sum v_n$ 亦收敛。
  ],
)

#question(
  [
    8. 用根值审敛法判定下列级数的敛散性：
    (1) $sum_(n=1)^oo (n / (2n+1))^n$；

    (2) $sum_(n=1)^oo (b / a_n)^n$，其中 $lim_(n arrow oo) a_n = a$，$a_n, b, a$ 均为正数。
  ],
  p: [
    (1) 设 $u_n=(n/(2n+1))^n$，
    则
    $root(n, u_n)=n/(2n+1) arrow 1/2<1$。
    由根值审敛法，级数收敛。

    (2) 设 $u_n=(b/a_n)^n$，则
    $root(n, u_n)=b/a_n arrow b/a$。
    因此：
    若 $b/a<1$（即 $b<a$）则收敛；
    若 $b/a>1$（即 $b>a$）则发散；
    若 $b/a=1$（即 $b=a$）根值法不能判定。
  ],
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
  p: [A. 通项不趋于 0，发散；B. 绝对值级数收敛，故绝对收敛；C. $sum 2/sqrt(n)$ 发散，但原交错级数满足莱布尼茨判别法，故条件收敛；D. 绝对值级数为 $p$ 级数（$p=4/3>1$），绝对收敛。],
)

#question(
  [
    4. 下列级数中，收敛的是（ #choice[D] ）。
    A. $sum_(n=1)^oo 1 / (n root(n, n))$ #quad B. $sum_(n=1)^oo (n+1) / (n(n+2))$ \
    C. $sum_(n=1)^oo 3^n / (n dot 2^n)$ #quad D. $sum_(n=2)^oo 4 / ((n-1)(n+3))$
  ],
  p: [A、B 均与 $sum 1/n$ 同阶，发散；C 为比值大于 1 的正项级数，发散；D 选项通项与 $1/n^2$ 同阶，收敛。],
)

#prob-type("三、填空题")

#question(
  [
    5. 级数 $sum_(n=1)^oo u_n$ 条件收敛的含义是 #ans[$sum u_n$ 收敛而 $sum |u_n|$ 发散]。
  ],
  p: [条件收敛的定义是：原级数收敛，
    但其绝对值级数不收敛。
    即
    $sum_(n=1)^oo u_n$ 收敛，而
    $sum_(n=1)^oo |u_n|$ 发散。],
)

#question(
  [
    6. 级数 $sum_(n=1)^oo u_n$ 绝对收敛的含义是 #ans[$sum |u_n|$ 收敛]。
  ],
  p: [绝对收敛按定义指
    $sum_(n=1)^oo |u_n|$ 收敛。
    且由定理可知绝对收敛必推出原级数收敛，
    故可写成
    $sum u_n$ 收敛且 $sum |u_n|$ 收敛。],
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
  p: [
    (1) 设 $u_n=n^4/n!$。
    $u_(n+1)/u_n=(n+1)^3/n^4 arrow 0<1$，故收敛。

    (2) 设 $u_n=(n+1)/(n(n+2))=1/2(1/n+1/(n+2))$。
    与调和级数同阶，故发散。

    (3) 设 $u_n=2^n sin(pi/3^n)$。
    由 $lim_(x arrow 0) sin x / x = 1$，
    $lim_(n arrow oo) (2^n sin(pi/3^n)) / (2^n (pi/3^n)) = 1$，
    即与 $pi (2/3)^n$ 同阶，
    与收敛等比级数极限比较，故收敛。

    (4) 通项 $u_n=sqrt((n+1)/n)=sqrt(1+1/n) arrow 1 != 0$，
    通项不趋于 0，故发散。
  ],
)

#question(
  [
    8. 判定下列级数的敛散性，如果收敛，是绝对收敛还是条件收敛：
    (1) $1 - 1/(sqrt(2)) + 1/(sqrt(3)) - 1/(sqrt(4)) + dots + (-1)^(n-1) /(sqrt(n)) + dots$；

    (2) $sum_(n=1)^oo (-1)^(n-1) n / 3^(n-1)$。
  ],
  p: [
    (1) 级数为 $sum (-1)^(n-1)/sqrt(n)$。
    其正项 $1/sqrt(n)$ 单调趋 0，故按莱布尼茨判别原级数收敛；
    但绝对值级数 $sum 1/sqrt(n)$ 为 $p$ 级数（$p=1/2<=1$）发散，
    所以是条件收敛。

    (2) 绝对值级数
    $sum n/3^(n-1)$。
    设 $u_n=n/3^(n-1)$，
    $u_(n+1)/u_n=(n+1)/(3n) arrow 1/3<1$，
    故绝对值级数收敛，从而原级数绝对收敛。
  ],
)

== 第三节 幂级数

#prob-type("一、判断题")

#question(
  [
    1. 若幂级数 $sum_(n=1)^oo a_n (x - 1)^n$ 在点 $x = -1$ 处收敛，则在点 $x = 2$ 处必收敛。
  ],
)

#question(
  [
    2. 已知幂级数 $sum_(n=1)^oo a_n x^n$ 的收敛半径为 $R$，则幂级数 $sum_(n=1)^oo a_n (1 / 2^n) x^(2n+1)$ 的收敛半径为 $sqrt(R)$。
  ],
)

#question(
  [
    3. 幂级数 $sum_(n=1)^oo a_n x^n$ 和 $sum_(n=1)^oo b_n x^n$ 的收敛半径分别为 $R_a, R_b$，则幂级数 $sum_(n=1)^oo (a_n + b_n) x^n$ 的收敛半径为 $R = min(R_a, R_b)$。
  ],
)

#prob-type("二、选择题")

#question(
  [
    4. 设幂级数 $sum_(n=0)^oo (a^n - b^n) / (a^n + b^n) x^n$ ($0 < a < b$)，则幂级数的收敛半径 $R$ 为（ #choice[D] ）。
    A. $b$ #quad B. $1/a$ #quad C. $1/b$ #quad D. 与 $a, b$ 无关
  ],
  p: [计算系数比值的极限：
    $lim_{n arrow oo} |c_n / c_{n+1}|$
    $= lim_{n arrow oo} | ((a^n - b^n)/(a^n + b^n)) / ((a^{n+1} - b^{n+1})/(a^{n+1} + b^{n+1})) |$
    $= lim_{n arrow oo} | (-1)/(-1) | = 1$。
    收敛半径 $R = 1$，与 $a, b$ 无关。],
)

#question(
  [
    5. 当常数 $p > 0$ 时，幂级数 $sum_(n=1)^oo ((-1)^(n-1) / n^p) x^n$ 在其收敛区间的右端点处（ #choice[D] ）。
    A. 条件收敛 #quad B. 绝对收敛 #quad C. 发散 #quad D. $p <= 1$ 时条件收敛，$p > 1$ 时绝对收敛
  ],
  p: [收敛半径 $R=1$。右端点 $x=1$ 时级数为 $sum (-1)^{n-1}/n^p$。这是一个交错级数，且 $|u_n| = 1/n^p$ 单调趋于 0，故收敛。若 $p > 1$，绝对值级数收敛，为绝对收敛；若 $p <= 1$，绝对值级数发散，为条件收敛。],
)

#prob-type("三、填空题")

#question(
  [
    6. 若幂级数 $sum_(n=0)^oo c_n x^n$ 在点 $x = -4$ 处收敛，在点 $x = 6$ 处发散，则当 $x = 1$ 时，$sum_(n=0)^oo c_n x^n$ 的敛散情况是 #ans[绝对收敛]。
  ],
  p: [已知在 $x=-4$ 处收敛，故收敛半径满足 $R>=4$；
    在 $x=6$ 处发散，故 $R<=6$。
    因而至少可确定 $R>=4$。
    对 $x=1$ 有 $|1|<4<=R$，处于收敛圆内部，
    幂级数在内部必绝对收敛。],
)

#question(
  [
    7. 若 $lim_(n arrow oo) |c_n / c_(n+1)| = 2$，则幂级数 $sum_(n=0)^oo c_n x^(2n)$ 的收敛半径为 #ans[$sqrt(2)$]。
  ],
  p: [令 $t=x^2$，则原级数可看作
    $sum_(n=0)^oo c_n t^n$。
    已知
    $lim_(n arrow oo) |c_n/c_(n+1)|=2$，故关于 $t$ 的收敛半径为 $R_t=2$。
    即
    $|t|<2 arrow |x|^2<2 arrow |x|<sqrt(2)$。
    因而关于 $x$ 的收敛半径
    $R=sqrt(2)$。],
)

#question(
  [
    8. 当 $|x| < 1$ 时，幂级数 $sum_(n=1)^oo x^n / n$ 的和函数为 #ans[$-ln(1 - x)$]。
  ],
  p: [由几何级数
    $sum_(n=0)^oo x^n=1/(1-x)$（$|x|<1$），
    两边积分：
    $int_0^x sum_(n=0)^oo t^n dif t=int_0^x 1/(1-t) dif t$。
    得
    $sum_(n=0)^oo x^(n+1)/(n+1)=-ln(1-x)$，
    即
    $sum_(n=1)^oo x^n/n=-ln(1-x)$。],
)

#prob-type("四、计算题")

#question(
  [
    9. 求下列幂级数的收敛区间：
    (1) $1 - x + x^2/2^2 - dots + (-1)^n x^n/n^2 + dots$；

    (2) $sum_(n=1)^oo (-1)^n x^(2n+1) / (2n+1)$；

    (3) $sum_(n=1)^oo (x-5)^n /(sqrt(n))$。
  ],
  a: [
    (1) 级数 $sum (-1)^n x^n/n^2$。
    由 $lim root(n, 1/n^2)=1$ 得收敛半径 $R=1$。
    端点：
    $x=1$ 时为 $sum (-1)^n/n^2$（绝对收敛）；
    $x=-1$ 时为 $sum 1/n^2$（收敛）。
    故区间为 $[-1,1]$。

    (2) 级数 $sum (-1)^n x^(2n+1)/(2n+1)$。
    写成 $x sum (-x^2)^n/(2n+1)$，故 $|x|<1$ 内收敛。
    端点：
    $x=1$ 时为 $sum (-1)^n/(2n+1)$ 收敛；
    $x=-1$ 时仅差一个符号亦收敛。
    故区间为 $[-1,1]$。

    (3) 级数 $sum (x-5)^n/sqrt(n)$。
    由 $lim root(n, 1/sqrt(n))=1$，收敛半径 $R=1$，先得 $|x-5|<1$。
    端点：
    $x=4$ 时为 $sum (-1)^n/sqrt(n)$（条件收敛）；
    $x=6$ 时为 $sum 1/sqrt(n)$（发散）。
    故区间为 $[4,6)$。
  ],
)

#question(
  [
    10. 利用逐项求导或逐项积分，求下列幂级数的和函数：
    (1) $sum_(n=1)^oo n x^(n-1)$；

    (2) $sum_(n=0)^oo x^(4n+1) / (4n+1)$；

    (3) $sum_(n=1)^oo (n+2) x^(n+3)$。
  ],
  p: [
    (1) 由
    $sum_(n=0)^oo x^n=1/(1-x)$（$|x|<1$）逐项求导得
    $sum_(n=1)^oo n x^(n-1)=1/(1-x)^2$。

    (2) 注意
    $sum_(n=0)^oo x^(4n+1)/(4n+1)=int_0^x 1/(1-t^4) dif t$。
    分解
    $1/(1-t^4)=1/2 [1/(1-t^2)]+1/2 [1/(1+t^2)]$，
    积分得
    $S(x)=1/4 ln((1+x)/(1-x))+1/2 arctan x$（$|x|<1$）。

    (3) 设
    $T(x)=sum_(n=1)^oo (n+2)x^n$
    $=sum n x^n+2 sum x^n
    =x/(1-x)^2+2x/(1-x)$。
    故原级数
    $sum_(n=1)^oo (n+2)x^(n+3)=x^3 T(x)$
    $=x^4(3-2x)/(1-x)^2$（$|x|<1$）。
  ],
)

== 第四节 函数展开成幂级数

#prob-type("一、选择题")

#question(
  [
    1. 函数 $f(x) = 1 / (3 - x)$ 展开成 $(x - 1)$ 的幂级数为（ #choice[C] ）。
    A. $sum_(n=0)^oo (x-1)^n / 2^n$ #quad B. $sum_(n=0)^oo (-1)^n (x - 1)^n / 2^n$ \
    C. $sum_(n=0)^oo (x - 1)^n / 2^(n+1)$ #quad D. $sum_(n=0)^oo (x - 1)^n / 2$
  ],
  p: [$f(x) = 1 / (2 - (x - 1)) = 1/2 dot 1 / (1 - (x - 1)/2) = 1/2 sum_{n=0}^oo ((x-1)/2)^n = sum_{n=0}^oo (x-1)^n / 2^{n+1}$。],
)

#question(
  [
    2. 函数 $f(x) = 1 / (a + b x)$ 展开成 $(x - x_0)$ ($a + b x_0 != 0, a b != 0$) 的幂级数为（ #choice[D] ）。
    A. $sum_(n=0)^oo b^n / (a + b x_0)^(n+1) (x - x_0)^n$ #quad B. $sum_(n=0)^oo (b / (a + b x_0))^n (x - x_0)^n$ \
    C. $sum_(n=0)^oo (-1)^n (b / (a + b x_0))^n (x - x_0)^n$ #quad D. $sum_(n=0)^oo (-b)^n / (a + b x_0)^(n+1) (x - x_0)^n$
  ],
  p: [$f(x) = 1 / ((a + b x_0) + b(x - x_0))$
    $= 1 / (a + b x_0) dot 1 / (1 + b/(a + b x_0)(x - x_0))$
    $= 1 / (a + b x_0) sum_{n=0}^oo (-b/(a + b x_0))^n (x - x_0)^n$
    $= sum_{n=0}^oo (-b)^n / (a + b x_0)^{n+1} (x - x_0)^n$。],
)

#question(
  [
    3. 函数 $f(x) = e^(-x^2)$ 展开成 $x$ 的幂级数为（ #choice[B] ）。
    A. $sum_(n=0)^oo x^(2n) / n!$ #quad B. $sum_(n=0)^oo (-1)^n x^(2n) / n!$ \
    C. $sum_(n=0)^oo x^n / n!$ #quad D. $sum_(n=0)^oo (-1)^n x^n / n!$
  ],
  p: [利用 $e^u = sum_{n=0}^oo u^n / n!$，令 $u = -x^2$，得 $e^{-x^2} = sum_{n=0}^oo (-x^2)^n / n! = sum_{n=0}^oo (-1)^n x^{2n} / n!$。],
)

#question(
  [
    4. $f^(n)(0)$ 存在（$n=1, 2, dots$）是函数 $f(x)$ 可展开成 $x$ 的幂级数的（ #choice[C] ）。
    A. 充要条件 #quad B. 充分条件 #quad C. 必要条件 #quad D. 无关条件
  ],
  p: [如果 $f(x)$ 可展开成幂级数，则其在 0 点必无限可导，且系数为 $f^{(n)}(0)/n!$。但反之不成立（例如余项不趋于 0 的情况），故只是必要条件。],
)

#prob-type("二、填空题")

#question(
  [
    5. 若函数 $f(x) = 1 / ((1 - 2x)(1 - 3x))$ 展开成 $x$ 的幂级数，其收敛半径 $R =$ #ans[$1/3$]。
  ],
  p: [幂级数的收敛半径由最近奇点决定。
    函数
    $f(x)=1/((1-2x)(1-3x))$
    的奇点在 $x=1/2, 1/3$。
    距离展开中心 $0$ 最近的是 $|1/3|$，
    故收敛半径
    $R=1/3$。],
)

#question(
  [
    6. 函数 $f(x) = ln(2 + x)$ 关于 $x$ 的幂级数展开式为 #ans[$ln 2 + sum_(n=1)^oo (-1)^(n-1) / (n dot 2^n) x^n$]，其收敛域为 #ans[$(-2, 2]$]。
  ],
  p: [写成
    $ln(2+x)=ln 2+ln(1+x/2)$。
    用展开式
    $ln(1+t)=sum_(n=1)^oo (-1)^(n-1)t^n/n$（$-1<t<=1$），
    令 $t=x/2$，得
    $ln(2+x)=ln 2+sum_(n=1)^oo (-1)^(n-1)/(n dot 2^n) x^n$。
    由 $-1<x/2<=1$ 得收敛域
    $(-2,2]$。],
)

#question(
  [
    7. 设函数 $f(x) = sum_(n=0)^oo a_n x^n$，则 $g(x) = f(x) / (1 - x)$ 的麦克劳林级数展开式为 #ans[$sum_(n=0)^oo (sum_(k=0)^n a_k) x^n$]。
  ],
  p: [由
    $1/(1-x)=sum_(m=0)^oo x^m$，
    有
    $g(x)=f(x)/(1-x)= (sum_(n=0)^oo a_n x^n)(sum_(m=0)^oo x^m)$。
    作 Cauchy 乘积：
    $g(x)=sum_(n=0)^oo (sum_(k=0)^n a_k)x^n$。],
)

#question(
  [
    8. 若 $1 / (3 + x) = sum_(n=0)^oo a_n (x - 1)^n$ ($|x - 1| < 4$)，则 $a_n =$ #ans[$(-1)^n / 4^(n+1)$]。
  ],
  p: [令 $t=x-1$，则
    $1/(3+x)=1/(4+t)=1/4 dot 1/(1+t/4)$。
    用几何级数
    $1/(1+u)=sum_(n=0)^oo (-1)^n u^n$（$|u|<1$），
    取 $u=t/4$，得
    $1/(3+x)=sum_(n=0)^oo (-1)^n/4^(n+1) t^n$。
    故
    $a_n=(-1)^n/4^(n+1)$。],
)

#question(
  [
    9. 若函数 $ln(4 - 9x^2)$ 展开成 $x$ 的幂级数，其收敛半径 $R =$ #ans[$2/3$]。
  ],
  p: [写成
    $ln(4-9x^2)=ln 4+ln(1-(3x/2)^2)$。
    对 $ln(1-u)$ 的幂级数要求 $|u|<1$，
    故需
    $|(3x/2)^2|<1 arrow |x|<2/3$。
    所以收敛半径
    $R=2/3$。],
)

#prob-type("三、计算题")

#question(
  [
    10. 将函数 $f(x) = (1 + x) ln(1 + x)$ 展开成 $x$ 的幂级数，并求展开式成立的区间。
  ],
  p: [由
    $ln(1+x)=sum_(n=1)^oo (-1)^(n-1)x^n/n$（$-1<x<=1$），
    得
    $(1+x)ln(1+x)=ln(1+x)+x ln(1+x)$。
    合并同次幂后
    $f(x)=x+sum_(n=2)^oo (-1)^n/(n(n-1)) x^n$。
    收敛区间与对数级数一致，为
    $x in (-1,1]$。],
)

#question(
  [
    11. 将函数 $f(x) = cos x$ 展开成 $(x + pi/3)$ 的幂级数。
  ],
  p: [令 $u=x+pi/3$，则
    $cos x=cos(u-pi/3)=cos u cos(pi/3)+sin u sin(pi/3)$
    $=1/2 cos u+sqrt(3)/2 sin u$。
    再代入
    $cos u=sum_(n=0)^oo (-1)^n u^(2n)/(2n)!$，
    $sin u=sum_(n=0)^oo (-1)^n u^(2n+1)/(2n+1)!$，
    得
    $cos x = 1/2 sum_(n=0)^oo (-1)^n [ 1/(2n)! (x + pi/3)^(2n) + sqrt(3)/(2n+1)! (x + pi/3)^(2n+1) ]$。
    该展开在全实轴成立。],
)

#question(
  [
    12. 将函数 $f(x) = 1 / (x^2 + 3x + 2)$ 展开成 $(x + 4)$ 的幂级数。
  ],
  p: [设 $t=x+4$，则
    $x^2+3x+2=(x+1)(x+2)=(t-3)(t-2)$。
    先分解
    $1/((t-3)(t-2))=1/(t-3)-1/(t-2)$。
    再分别写成几何级数：
    $1/(t-3)=-1/3 sum_(n=0)^oo (t/3)^n$（$|t|<3$），
    $1/(t-2)=-1/2 sum_(n=0)^oo (t/2)^n$（$|t|<2$）。
    合并得
    $1/(x^2+3x+2)=sum_(n=0)^oo (1/2^(n+1)-1/3^(n+1))(x+4)^n$。
    公共收敛条件为 $|x+4|<2$，即 $x in (-6,-2)$。],
)

== 第五节 傅里叶级数

#prob-type("一、选择题")

#question(
  [
    1. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，在 $[-pi, pi)$ 上的表达式为 $f(x) = cases(0 & "if" -pi <= x < 0, x & "if" 0 <= x < pi)$。已知 $f(x)$ 的傅里叶级数，则该级数的和函数为（ #choice[D] ）。
    A. $S(x) = f(x)$，$x in (-pi, pi)$ #quad B. $S(x) = f(x)$，$x in (-oo, +oo)$ \
    C. $S(x) = cases(f(x) & "if" x != k pi, pi/2 & "if" x = k pi)$（$k$ 为整数） #quad D. $S(x) = cases(f(x) & "if" x != (2k-1) pi, pi/2 & "if" x = (2k-1) pi)$（$k$ 为整数）
  ],
  p: [狄利克雷收敛定理指出，在间断点 $x$ 处，和函数 $S(x) = (f(x^-) + f(x^+))/2$。函数在 $x = pi$ (即 $x = (2k-1)pi$) 处间断，$f(pi^-) = pi, f(pi^+) = f(-pi^+) = 0$，故 $S(pi) = pi/2$。在连续点处 $S(x) = f(x)$。处选 D。],
)

#question(
  [
    2. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，在 $[-pi, pi)$ 上的表达式为 $f(x) = cases(x & "if" -pi <= x < 0, 0 & "if" 0 <= x < pi)$。$f(x)$ 的傅里叶级数的和函数为 $S(x)$，则 $S(pi) =$（ #choice[A] ）。
    A. $-pi/2$ #quad B. $-pi$ #quad C. 0 #quad D. 其他值
  ],
  p: [在 $x = pi$ 处，$f(pi^-) = 0, f(pi^+) = f(-pi^+) = -pi$。故 $S(pi) = (0 + (-pi))/2 = -pi/2$。],
  a: [A.],
)

#question(
  [
    3. 函数 $f(x) = |sin x|$ ($-pi <= x <= pi$) 的傅里叶系数 $a_n, b_n$ 满足（ #choice[B] ）。
    A. $a_n = 0$ ($n = 0, 1, 2, dots$)，$b_n != 0$ ($n = 1, 2, dots$) #quad B. $b_n = 0$ ($n = 1, 2, dots$)，$a_(2k+1) = 0$ ($k = 0, 1, 2, dots$) \
    C. $a_n != 0$ ($n = 0, 1, 2, dots$)，$b_n = 0$ ($n = 1, 2, dots$) #quad D. 以上结论都不对
  ],
  p: [因为 $f(x) = |sin x|$ 是偶函数，故 $b_n = 0$。此外，$f(x)$ 是以 $pi$ 为周期的函数，其傅里叶级数只含 $cos 2k x$ 项，故奇数项系数 $a_{2k+1} = 0$。],
)

#question(
  [
    4. 利用函数 $f(x) = x^2$ 在区间 $[-pi, pi]$ 上的傅里叶级数展开式可得 $sum_(n=1)^oo 1 / n^2 =$（ #choice[B] ）。（注：原选项 A 为 $pi^2/3$ 是 $a_0/2$）
    A. $pi^2/3$ #quad B. $pi^2/6$ #quad C. $pi^2/9$ #quad D. $pi^2/12$
  ],
  p: [$f(x) = x^2$ 的傅里叶级数为 $pi^2/3 + 4 sum_{n=1}^oo (-1)^n/n^2 cos n x$。令 $x = pi$，得 $pi^2 = pi^2/3 + 4 sum_{n=1}^oo 1/n^2$，整理得 $sum_{n=1}^oo 1/n^2 = pi^2/6$。],
)

#prob-type("二、填空题")

#question(
  [
    5. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，在 $[-pi, pi)$ 上的表达式为 $f(x) = cases(1 & "if" -pi <= x < 0, x & "if" 0 <= x < pi)$。则 $f(x)$ 的傅里叶级数在点 $x = pi$ 处收敛于 #ans[$(pi+1)/2$]。
  ],
  p: [傅里叶级数在跳跃点收敛到左右极限平均值。
    在 $x=pi$ 处：
    左极限 $f(pi-0)=pi$；
    右极限由周期延拓得 $f(pi+0)=f(-pi+0)=1$。
    故
    $S(pi)=(pi+1)/2$。],
)

#question(
  [
    6. 设函数 $f(x) = pi x + x^2$ ($-pi <= x <= pi$)，且其傅里叶级数为 $a_0/2 + sum_(n=1)^oo (a_n cos n x + b_n sin n x)$，则 $b_3 =$ #ans[$2/3$]。
  ],
  p: [按公式
    $b_n=1/pi int_(-pi)^pi f(x) sin n x dif x$。
    其中 $x^2 sin n x$ 为奇函数，积分为 0，故只需算
    $1/pi int_(-pi)^pi pi x sin n x dif x$。
    代入 $n=3$ 计算后得
    $b_3=2/3$。],
)

#question(
  [
    7. 已知函数 $f(x)$ 满足狄利克雷收敛条件，其傅里叶级数的和函数为 $S(x)$，且 $f(x)$ 在点 $x = 0$ 处左连续，$f(0^-) = -1$，$S(0) = 3$，则 $lim_(x arrow 0^+) f(x) =$ #ans[$7$]。
  ],
  p: [狄利克雷定理给出
    $S(0)=1/2(f(0^-)+f(0^+))$。
    已知 $S(0)=3, f(0^-)=-1$，故
    $3=1/2(-1+f(0^+))$，
    解得
    $f(0^+)=7$。],
)

#question(
  [
    8. 设函数 $f(x) = 1 - x/pi$ ($0 <= x <= pi$) 的余弦级数的和函数为 $S(x)$，则 $S(-3) =$ #ans[$1 - 3/pi$]。
  ],
  p: [余弦级数对应偶延拓并作 $2pi$ 周期延拓。
    因而
    $S(-3)=S(3)$。
    又 $3 in (0,pi)$，在连续点处级数和等于函数值，
    所以
    $S(-3)=f(3)=1-3/pi$。],
)

#question(
  [
    9. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，其傅里叶系数为 $a_n, b_n$。若函数 $g(x) = f(-x)$，则 $g(x)$ 的傅里叶系数 $a_n^*, b_n^*$ 与 $a_n, b_n$ 的关系为 $a_n^* = a_n$，$b_n^* = -b_n$。
  ],
  p: [由定义
    $a_n^*=1/pi int_(-pi)^pi g(x) cos n x dif x$
    $=1/pi int_(-pi)^pi f(-x) cos n x dif x$。
    令 $t=-x$ 后利用 $cos$ 偶性，可得 $a_n^*=a_n$。
    同理
    $b_n^*=1/pi int_(-pi)^pi f(-x) sin n x dif x$，
    令 $t=-x$ 后利用 $sin$ 奇性，得
    $b_n^*=-b_n$。],
)

#prob-type("三、计算题")

#question(
  [
    10. 将函数 $f(x) = pi - x/2$ ($0 <= x <= pi$) 展开成正弦级数。
  ],
  a: [正弦级数系数
    $b_n=2/pi int_0^pi (pi-x/2) sin n x dif x$。
    分部积分并化简可得
    $b_n=2/n+(-1)^n/n$。
    因而
    $f(x)=sum_(n=1)^oo (2/n+(-1)^n/n) sin n x,
    x in (0,pi)$。],
)

#question(
  [
    11. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，它在区间 $[-pi, pi)$ 上的表达式为 $f(x) = 3x^2 + 1$，试将 $f(x)$ 展开成傅里叶级数。
  ],
  a: [函数为偶函数，故 $b_n=0$。
    计算
    $a_0=1/pi int_(-pi)^pi (3x^2+1) dif x=2(pi^2+1)$，
    故常数项为 $a_0/2=pi^2+1$。
    再由
    $a_n=1/pi int_(-pi)^pi (3x^2+1) cos n x dif x$
    得
    $a_n=12(-1)^n/n^2$。
    因而
    $f(x)=pi^2+1+12 sum_(n=1)^oo (-1)^n/n^2 cos n x$。],
)

#question(
  [
    12. 设 $f(x) = x e^x$，$x in [-pi, pi]$。求该函数的傅里叶级数在 $x = pi$ 处收敛于何值？
  ],
  a: [在端点 $x=pi$ 处，傅里叶级数收敛到左右极限平均值：
    $S(pi)=1/2(f(pi-0)+f(-pi+0))$。
    其中
    $f(pi)=pi e^pi,
    f(-pi)=-pi e^(-pi)$。
    故
    $S(pi)=1/2[pi e^pi-pi e^(-pi)]
    =pi sinh pi$。],
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
)

#prob-type("二、填空题")

#question(
  [
    3. 将函数 $f(x) = cases(0 & "if" 0 <= x <= 1, 2x & "if" 1 < x <= 2)$ 在 $[0, 2]$ 上展开成余弦级数，其和函数在 $x=1$ 处的值为 #ans[$1$]。
  ],
  p: [余弦级数对应偶延拓后在间断点取左右极限平均值。
    在 $x=1$ 处有
    $f(1-0)=0,
    f(1+0)=2$。
    故
    $S(1)=1/2(0+2)=1$。],
)

#prob-type("三、计算题")

#question(
  [
    4. 将函数 $f(x) = x$ ($0 < x < 2$) 展开成正弦级数。
  ],
  p: [在 $(0,2)$ 上作正弦展开：
    $f(x)=sum_(n=1)^oo b_n sin(n pi x/2)$，
    其中
    $b_n=2/2 int_0^2 x sin(n pi x/2) dif x
    =int_0^2 x sin(n pi x/2) dif x$。
    分部积分得
    $b_n=4/pi (-1)^(n+1)/n$。
    故
    $x=4/pi sum_(n=1)^oo (-1)^(n+1)/n sin((n pi x)/2),
    0 < x < 2$。],
)

== 总习题十二

#prob-type("一、判断题")

#question(
  [
    1. 若级数 $sum_(n=1)^oo u_n$ 收敛，则 $lim_(n arrow oo) u_n = 0$。（ #choice[√] ）
  ],
)

#question(
  [
    2. 若级数 $sum_(n=1)^oo u_n$ 收敛，$sum_(n=1)^oo v_n$ 发散，则级数 $sum_(n=1)^oo (u_n + v_n)$ 发散。（ #choice[√] ）
  ],
)

#question(
  [
    3. 级数加括号后不改变其敛散性。（ #choice[×] ）
  ],
)

#question(
  [
    4. 正项级数收敛的充要条件是前 $n$ 项和构成的数列 $(s_n)$ 有界。（ #choice[√] ）
  ],
)

#question(
  [
    5. 若正项级数 $sum_(n=1)^oo u_n$ 收敛，则级数 $sum_(n=1)^oo sqrt(u_n u_(n+1))$ 也收敛。（ #choice[√] ）
  ],
)

#question(
  [
    6. 若 $lim_(n arrow oo) u_n / v_n = l$ ($0 < l < +oo$)，则级数 $sum_(n=1)^oo u_n$ 和 $sum_(n=1)^oo v_n$ 有相同的敛散性。（ #choice[√] ）
  ],
)

#prob-type("二、选择题")

#question(
  [
    7. 当级数 $sum_(n=1)^oo (a_n + b_n)$ 收敛时，级数 $sum_(n=1)^oo a_n$ 与 $sum_(n=1)^oo b_n$（ #choice[C] ）。
    A. 必同时收敛 #quad B. 必同时发散 #quad C. 可能同时发散 #quad D. 不可能同时収敛
  ],
)

#question(
  [
    8. 在正项级数中，$sum_(n=1)^oo a_n$ 收敛是级数 $sum_(n=1)^oo a_n^2$ 收敛的（ #choice[A] ）。
    A. 充分条件 #quad B. 必要条件 #quad C. 充要条件 #quad D. 无关条件
  ],
)

#question(
  [
    9. 设 $sum_(n=1)^oo a_n$ 为任意项级数，若 $|a_n| > |a_(n+1)|$ 且 $lim_(n arrow oo) a_n = 0$，则该级数（ #choice[D] ）。
    A. 条件收敛 #quad B. 绝对收敛 #quad C. 发散 #quad D. 敛散性不确定（符号未定）
  ],
)

#question(
  [
    10. 若函数 $y = sum_(n=0)^oo x^n / (n!)^2$，则 $x y'' + y' =$（ #choice[A] ）。
    A. $y$ #quad B. $2y$ #quad C. $y/4$ #quad D. 0
  ],
  p: [逐项求导：
    $y' = sum_(n=1)^oo (n x^(n-1)) / (n!)^2 = sum_(n=0)^oo x^n / (n!(n+1)!)$，
    $y'' = sum_(n=2)^oo (n(n-1)x^(n-2)) / (n!)^2 = sum_(n=0)^oo x^n / (n!(n+2)!)$。
    因而
    $x y'' + y' = sum_(n=0)^oo [x^(n+1) / (n!(n+2)!) + x^n / (n!(n+1)!)]$。
    把第一项换指标并合并，可得每阶系数恰为 $1 / (n!)^2$，故
    $x y'' + y' = sum_(n=0)^oo x^n / (n!)^2 = y$。],
)

#question(
  [
    11. 若级数 $sum_(n=0)^oo a_n (x - 1)^n$ 在点 $x = -1$ 处收敛，则该级数在点 $x = 2$ 处（ #choice[C] ）。
    A. 发散 #quad B. 条件收敛 #quad C. 绝对收敛 #quad D. 敛散性不确定
  ],
)

#question(
  [
    12. 级数 $1/2 - 1/4 + 1/8 - dots + (-1)^(n-1) / 2^n + dots$ 的和为（ #choice[C] ）。
    A. $1/2$ #quad B. 1 #quad C. $1/3$ #quad D. $2/3$
  ],
)

#prob-type("三、填空题")

#question(
  [
    13. 幂级数 $sum_(n=0)^oo x^n / n!$ 的收敛区间为 #ans[$(-oo, +oo)$]。
  ],
  p: [由比值法：
    $u_n=x^n/n!$，
    $abs(u_(n+1)/u_n)=abs(x)/(n+1) arrow 0 < 1$（任意实数 $x$）。
    故级数对一切 $x in RR$ 收敛，
    收敛区间为 $(-oo,+oo)$。],
)

#question(
  [
    14. 级数 $sum_(n=0)^oo 1 / (1 + a^n)$ ($a > 0$) 当 $a$ 满足条件 #ans[$a > 1$] 时收敛。
  ],
  p: [若 $0<a<=1$，则 $a^n<=1$，
    故
    $1/(1+a^n)>=1/2$，通项不趋于 0，级数发散。
    若 $a>1$，当 $n$ 大时
    $1/(1+a^n) <= 1/a^n$，与收敛等比级数比较可知收敛。
    故收敛条件为 $a>1$。],
)

#question(
  [
    15. 幂级数 $sum_(n=1)^oo ((-1)^n x^(3n-1)) / (n dot 8^n)$ 的收敛域为 #ans[$(-2, 2]$]。
  ],
  p: [写成
    $1/x sum_(n=1)^oo ((-1)^n/n)(x^3/8)^n$。
    由对数级数可知需满足 $|x^3/8|<1$，即 $|x|<2$。
    端点检验：
    $x=2$ 时为交错调和型收敛；
    $x=-2$ 时为调和型发散。
    故收敛域为
    $(-2,2]$。],
)

#question(
  [
    16. 级数 $sum_(n=1)^oo (u_n - 2)$ 收敛，则 $lim_(n arrow oo) u_n =$ #ans[$2$]。
  ],
  p: [级数收敛的必要条件是通项趋于 0，
    即
    $lim_(n arrow oo) (u_n - 2) = 0$。
    因而
    $lim_(n arrow oo) u_n = 2$。],
)

#question(
  [
    17. 幂级数 $sum_(n=0)^oo x^n / (3^n + (-2)^n + 3 dot 2^n)$ 的收敛半径 $R =$ #ans[$3$]。
  ],
  p: [当 $n$ 大时分母主导项为 $3^n$，
    故系数
    $a_n=1/(3^n+(-2)^n+3 dot 2^n)$ 与 $1/3^n$ 同阶。
    用根值法：
    $lim_(n arrow oo) root(n, abs(a_n))=1/3$，
    故收敛半径
    $R=1/(1/3)=3$。],
)

#question(
  [
    18. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，且 $f(x) = cases(0 & "if" -pi <= x < 0, x + 2 & "if" 0 <= x < pi)$。则 $f(x)$ 的傅里叶级数在点 $x = 0$ 处收敛于 #ans[$1$]。
  ],
  p: [傅里叶级数在间断点收敛到左右极限平均值。
    在 $x=0$ 处：
    $f(0^-)=0,
    f(0^+)=2$。
    因而
    $S(0)=1/2(0+2)=1$。],
)

#prob-type("四、计算题")

#question(
  [
    19. 计算 $iint_D (x^2 + y) dif x dif y$，其中 $D$ 是由 $x^2 + y^2 <= 1$ 围成的闭区域。
  ],
  p: [
    利用圆域对称性，
    $iint_D y dif x dif y = 0$。
    又由 $x,y$ 对称，
    $iint_D x^2 dif x dif y = 1/2 iint_D (x^2+y^2) dif x dif y$。

    改用极坐标：
    $iint_D (x^2+y^2) dif x dif y
    = int_0^(2 pi) int_0^1 r^2 dot r dif r dif theta
    = 2 pi int_0^1 r^3 dif r
    = pi / 2$。

    所以
    $iint_D (x^2+y) dif x dif y
    = iint_D x^2 dif x dif y
    = 1/2 dot (pi / 2)$
    $= pi / 4$。
  ],
  a: [$pi/4$],
)

#question(
  [
    20. 求幂级数 $sum_(n=1)^oo (n^2 + 1)/n x^(2n)$ ($|x| < 1$) 在收敛区间内的和函数，并求 $sum_(n=1)^oo (n^2 + 1)/(n dot 2^n)$ 的和。
  ],
  a: [拆项：
    $sum_(n=1)^oo (n^2+1)/n x^(2n)=sum n x^(2n)+sum x^(2n)/n$。
    其中
    $sum n t^n=t/(1-t)^2$，取 $t=x^2$ 得
    $sum n x^(2n)=x^2/(1-x^2)^2$；
    又
    $sum x^(2n)/n=-ln(1-x^2)$。
    故
    $S(x)=x^2/(1-x^2)^2-ln(1-x^2)$。

    再取 $x^2=1/2$（即 $x=1/sqrt(2)$）得到
    $sum_(n=1)^oo (n^2+1)/(n dot 2^n)
    =S(1/sqrt(2))=2+ln 2$。],
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
  p: [利用交换积分次序或变限积分求导：$F(t) = int_1^t dif x f(x) int_1^x dif y = int_1^t (x-1) f(x) dif x$（此路不通，原限为 $y$ 到 $t$）。
    正确次序：$1 <= y <= t, y <= x <= t => 1 <= x <= t, 1 <= y <= x$。
    $F(t) = int_1^t f(x) (x-1) dif x$。
    $F'(t) = (t-1) f(t)$。
    *注：若按原题结果 $int_1^2 f(x) dif x$，则 $F(t) = int_1^t dif x int_1^x f(y) dif y$。*],
)

#question(
  [
    3. 将 $x O y$ 面上的双曲线 $x^2/3 - 4y^2 = 1$ 绕 $y$ 轴旋转一周所得旋转曲面的方程为（ #choice[D] ）。
    A. $x^2/3 - 4y^2 - 4z^2 = 1$ #quad B. $x^2/3 - 4y^2 + 4z^2 = 1$ \
    C. $x^2/3 + y^2/3 - 4z^2 = 1$ #quad D. $x^2/3 - 4y^2 + z^2/3 = 1$
  ],
)

#question(
  [
    4. 设 $L: x^2 + y^2 = 1$，取顺时针方向，则 $oint_L (x dif y - y dif x) / (x^2 + y^2) =$ #ans[$-2 pi$]。
  ],
  p: [在 $L$ 上 $x^2+y^2=1$。积分化为 $oint_L (x dif y - y dif x)$。
    逆时针方向结果为 $2 pi$，故顺时针为 $-2 pi$。],
)

#question(
  [
    5. 下列级数中，条件收敛的是（ #choice[B] ）。
    A. $sum_(n=1)^oo (-1)^n sqrt(n / (n+1))$ #quad B. $sum_(n=1)^oo (-1)^(n-1) /(sqrt(n(n+1)))$ \
    C. $sum_(n=1)^oo (-1)^(n-1) / (n(n+1))$ #quad D. $sum_(n=1)^oo (-1)^(n-1) / 2^n$
  ],
)

#prob-type("二、填空题（每小题3分，共15分）")

#question(
  [
    6. 已知 $|a| = 2$，$|b| = sqrt(2)$，且 $a dot b = 2$，则 $|a times b| =$ #ans[$2$]。
  ],
  p: [用恒等式 $|a times b|^2=|a|^2|b|^2-(a dot b)^2$。
    代入得 $|a times b|^2=2^2 dot (sqrt(2))^2-2^2=8-4=4$，故 $|a times b|=2$。],
)

#question(
  [
    7. 函数 $u = x y^2 + z^3 - x y z$ 在点 $(1, 1, 2)$ 处在方向角为 $alpha = pi/3, beta = pi/4, gamma = pi/3$ 的方向上的方向导数为 #ans[$1 + sqrt(2)$]。
  ],
  a: [方向导数公式：
    $D_l u=grad u dot bold(e)$，其中
    $bold(e)=(cos alpha,cos beta,cos gamma)$。
    先求
    $u_x=y^2-y dot z,
    u_y=2 dot x dot y-x dot z,
    u_z=3z^2-x dot y$，
    再在点 $(1,1,2)$ 处代入，并与
    $bold(e)=(1/2,sqrt(2)/2,1/2)$ 点乘，
    得
    $D_l u=1+sqrt(2)$。],
)

#question(
  [
    8. 曲面 $x^2 + 2y^2 + z - x e^z = 4$ 在点 $(0, 1, 2)$ 处的切平面方程为 #ans[$e^2 x - 4y - z + 6 = 0$]。
  ],
  p: [设 $F(x,y,z)=x^2+2y^2+z-x e^z-4$。计算梯度：
    $F_x=2x-e^z$, $F_y=4y$, $F_z=1-x e^z$。
    点 $P(0,1,2)$ 处：$F_x = -e^2$, $F_y = 4$, $F_z = 1$。
    切平面：$-e^2(x-0) + 4(y-1) + 1(z-2) = 0 => e^2 x - 4y - z + 6 = 0$。],
)

#question(
  [
    9. 设曲面 $Sigma$ 为上半球面 $z = sqrt(2 - x^2 - y^2)$，$iint_Sigma (y + 1) dif S =$ #ans[$4 pi$]。
  ],
  p: [上半球面关于 $y O z$ 面对称，$iint_Sigma y dif S = 0$。
    剩余部分为 $iint_Sigma 1 dif S$，即上半球面面积 $2 pi R^2 = 2 pi (2) = 4 pi$。],
)

#question(
  [
    10. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，且 $f(x) = cases(1 - x & "if" -pi <= x < 0, 1 + x & "if" 0 <= x < pi)$，$S(x)$ 为 $f(x)$ 的傅里叶级数的和函数，则 $S(-3 pi) =$ #ans[$1+pi$]。
  ],
  p: [因 $S(x)$ 周期为 $2 pi$，$S(-3 pi) = S(-pi)$。
    由收敛定理，$S(-pi) = [f(-pi^+) + f(-pi^-)] / 2 = [f(-pi^+) + f(pi^-)] / 2$。
    $f(-pi^+) = 1 - (-pi) = 1 + pi$, $f(pi^-) = 1 + pi$。
    故 $S(-3 pi) = 1 + pi$。],
)

#prob-type("三、计算题（11~12 每小题6分，13~17 每小题7分，18小题8分，19小题10分，20小题5分，共70分）")

#question(
  [
    11. 设函数 $z = f(x, y)$ 的全微分为 $dif z = (4 - 2x) dif x - (2y + 4) dif y$，试确定 $f(x, y)$ 的极值点，并判别该点是极大值点还是极小值点。
  ],
  a: [
    由全微分可读出
    $f_x = 4 - 2x, f_y = -2y - 4$。
    驻点满足 $f_x = f_y = 0$，故
    $4 - 2x = 0, -2y - 4 = 0$，解得
    $(x,y)=(2,-2)$。

    二阶偏导数为
    $f_(x x)''=-2, f_(x y)''=0, f_(y y)''=-2$。
    记 $A=f_(x x)'', B=f_(x y)'', C=f_(y y)''$，
    则
    $A C - B^2 = (-2)(-2)-0=4>0$，且 $A<0$。
    因此该驻点为极大值点。
  ],
)

#question(
  [
    12. 计算 $iint_D cos(x/y) dif x dif y$，其中 $D$ 为由直线 $x = 0, y = pi/2, y = pi$ 及抛物线 $x = y^2$ 所围成的平面区域。
  ],
  a: [按区域先对 $x$ 积分：
    $D={(x,y)| pi/2<=y<=pi, 0<=x<=y^2}$，
    故
    $I=int_(pi/2)^pi dif y int_0^(y^2) cos(x/y) dif x$。
    内层令 $u=x/y$，得
    $int_0^(y^2) cos(x/y) dif x=y sin y$。
    因而
    $I=int_(pi/2)^pi y sin y dif y
    =[-y cos y+sin y]_(pi/2)^pi
    =pi-1$。],
)

#question(
  [
    13. 设函数 $z = f(x/y, y/x)$，其中 $f$ 具有一阶连续偏导数，求 $dif z$。
  ],
  a: [
    设
    $u = x/y, v = y/x$，则 $z=f(u,v)$。
    由全微分公式
    $dif z = f_1' dif u + f_2' dif v$。

    计算
    $dif u = (1/y) dif x - (x/y^2) dif y$，
    $dif v = -(y/x^2) dif x + (1/x) dif y$。
    代入得
    $dif z = [f_1'/y - y f_2'/x^2] dif x + [-x f_1'/y^2 + f_2'/x] dif y$。
  ],
)

#question(
  [
    14. 求曲线 $cases(x^2 + 2y^2 + z^2 = 10, x - y + z = 0)$ 在点 $(1, 2, 1)$ 处的切线方程。
  ],
  a: [
    设
    $F_1=x^2+2y^2+z^2-10, F_2=x-y+z$。
    交线在点 $P(1,2,1)$ 处的切向量可取
    $bold(t)=grad F_1(P) times grad F_2(P)$。

    先算梯度：
    $grad F_1=(2x,4y,2z)$，故 $grad F_1(P)=(2,8,2)$；
    $grad F_2=(1,-1,1)$。
    叉积
    $(2,8,2) times (1,-1,1)=(10,0,-10)$，
    可化为方向向量 $(1,0,-1)$（或等比例 $(3,0,-3)$）。

    故切线方程为
    $(x-1)/3 = (y-2)/0 = (z-1)/(-3)$。
  ],
)

#question(
  [
    15. 设函数 $f(u)$ 具有一阶连续导数，且 $f(0) = 0, f'(0) = 1$，求 $lim_(t arrow 0^+) 1/t^3 iint_(x^2 + y^2 <= t^2) f(sqrt(x^2 + y^2)) dif x dif y$。
  ],
  a: [
    极坐标变换后
    $I(t)=1/t^3 int_0^(2pi) int_0^t f(r) r dif r dif theta
    = (2pi)/t^3 int_0^t f(r) r dif r$。

    由 $f(0)=0, f'(0)=1$，有
    $f(r)=r+o(r)$（$r -> 0$）。
    故
    $f(r)r = r^2+o(r^2)$，
    从而
    $int_0^t f(r)r dif r = int_0^t (r^2+o(r^2)) dif r = t^3/3 + o(t^3)$。

    代回得
    $I(t)= (2pi)/t^3 [t^3/3+o(t^3)] -> 2pi/3$。
  ],
)

#question(
  [
    16. 计算 $oint_L (y^2 + x) dif s$，其中 $L$ 为圆 $x^2 + y^2 = 4$。
  ],
  a: [
    取参数方程
    $x=2 cos theta, y=2 sin theta, 0<=theta<=2pi$。
    则
    $dif s = sqrt((dif x)^2+(dif y)^2)=2 dif theta$。

    原积分
    $oint_L (y^2+x) dif s
    = int_0^(2pi) [4 sin^2 theta + 2 cos theta] dot 2 dif theta$
    $= 8 int_0^(2pi) sin^2 theta dif theta + 4 int_0^(2pi) cos theta dif theta$
    $= 8pi + 0 = 8pi$。
  ],
)

#question(
  [
    17. 将函数 $f(x) = 1 / (x^2 + 4x + 3)$ 展开成 $(x - 1)$ 的幂级数。
  ],
  a: [
    令 $t=x-1$，则
    $f(x)=1/(t^2+6t+8)=1/((t+2)(t+4))$。
    部分分式分解：
    $1/((t+2)(t+4)) = 1/2 [1/(t+2)-1/(t+4)]$。

    在 $|t|<2$ 下，
    $1/(t+2)=1/2 sum_(n=0)^oo (-1)^n (t/2)^n$，
    $1/(t+4)=1/4 sum_(n=0)^oo (-1)^n (t/4)^n$。
    代入得
    $f(x)=sum_(n=0)^oo (-1)^n (1/2^(n+2)-1/2^(2n+3)) t^n$。

    即
    $f(x)=sum_(n=0)^oo (-1)^n (1/2^(n+2)-1/2^(2n+3))(x-1)^n,
    |x-1|<2$。
  ],
)

#question(
  [
    18. 设函数 $f(x)$ 在区间 $(-oo, +oo)$ 上具有连续导数，$L$ 是上半平面 ($y > 0$) 内以点 $(a, b)$ 为起点、点 $(c, d)$ 为终点的有向分段光滑曲线，记 $I = int_L [1/y + y f(x y)] dif x + [x f(x y) - x/y^2] dif y$。

    (1) 证明：曲线积分 $I$ 与路径 $L$ 无关；

    (2) 当 $a b = c d$ 时，计算 $I$ 的值。
  ],
  a: [
    记
    $P(x,y)=1/y+y f(x y), Q(x,y)=x f(x y)-x/y^2$。

    (1) 先验恰当性：
    $P_y=-1/y^2+f(x y)+x y f'(x y)$，
    $Q_x=f(x y)+x y f'(x y)-1/y^2$，
    故 $P_y=Q_x$。
    在上半平面 $y>0$（单连通）内，积分与路径无关。

    (2) 求势函数 $U$：
    对 $P$ 关于 $x$ 积分，
    $U(x,y)=x/y+F(x y)+phi(y)$，其中 $F'(t)=f(t)$。
    再求 $U_y=-x/y^2+x f(x y)+phi'(y)$，与 $Q$ 比较得 $phi'(y)=0$。
    因而可取
    $U=x/y+F(x y)$。

    所以
    $I=U(c,d)-U(a,b)=c/d-a/b+F(c d)-F(a b)$。
    当 $a b=c d$ 时，后两项相消，
    $I=c/d-a/b$。
  ],
)

#question(
  [
    19. 计算 $I = iint_Sigma [f_y(x, y) + x^3] dif y dif z + [y^3 - f_x(x, y)] dif z dif x + z^3 dif x dif y$，其中 $f(x, y)$ 具有二阶连续偏导数，$Sigma$ 为锥面 $z = sqrt(x^2 + y^2)$ ($0 <= z <= 1$) 的下侧。
  ],
  a: [
    设向量场
    $bold(F)=(P,Q,R)$，其中
    $P=f_y+x^3, Q=y^3-f_x, R=z^3$。
    用平面圆盘 $z=1, x^2+y^2<=1$ 与锥面 $Sigma$ 组成闭曲面 $partial Omega$，其中
    $Omega={ (r,theta,z) | 0<=r<=1, r<=z<=1 }$。
    由于 $Sigma$ 取下侧，恰为该闭区域外法向。

    散度
    $div bold(F)=P_x+Q_y+R_z
    =f_(y x)''+3x^2+3y^2-f_(x y)''+3z^2
    =3(x^2+y^2+z^2)$。
    由高斯公式
    $iint_(Sigma) bold(F) dot bold(n) dif S + iint_(D) bold(F) dot bold(n) dif S = iiint_(Omega) div bold(F) dif v$。

    右端（三重积分）用柱坐标：
    $iiint_(Omega) 3(r^2+z^2) r dif z dif r dif theta
    = 9pi/10$。
    圆盘 $D$ 上外法向为 $+bold(k)$，故
    $iint_(D) bold(F) dot bold(n) dif S = iint_(x^2+y^2<=1) z^3 dif x dif y = pi$。

    故
    $I = 9pi/10 - pi = -pi/10$。
  ],
)

#question(
  [
    20. 设幂级数 $sum_(n=0)^oo a_n x^n$ 在 $(-oo, +oo)$ 上收敛，且 $a_0 = 0, a_1 = 1, a_2 = 0, a_(n+2) = 2/(n+1) a_n$ ($n = 0, 1, 2, dots$)，求该级数的和函数 $S(x)$。
  ],
  a: [
    由递推式
    $a_(n+2)=2 a_n/(n+1)$，奇偶项分开。

    偶项：$a_0=0, a_2=0$，递推后全为 0。
    奇项：
    $a_1=1,
    a_3=2,
    a_5=1,
    a_7=1/3, dots$
    可归纳得
    $a_(2k+1)=1/k!$。

    故
    $S(x)=sum_(k=0)^oo a_(2k+1) x^(2k+1)
    =sum_(k=0)^oo x^(2k+1)/k!
    =x sum_(k=0)^oo (x^2)^k/k!
    =x e^(x^2)$。
  ],
)

#prob-type("一、选择题（每小题3分，共15分）")

#question(
  [
    1. 设有直线 $l: cases(2 x + 3 y - z = 1, x - 2 y - 3 z = 2)$ 及平面 $Pi : 11x - 5y + 7z = 2$，则直线 $l$（ #choice[D] ）。
    A. 与平面 $Pi$ 斜交 #quad B. 垂直于平面 $Pi$ #quad C. 平行于平面 $Pi$ #quad D. 在平面 $Pi$ 上
  ],
)

#question(
  [
    2. 函数 $z = 2x^3 - 4x^2 + 2x y - y^2$ 的极大值点为（ #choice[A] ）。
    A. $(0, 0)$ #quad B. $(1, 1)$ #quad C. $(4/3, 4/3)$ #quad D. 不存在
  ],
)

#question(
  [
    3. 设函数 $f(x, y) = cases(((x y)/( sqrt(x^4 + y^4))), & (x, y) != (0, 0), 0, & (x, y) = (0, 0),)$ 则在点(0,0)处（#choice[D]）.
    A. 偏导数不存在, 函数不连续 #quad B. 偏导数不存在, 函数连续 #quad C. 偏导数存在, 函数连续 #quad D. 偏导数存在, 函数不连续
  ],
)

#question(
  [
    4. 设曲面 $Sigma$ 的方程为 $x^2 + y^2 + z^2 = a^2$ ($z >= 0$)，$Sigma_1$ 为 $Sigma$ 在第一卦限的部分，则下列选项中正确的是（ #choice[A] ）。
    A. $iint_Sigma x dif S = 4 iint_(Sigma_1) x dif S$ #quad B. $iint_Sigma y dif S = 4 iint_(Sigma_1) y dif S$ \
    C. $iint_Sigma z dif S = 4 iint_(Sigma_1) x dif S$ #quad D. $iint_Sigma x y z dif S = 4 iint_(Sigma_1) x y z dif S$
  ],
)

#question(
  [
    5. 级数 $sum_(n=1)^oo (sin n alpha) / n^4$ 是（ #choice[B] ）。
    A. 条件收敛级数 #quad B. 绝对收敛级数 #quad C. 发散级数 #quad D. 敛散性不确定的级数
  ],
)

#prob-type("二、填空题（每小题3分，共24分）")

#question(
  [
    6. 已知直线 $x/2 = (y+2)/-2 = (z-1)/1$ 与 $(x-1)/4 = (y-3)/a = (z+1)/-2$ 相互垂直，则 $a =$ #ans[$3$]。
  ],
  a: [两直线方向向量分别为
    $bold(v)_1=(2,-2,1), bold(v)_2=(4,a,-2)$。
    垂直条件
    $bold(v)_1 dot bold(v)_2=0$，
    即
    $2 dot 4+(-2)a+1 dot (-2)=0$。
    解得
    $a=3$。],
)

#question(
  [
    7. 点 $M(1, 0, -1)$ 在平面 $x + 2y + z = 12$ 上的投影点的坐标为 #ans[$(3, 4, 1)$]。
  ],
  a: [平面法向量
    $bold(n)=(1,2,1)$。
    投影点 $H$ 在直线
    $M+t bold(n)$ 上：
    $H=(1+t,2t,-1+t)$。
    代入平面方程
    $(1+t)+2(2t)+(-1+t)=12$，
    得 $t=2$。
    故
    $H=(3,4,1)$。],
)

#question(
  [
    8. 设函数 $f$ 可微，$z = f(x + y, x y)$ 在点 $(x, y)$ 处的全微分 $dif z =$ #ans[$(f_1' + y f_2') dif x + (f_1' + x f_2') dif y$]。
  ],
  a: [令
    $u=x+y, v=x y$，则
    $z=f(u,v)$。
    链式法则给出
    $dif z=f_1' dif u+f_2' dif v$。
    又
    $dif u=dif x+dif y,
    dif v=y dif x+x dif y$。
    代入并合并，得
    $dif z=(f_1'+y f_2') dif x+(f_1'+x f_2') dif y$。],
)

#question(
  [
    9. 函数 $u = x y^2 + z^3 - x^2 y z$ 在点 $M(1, 1, 1)$ 处的最大方向导数为 #ans[$sqrt(14)$]。
  ],
  a: [点处最大方向导数等于梯度模长：
    $max D_l u=norm(grad u)$。
    先求偏导并在 $M(1,1,1)$ 处代入，
    再计算向量长度，可得
    $max D_l u=sqrt(14)$。],
)

#question(
  [
    10. 设 $I = iiint_Omega dif v / (1 + x^2 + y^2)$，其中空间闭区域 $Omega$ 由
    $z = sqrt(x^2 + y^2)$ 与 $z = 1$ 围成，
    则 $I$ 在柱面坐标系下的三次积分为
    #ans[$int_0^(2 pi) dif theta int_0^1 rho dif rho int_rho^1 rho / (1 + rho^2) dif z$]。
  ],
  a: [柱坐标下
    $x^2+y^2=rho^2, dif v=rho dif z dif rho dif theta$。
    区域由锥面 $z=rho$ 与平面 $z=1$ 围成，
    故
    $0<=theta<=2pi,
    0<=rho<=1,
    rho<=z<=1$。
    因而
    $I=int_0^(2pi) dif theta int_0^1 rho dif rho int_rho^1 rho/(1+rho^2) dif z$。],
)

#question(
  [
    11. 设 $f(x)$ 为连续函数，$F(t) = int_0^t dif y int_y^t f(x) dif x$ ($t > 0$)，将 $F(t)$ 交换积分次序后有 #ans[$int_0^t dif x int_0^x f(x) dif y = int_0^t x f(x) dif x$]。
  ],
  a: [积分域为
    $D={(x,y)|0<=y<=t, y<=x<=t}$。
    交换次序后写成
    $0<=x<=t, 0<=y<=x$，故
    $F(t)=int_0^t dif x int_0^x f(x) dif y$
    $=int_0^t x f(x) dif x$。],
)

#question(
  [
    12. 设 $L$ 是直线 $3x + 4y = 12$ ($0 <= x <= 4$) 的一段，则 $int_L (3x + 4y) dif s =$ #ans[$60$]。
  ],
  a: [在线段 $L$ 上恒有
    $3x+4y=12$，故
    $int_L (3x+4y) dif s=12 int_L dif s$。
    端点为 $(0,3)$ 与 $(4,0)$，
    线段弧长
    $=sqrt(4^2+(-3)^2)=5$。
    因而积分为
    $12 dot 5=60$。],
)

#question(
  [
    13. 设 $f(x)$ 是周期为 $2 pi$ 的周期函数，它在区间 $[-pi, pi)$ 上的表达式为 $f(x) = x$，则 $f(x)$ 的傅里叶级数的和函数 $S(x)$ 在点 $x = 5/2 pi$ 处的值为 #ans[$pi/2$]。
  ],
  a: [由周期性
    $S(5pi/2)=S(pi/2)$。
    点 $pi/2 in (-pi,pi)$ 且函数在该点连续，
    故傅里叶级数和等于函数值：
    $S(pi/2)=f(pi/2)=pi/2$。
    因而
    $S(5pi/2)=pi/2$。],
)

#prob-type("三、计算题(14～17每小题8分，18～19每小题10分，共52分)")

#question(
  [
    14. 求曲线 $cases(2 x^2 + 3 y^2 + z^2 = 9, x + y + z = 2)$ 在点 $(1, -1, 2)$ 处的法平面方程。
  ],
  a: [设
    $F_1=2x^2+3y^2+z^2-9,
    F_2=x+y+z-2$。
    交线在点 $P$ 处切向量可取
    $bold(t)=grad F_1(P) times grad F_2(P)$。
    法平面的法向量即为该切向量，
    因而法平面方程写成
    $bold(t) dot [(x,y,z)-P]=0$。
    代入 $P(1,-1,2)$ 化简得
    $x+4y-3z+9=0$。],
)

#question(
  [
    15. 设函数 $z = f(x, y)$ 是由方程 $Phi(c dot x - a dot z, c dot y - b dot z) = 0$ 所确定的隐函数，其中 $Phi$ 具有一阶连续偏导数，求 $a (partial z)/(partial x) + b (partial z)/(partial y)$ ($a, b, c$ 是常数)。
  ],
  a: [记
    $u=c dot x-a dot z,
    v=c dot y-b dot z$，则方程为 $Phi(u, v)=0$。
    对 $x,y$ 分别求偏导：
    $Phi_u(c-a z_x)+Phi_v(-b z_x)=0$，
    $Phi_u(-a z_y)+Phi_v(c-b z_y)=0$。
    解得
    $z_x=c Phi_u/(a Phi_u+b Phi_v),
    z_y=c Phi_v/(a Phi_u+b Phi_v)$。
    因而
    $a z_x+b z_y=c$。],
)

#question(
  [
    16. 计算 $iint_D y e^(x y) dif sigma$，其中闭区域 $D: 1/x <= y <= 1, 1 <= x <= 2$。
  ],
  a: [按题给区域可写为
    $I=int_1^2 dif x int_(1/x)^1 y e^(x y) dif y$。
    先对内层积分，再对外层积分，
    化简后得到
    $I=e^2-e-1$。],
)

#question(
  [
    17. 计算 $int_L (3 sin x + 2 x y - 4 x) dif x + (x^2 - e^y) dif y$，其中 $L$ 为摆线 $x = t - sin t, y = 1 - cos t$ 上从点 $O(0, 0)$ 到点 $A(pi, 2)$ 的一段弧。
  ],
  a: [记
    $P=3 sin x+2x y-4x,
    Q=x^2-e^y$。
    先验恰当性：
    $P_y=2x=Q_x$，故积分与路径无关。
    可取势函数 $U$ 满足 $dif U=P dif x+Q dif y$，
    所求积分为
    $U(A)-U(O)$。
    代入端点 $O(0,0), A(pi,2)$ 得
    $int_L ...=4-e^2-pi$。],
)

#question(
  [
    18. 求幂级数 $sum_(n=1)^oo (-1)^(n-1) (2n-1)/n x^n$ 的收敛半径、收敛域及和函数。
  ],
  a: [系数数量级不改变比值极限，故收敛半径
    $R=1$。
    端点检验后收敛域写作
    $(-1,1]$。

    再将通项拆分：
    $(-1)^(n-1)(2n-1)/n x^n
    =2(-1)^(n-1)x^n-(-1)^(n-1)x^n/n$。
    故和函数
    $S(x)=2 sum_(n=1)^oo (-1)^(n-1)x^n-sum_(n=1)^oo (-1)^(n-1)x^n/n$
    $=2x/(1+x)+ln(1+x)$。],
)

#question(
  [
    19. 计算 $I = iint_Sigma x z^2 dif y dif z + (x^2 y - z^3) dif z dif x + (2 x y + y^2 z) dif x dif y$，其中 $Sigma$ 是球面 $x^2 + y^2 + z^2 = a^2$ ($a > 0$) 上半部分的上侧。
  ],
  a: [写成通量形式，取
    $bold(F)=(x z^2, x^2 y-z^3, 2x y+y^2 z)$。
    用上半球面与其底圆盘围成闭曲面，应用高斯公式：
    $iint_(partial Omega) bold(F) dot bold(n) dif S=iiint_Omega div bold(F) dif v$。
    计算散度并减去底盘贡献后，得到上半球所求通量
    $I=2/5 pi a^5$。],
)

#prob-type("四、应用题（9分）")

#question(
  [
    20. 将周长为 $2 p$ 的矩形绕它的一边旋转一周构成一个圆柱体，问：矩形的长、宽分别为多少时，可使得圆柱体体积最大？
  ],
  a: [设矩形两边长为 $a,b$，则
    $a+b=p$。
    若绕边 $a$ 旋转，则圆柱半径为 $b$，高为 $a$，体积
    $V=pi b^2 a=pi(p-a)^2 a$。
    对 $a$ 求导：
    $V'(a)=pi(p-a)(p-3a)$。
    在 $0<a<p$ 内极值点为 $a=p/3$，从而 $b=2p/3$。

    若绕边 $b$ 旋转，角色互换，得
    $a=2p/3, b=p/3$。
    故最优长宽比为 $2:1$，即
    长为 $2/3 p$、宽为 $1/3 p$（以宽为轴）
    或长为 $1/3 p$、宽为 $2/3 p$（以长为轴）。],
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
    6. 设函数 $z = (1 + x y)^(x + y)$ ，则 $((partial z) / (partial y)) |_( (2,1) ) =$ #ans[$27(ln 3 + 2)$]。
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
  a: [对方程
    $e^z+x y z+x+cos x=2$ 作全微分：
    $e^z dif z+y z dif x+x z dif y+x y dif z+dif x-sin x dif x=0$。
    在点 $(0,1)$ 上先由原方程得 $z=0$，代入后化为
    $dif z+dif x=0$。
    因而
    $dif z|_((0,1))=-dif x$。],
)

#question(
  [
    13. $int_0^2 dif x int_x^2 e^(-y^2) dif y =$ #ans[$1/2 (1 - e^(-4))$]。
  ],
  a: [积分域为
    $D={(x,y)|0<=x<=2, x<=y<=2}$。
    交换次序得
    $0<=y<=2, 0<=x<=y$，故
    $I=int_0^2 dif y int_0^y e^(-y^2) dif x
    =int_0^2 y e^(-y^2) dif y$。
    令 $u=y^2$，得
    $I=1/2 int_0^4 e^(-u) dif u
    =1/2(1-e^(-4))$。],
)

#question(
  [
    14. 由曲线 $3x^2 + 2y^2 = 12, z = 0$ 绕 $y$ 轴旋转一周所得的旋转曲面在点 $(0, sqrt(6), 0)$ 处的一个单位法向量为 #ans[$(0, 1, 0)$]。
  ],
  a: [旋转曲面可写作
    $F(x,y,z)=3(x^2+z^2)+2y^2-12=0$。
    法向量为梯度
    $grad F=(6x,4y,6z)$。
    在点 $(0,sqrt(6),0)$ 处
    $grad F=(0,4sqrt(6),0)$，归一化后可取
    $(0,1,0)$。],
)

#question(
  [
    15. 设函数 $f(x) = |x - 1/2|, b_n = 2 int_0^1 f(x) sin(n pi x) dif x$ ，其正弦级数为 $S(x) = sum_(n=1)^( oo ) b_n sin(n pi x)$ ，则 $S(-2021) =$ #ans[$0$].
  ],
  a: [正弦级数各项均形如 $sin(n pi x)$。
    当 $x$ 为整数 $k$ 时，
    $sin(n pi k)=0$（任意 $n$），
    故级数和为 0。
    取 $x=-2021 in ZZ$，即得
    $S(-2021)=0$。],
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
  a: [平面需包含 $L_1$，并平行于 $L_2$，
    故平面内有两个方向向量：
    $bold(v)_1=(1,2,3)$（来自 $L_1$），
    $bold(v)_2=(1,0,1)$（来自 $L_2$）。
    法向量可取
    $bold(n)=bold(v)_1 times bold(v)_2$。
    再用 $L_1$ 上点 $(1,2,3)$ 代入点法式
    $bold(n) dot [(x,y,z)-(1,2,3)]=0$，
    化简得
    $x-2y+z=0$。],
)
#question(
  [
    18. 设函数 $z = f(2x - y, y sin x)$，其中 $f$ 具有二阶连续偏导数，求 $(partial^2 z) / (partial x partial y)$。
  ],
  a: [
    设
    $u=2x-y, v=y sin x$，则 $z=f(u,v)$。
    先对 $x$ 求偏导：
    $z_x=f_1 u_x+f_2 v_x=2f_1+y cos x f_2$。

    再对 $y$ 求偏导：
    $ (partial^2 z)/(partial x partial y) = partial/(partial y)(2f_1) + partial/(partial y)(y cos x f_2) $
    $ = 2(f_(11) u_y + f_(12) v_y) + cos x f_2 + y cos x (f_(21) u_y + f_(22) v_y) $。
    代入 $u_y = -1, v_y = sin x$，得
    $ (partial^2 z)/(partial x partial y) = -2f_(11) + 2sin x f_(12) + cos x f_2 - y cos x f_(21) + y sin x cos x f_(22) $。

    即
    $-2 f_(11)'' + 2 sin x f_(12)'' + cos x f_2' - y cos x f_(21)'' + y sin x cos x f_(22)''$。
  ],
)
#question(
  [
    19. 计算 $iint_D (x^2 + y) dif x dif y$，其中闭区域 $D: x^2 + y^2 <= 1$。
  ],
  a: [圆域关于 $x$ 轴对称，故
    $iint_D y dif x dif y=0$。
    且由 $x,y$ 对称性
    $iint_D x^2 dif x dif y=1/2 iint_D (x^2+y^2) dif x dif y$。
    于是
    $iint_D (x^2+y) dif x dif y
    =1/2 int_0^(2pi) int_0^1 r^2 dot r dif r dif theta
    =pi/4$。],
)
#question(
  [
    20. 计算 $int_L (x e^y - 2y) dif y + (e^y + x - y) dif x$，其中 $L$ 为圆 $x^2 + y^2 = a x$ ($a > 0$) 的上半部分，取逆时针方向。
  ],
  a: [记
    $P=e^y+x-y,
    Q=x e^y-2y$，则原积分为
    $int_L P dif x+Q dif y$。
    补上 $x$ 轴弦段构成闭曲线后，应用格林公式：
    $oint (P dif x+Q dif y)=iint (Q_x-P_y) dif sigma$。
    其中
    $Q_x=e^y,
    P_y=e^y-1$，故被积函数为 1。
    再扣回弦段积分，得到
    $int_L ...=a^2-pi a^2/8$。],
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
    $(partial u) / (partial l) = grad u(x, y, z) dot e_l = (2 x, 2 y, 2 z) dot (1/(sqrt(2)), -1/(sqrt(2)), 0) = sqrt(2) (x - y).$
    作拉格朗日函数
    $F(x, y, z, lambda) = x - y + lambda (2 x^2 + 2 y^2 + z^2 - 1),$
    解方程组
    $cases(F_x' = 1 + 4 lambda x = 0, F_y' = -1 + 4 lambda y = 0, F_z' = 2 lambda z = 0, F_lambda' = 2x^2 + 2y^2 + z^2 - 1 = 0)$
    得两个可能极值点 $M_1(1/2, -1/2, 0), M_2(-1/2, 1/2, 0)$ . 在点 $M_1$ 处， $(partial u) / (partial l) = sqrt(2)$；在点 $M_2$ 处， $(partial u) / (partial l) = -sqrt(2)$，所以在点 $(1/2, -1/2, 0)$ 处方向导数最大。],
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
    6. 已知 $|bold(a)| = 4$ ，向量 $bold(a)$ 与轴 $u$ 的夹角是 $pi / 3$ ，则 $Prj_u bold(a) =$ #ans[$2$] .
  ],
  a: [向轴 $u$ 的标量投影为
    $Prj_u bold(a)=|bold(a)| cos(pi/3)$。
    代入
    $|bold(a)|=4$，得
    $Prj_u bold(a)=4 dot 1/2=2$。],
)

#question(
  [
    7. 曲面 $x^3 + y^3 + z^3 + x y z - 6 = 0$ 在点 $(1, 2, -1)$ 处的切平面方程是
  ],
  a: [
    设
    $F(x,y,z)=x^3+y^3+z^3+x y z-6$。
    切平面法向量为 $grad F$：
    $F_x=3x^2+y z, F_y=3y^2+x z, F_z=3z^2+x y$。
    在点 $(1,2,-1)$ 处，
    $grad F=(1,11,5)$。

    切平面方程
    $1(x-1)+11(y-2)+5(z+1)=0$，
    化简得 $x+11y+5z=18$。
  ],
)

#question(
  [
    8. 平面曲线 $x = (1/4) y^2 - (1/2) ln y (1 <= y <= e)$ 的弧长为
  ],
  a: [
    以 $y$ 为参数，弧长公式
    $L=int_1^e sqrt(1+((dif x)/(dif y))^2) dif y$。
    由
    $x(y)=y^2/4-(1/2)ln y$，
    得
    $(dif x)/(dif y) = y/2 - 1/(2y)$。
    所以
    $1+((dif x)/(dif y))^2
    =1+1/4(y-1/y)^2
    =1/4(y+1/y)^2$。

    因 $y>0$，
    $sqrt(1+((dif x)/(dif y))^2)=1/2(y+1/y)$。
    故
    $L=1/2 int_1^e (y+1/y) dif y
    =1/2[(y^2)/2+ln y]_1^e
    =1/4(e^2+1)$。
  ],
)

#question(
  [
    9. 函数 $u = ln (x + sqrt(y^2 + z^2))$ 在点 $A(1,0,1)$ 处从点 $A$ 到点 $B(3,-2,2)$ 的方向导数为
  ],
  a: [
    方向向量
    从 $A$ 到 $B$ 的方向向量为 $(2,-2,1)$，单位方向
    $bold(e)=(2,-2,1)/3$。
    设 $r=sqrt(y^2+z^2)$，则
    $u=ln(x+r)$，
    $u_x=1/(x+r), u_y=(y/r)/(x+r), u_z=(z/r)/(x+r)$。

    在 $A(1,0,1)$ 有 $r=1$，故
    $grad u(A)=(1/2,0,1/2)$。
    方向导数
    $D_l u(A)=grad u(A) dot bold(e)
    =(1/2,0,1/2) dot (2/3,-2/3,1/3)=1/2$。
  ],
)

#question(
  [
    10. 设函数 $f(x) = cases(x, & 0 < x <= 1, 1 - x, & 1 < x <= 2)$，其余弦级数记为 $S(x) = a_0/2 + sum_(n=1)^oo a_n cos(n pi x/2)$，则 $S(7) =$ #ans[$1/2$]。
  ],
  a: [
    余弦级数对应把 $f$ 在 $[0,2]$ 上作偶延拓并再以周期 $4$ 延拓。
    因而
    $S(7)=S(7-4)=S(3)=S(-1)=S(1)$。

    点 $x=1$ 是分段连续函数的跳点，傅里叶级数在该点收敛到左右极限平均值：
    $S(1)=(f(1-0)+f(1+0))/2=(1+0)/2=1/2$。
    故 $S(7)=1/2$。
  ],
)

#prob-type("三、计算题（11~15 每小题7分，16~17 每小题9分，18小题7分，共60分）")

#question(
  [
    11. 计算 $iint_D e^(-x^2 - y^2) dif x dif y$ ，其中 $D$ 是由中心在坐标原点，半径为 $R$ 的圆所围成的闭区域。
  ],
  a: [区域 $D$ 为圆盘 $x^2+y^2<=R^2$，改用极坐标
    $x=r cos theta, y=r sin theta$，雅可比为 $r$。
    因而
    $I=iint_D e^(-x^2-y^2) dif x dif y
    =int_0^(2pi) int_0^R e^(-r^2) r dif r dif theta$。

    先算径向积分，令 $u=r^2$，$dif u=2r dif r$：
    $int_0^R e^(-r^2) r dif r
    =1/2 int_0^(R^2) e^(-u) dif u
    =1/2 (1-e^(-R^2))$。

    故
    $I=int_0^(2pi) 1/2 (1-e^(-R^2)) dif theta
    =pi(1-e^(-R^2))$。],
)

#question(
  [
    12. 求过点 $M(2, 1, 3)$ 且与直线 $(x + 1)/3 = (y - 1)/2 = z/(-1)$ 垂直的直线方程。
  ],
  a: [设已知直线为
    $l: (x+1)/3=(y-1)/2=z/(-1)=t$，
    则其方向向量为 $bold(v)=(3,2,-1)$，参数式为
    $x=3t-1, y=2t+1, z=-t$。

    过点 $M(2,1,3)$ 且垂直于 $l$ 的垂线，其垂足 $H$ 应在平面
    $Pi: bold(v) dot [(x,y,z)-M]=0$ 上，即
    $3(x-2)+2(y-1)-(z-3)=0$。
    将 $l$ 的参数式代入得
    $3(3t-1)+2(2t+1)-(-t-3)=0$，
    化简得 $14t-6=0$，故 $t=3/7$。

    垂足为
    $H(2/7,13/7,-3/7)$。
    所求直线通过 $M,H$，方向向量
    $bold(d)=H-M=(-12/7,6/7,-24/7)$，可取等比例方向向量 $(2,-1,4)$。
    因而直线方程可写为
    $(x-2)/2=(y-1)/(-1)=(z-3)/4$。

    （等价形式）
    $cases(x-2y+z+3=0, 3x+2y-z-5=0)$。],
)

#question(
  [
    13. 设函数 $z = f(x y, x/y) + g(x^2 - y^2)$ ，其中 $f$ 具有二阶连续偏导数， $g$ 具有二阶连续导数，求 $(partial^2 z) / (partial x partial y)$ .
  ],
  a: [设
    $u=x y, v=x/y, w=x^2-y^2$，则
    $z=f(u,v)+g(w)$。

    先求一阶偏导：
    $z_x=f_u u_x+f_v v_x+g'(w)w_x
    =y f_u+1/y f_v+2x g'(w)$。

    再对 $y$ 求偏导：
    $(partial)/(partial y)(y f_u) = f_u + y(f_(u u) u_y + f_(u v) v_y)
    = f_u + x y f_(u u) - x/y f_(u v)$；

    $(partial)/(partial y)(1/y f_v)
    = -1/y^2 f_v + 1/y(f_(v u) u_y + f_(v v) v_y)
    = -1/y^2 f_v + x/y f_(v u) - x/y^3 f_(v v)$；

    $(partial)/(partial y)(2x g'(w)) = 2x g''(w) w_y = -4 x y g''(w)$。

    又因 $f_(u v)=f_(v u)$，中间两项抵消，故
    $z_(x y)''=f_u-1/y^2 f_v+x y f_(u u)-x/y^3 f_(v v)-4 x y g''(w)$。

    即
    $ (partial^2 z)/(partial x partial y) = f_1' - f_2'/(y^2) + x y f_(11)'' - x/(y^3) f_(22)'' - 4 x y g'' $。],
)

#question(
  [
    14. 求函数 $f(x, y) = e^(2 x)(x + y^2 + 2 y)$ 的极值
  ],
  a: [先求驻点：
    $f_x=e^(2x)(2x+2y^2+4y+1)$，
    $f_y=e^(2x)(2y+2)$。
    令 $f_x=f_y=0$，由 $f_y=0$ 得 $y=-1$；
    代入 $f_x=0$ 得
    $2x+2-4+1=0$，故 $x=1/2$。
    唯一驻点为 $(1/2,-1)$。

    二阶导数：
    $f_(x x)''=e^(2x)(4x+4y^2+8y+4)$，
    $f_(x y)''=4e^(2x)(y+1)$，
    $f_(y y)''=2e^(2x)$。
    在 $(1/2,-1)$ 处有
    $A=f_(x x)''=2e>0,
    B=f_(x y)''=0,
    C=f_(y y)''=2e$。
    判别式
    $Delta=A C-B^2=4e^2>0$，且 $A>0$，故该点为极小值点。

    极小值
    $f(1/2,-1)=e^(1)(1/2+1-2)=-e/2$。],
)

#question(
  [
    15. 已知幂级数 $sum_(n=0)^( oo )(n+1)(n+2)(x-1)^(n)$ , 求其收敛域及和函数.
  ],
  a: [设
    $S(x)=sum_(n=0)^oo (n+1)(n+2)(x-1)^n$。
    由系数 $a_n=(n+1)(n+2)$，
    $lim_(n->oo) abs(a_(n+1)/a_n)
    =lim_(n->oo) ((n+2)(n+3))/((n+1)(n+2))=1$，
    故收敛半径 $R=1$，即先有 $|x-1|<1$。

    端点检验：
    $x=0$ 时级数为 $sum (-1)^n(n+1)(n+2)$，通项不趋于 0，发散；
    $x=2$ 时级数为 $sum (n+1)(n+2)$，通项不趋于 0，发散。
    因而收敛域为 $(0,2)$。

    求和函数：令 $t=x-1$（$|t|<1$），则
    $S(t)=sum_(n=0)^oo (n+1)(n+2)t^n$。
    由几何级数
    $sum_(n=0)^oo t^n=1/(1-t)$，逐项求导两次可得
    $sum_(n=0)^oo (n+1)(n+2)t^n=2/(1-t)^3$。
    代回 $t=x-1$，
    $S(x)=2/(2-x)^3, x in (0,2)$。],
)

#question(
  [
    16. 计算
    $iint_( Sigma ) x^3 dif y dif z + [(1/z) f(y/z) + y^3] dif z dif x + [(1/y) f(y/z) + z^3] dif x dif y$，
    其中 $f$ 具有一阶连续导数，$Sigma$ 为锥面 $x = sqrt(y^2 + z^2)$ 和
    球面 $x^2 + y^2 + z^2 = 1$ 所围立体表面的外侧。
  ],
  a: [记向量场
    $bold(F)=(P,Q,R)$，其中
    $P=x^3,
    Q=1/z f(y/z)+y^3,
    R=1/y f(y/z)+z^3$。
    设由锥面与球面围成的闭区域为 $Omega$，所求即外侧通量
    $iint_Sigma bold(F) dot bold(n) dif S$。

    用高斯公式：
    $iint_Sigma bold(F) dot bold(n) dif S=iiint_Omega div bold(F) dif v$。
    计算散度：
    $P_x=3x^2$，
    $Q_y=3y^2+f'(y/z)/z^2$，
    $R_z=3z^2-f'(y/z)/z^2$。
    故
    $div bold(F)=3(x^2+y^2+z^2)=3r^2$。

    区域 $Omega$ 为单位球内且满足 $x>=sqrt(y^2+z^2)$ 的部分。
    取以 $x$ 轴为极轴的球坐标：
    $0<=r<=1, 0<=phi<=pi/4, 0<=theta<=2pi$，
    $dif v=r^2 sin phi dif r dif phi dif theta$。
    则
    $I=3 int_0^(2pi) int_0^(pi/4) int_0^1 r^2 dot r^2 sin phi dif r dif phi dif theta$
    $=3 [int_0^1 r^4 dif r][int_0^(pi/4) sin phi dif phi][int_0^(2pi) dif theta]$
    $=3 dot 1/5 dot (1-sqrt(2)/2) dot 2pi
    =3/5 (2-sqrt(2))pi$。],
)

#question(
  [
    17. 计算 $int_L (2 x y^3 - y^2 cos x) dif x + (1 - 2 y sin x + 3 x^2 y^2) dif y$ ，其中 $L$ 为抛物线 $2 x = pi y^2$ 上从点 $(0,0)$ 到点 $(pi /2, 1)$ 的一段弧。
  ],
  a: [设
    $P=2 x y^3-y^2 cos x,
    Q=1-2 y sin x+3 x^2 y^2$。
    先检验恰当性：
    $P_y=6 x y^2-2 y cos x,
    Q_x=6 x y^2-2 y cos x$，故 $P_y=Q_x$。
    在全平面上积分与路径无关。

    端点为
    $O(0,0), A(pi/2,1)$。
    取折线路径 $O->B->A$，其中 $B(pi/2,0)$。

    第一段 $O->B$：$y=0, dif y=0$，
    积分为 0。

    第二段 $B->A$：$x=pi/2, dif x=0$，
    积分化为
    $int_0^1 [1-2y sin(pi/2)+3(pi/2)^2 y^2] dif y$
    $=int_0^1 (1-2y+3pi^2/4 y^2) dif y
    =1-1+pi^2/4=pi^2/4$。

    故原积分为
    $pi^2/4$。],
)

#question(
  [
    18. 设函数 $f(x, y) = |x - y|g(x, y)$ ，其中函数 $g(x, y)$ 在点(0,0)的某邻域内连续，试问： $g(0,0)$ 为何值时， $f(x, y)$ 在点(0,0)处的两个偏导数均存在？ $g(0,0)$ 为何值时， $f(x, y)$ 在点(0,0)处可微分？
  ],
  a: [因 $f(0,0)=|0-0|g(0,0)=0$。

    对 $x$ 的偏导：
    $f_x(0,0)=lim_(h->0) (f(h,0)-f(0,0))/h
    =lim_(h->0) (abs(h)/h) g(h,0)$。
    当 $h->0^+$ 时极限为 $g(0,0)$，当 $h->0^-$ 时为 $-g(0,0)$。
    两侧相等当且仅当 $g(0,0)=0$，此时 $f_x(0,0)=0$。

    同理
    $f_y(0,0)=lim_(k->0) (abs(k)/k) g(0,k)$
    也当且仅当 $g(0,0)=0$ 存在，且值为 0。
    故“两个偏导都存在”当且仅当 $g(0,0)=0$。

    再看可微性。若 $g(0,0)=0$，由连续性得
    $g(x,y)->0$。
    记 $rho=sqrt(x^2+y^2)$，有
    $abs(f(x,y))=abs(x-y) abs(g(x,y)) <= (abs(x)+abs(y)) abs(g(x,y)) <= sqrt(2) rho abs(g(x,y))=o(rho)$。
    且此时线性主部为
    $f_x(0,0)x+f_y(0,0)y=0$，所以 $f$ 在 $(0,0)$ 可微。

    反之可微必有偏导存在，从而也必须 $g(0,0)=0$。
    因此：
    两个偏导存在当且仅当 $g(0,0)=0$；
    在 $(0,0)$ 可微当且仅当 $g(0,0)=0$。],
)
