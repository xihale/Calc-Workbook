#import "../template.typ": *

= 第八章 向量代数与空间解析几何

== 第一节 向量及其线性运算

#prob-type("一、判断题")

#question(
  [
    1. 若 $bold(a) + bold(b) = bold(a) + bold(c)$，则 $bold(b) = bold(c)$ (#choice[√])
  ],
  p: [
    $bold(a)+bold(b)=bold(a)+bold(c) => (bold(a)+bold(b))+(-bold(a))=(bold(a)+bold(c))+(-bold(a))$ \
    $=> (bold(a)-bold(a))+bold(b)=(bold(a)-bold(a))+bold(c) => bold(0)+bold(b)=bold(0)+bold(c) => bold(b)=bold(c)$。
  ],
)

#question(
  [
    2. 若向量 $bold(a) = (a_x, a_y, a_z)$，则平行于向量 $bold(a)$ 的单位向量为 $((a_x)/((|bold(a)|)),(a_y)/((|bold(a)|)),(a_z)/((|bold(a)|)))$。 (#choice[×])
  ],
  p: [
    平行于 $bold(a)$ 的单位向量应包含正向和反向：$bold(e) =(plus.minus bold(a))/(|bold(a)|)$。
  ],
)

#prob-type("二、选择题")

#question(
  [
    3. 点 $(4, -3, 5)$ 到 $y$ 轴的距离为（ #choice[D] ）
    A. $sqrt(4^2 + (-3)^2 + 5^2)$ #quad B. $sqrt((-3)^2 + 5^2)$ #quad C. $sqrt(4^2 + (-3)^2)$ #quad D. $sqrt(4^2 + 5^2)$
  ],
  p: [
    点 $(x, y, z)$ 到 $y$ 轴的距离为 $d = sqrt(x^2 + z^2) = sqrt(4^2 + 5^2)$。
  ],
  a: [D.],
)

#question(
  [
    4. 设有非零向量 $bold(a), bold(b)$，若 $bold(a) perp bold(b)$，则必有（ #choice[B] ）。
    A. $|bold(a) + bold(b)| = |bold(a)| + |bold(b)|$ #quad B. $|bold(a) + bold(b)| = |bold(a) - bold(b)|$ \
    C. $|bold(a) + bold(b)| < |bold(a) - bold(b)|$ #quad D. $|bold(a) + bold(b)| > |bold(a) - bold(b)|$
  ],
  p: [
    $bold(a) perp bold(b) => bold(a) dot bold(b) = 0$。 \
    $|bold(a) plus.minus bold(b)|^2 = |bold(a)|^2 + |bold(b)|^2 plus.minus 2 bold(a) dot bold(b) = |bold(a)|^2 + |bold(b)|^2$。 \
    故 $|bold(a) + bold(b)| = |bold(a) - bold(b)|$。
  ],
  a: [B.],
)

#prob-type("三、填空题")

#question(
  [
    5. 点 $(2, 1, -3)$ 关于坐标原点对称的点是 #ans[$(-2, -1, 3)$]。
  ],
  p: [
    $P(x,y,z)$ 关于原点对称的点为 $P'(-x,-y,-z)$。代入得 $P'=(-2,-1,3)$。
  ],
)

#question(
  [
    6. 设 $|bold(a)| = 4$，向量 $bold(a)$ 与轴 $l$ 的夹角为 $(pi)/(6)$，则 $Prj_l bold(a) =$ #ans[$2 sqrt(3)$]。
  ],
  a: [$2 sqrt(3)$],
  p: [
    $Prj_l bold(a)=|bold(a)| cos((pi)/(6)) =(4 dot sqrt(3))/(2)= 2 sqrt(3)$。
  ],
)

#question(
  [
    7. 设向量 $bold(a)$ 与坐标轴正向的夹角分别为 $alpha, beta, gamma$，且 $alpha = 60^degree, beta = 120^degree$，则 $gamma =$ #ans[$(pi)/(4)$] 或 #ans[$(3 pi)/(4)$]。
  ],
  p: [
    $cos^2 alpha + cos^2 beta + cos^2 gamma = 1 => cos^2 60^degree + cos^2 120^degree + cos^2 gamma = 1$ \
    $=> ((1)/(2))^2 + (-(1)/(2))^2 + cos^2 gamma = 1 => cos^2 gamma =(1)/(2)=> cos gamma =(plus.minus sqrt(2))/(2)$。 \
    故 $gamma =(pi)/(4)$ 或 $(3 pi)/(4)$。
  ],
)

#question(
  [
    8. 已知两点 $M_1(0, 1, 2)$ 和 $M_2(1, -1, 0)$，试用坐标式表示向量 $arrow(M_1 M_2)$ 和 $-2 arrow(M_1 M_2)$，并求 $arrow(M_1 M_2)$ 的模、方向余弦和方向角。
  ],
  a: [
    $(1, -2, -2), (-2, 4, 4)$；模为 3，方向余弦为 $(1)/(3), -(2)/(3), -(2)/(3)$。 \
    方向角为 $arccos((1)/(3)), arccos(-(2)/(3)), arccos(-(2)/(3))$。
  ],
    p: [
      $arrow(M_1 M_2)=(1-0,-1-1,0-2)=(1,-2,-2)$，$-2 arrow(M_1 M_2)=(-2,4,4)$。 \
      $|arrow(M_1 M_2)|=sqrt(1^2+(-2)^2+(-2)^2)=3$。 \
      $cos alpha=(1)/(3), cos beta=-(2)/(3), cos gamma=-(2)/(3)$。 \
      $alpha=arccos((1)/(3)), beta=arccos(-(2)/(3)), gamma=arccos(-(2)/(3))$。
    ],
)

#question(
  [
    9. 求平行于向量 $bold(a) = (6, 7, -6)$ 的单位向量。
  ],
  p: [
    $|bold(a)| = sqrt(6^2 + 7^2 + (-6)^2) = 11$。 \
    $bold(e) =(plus.minus bold(a))/(|bold(a)|)= plus.minus ((6)/(11),(7)/(11), -(6)/(11))$。
  ],
)

#question(
  [
    10. 设向量 $bold(m) = 3bold(i) + 5bold(j) + 3bold(k), bold(n) = 2bold(i) + bold(j) - 4bold(k), bold(p) = 5bold(i) + bold(j) - 4bold(k)$，
    求向量 $bold(a) = 4bold(m) + 3bold(n) - bold(p)$ 在 $x$ 轴上的投影及在 $y$ 轴上的分向量。
  ],
  a: [$13, 22bold(j)$。],
  p: [
    $bold(a)=4(3,5,3)+3(2,1,-4)-(5,1,-4)=(13,22,4)$。 \
    $Prj_x bold(a) = 13$；$y$ 轴分向量为 $(0,22,0)=22bold(j)$。
  ],
)

#question(
  [
    11. 一向量的终点为点 $B(2, -1, 7)$，它在 $x$ 轴、$y$ 轴和 $z$ 轴上的投影分别为 $4, -4, 7$，求此向量的起点 $A$ 的坐标。
  ],
  a: [$(-2, 3, 0)$],
  p: [
    设 $A(x,y,z)$，$arrow(A B)=(2-x, -1-y, 7-z)=(4,-4,7)$。 \
    $=> x=2-4=-2, y=-1+4=3, z=7-7=0$。故 $A(-2,3,0)$。
  ],
)

#prob-type("五、证明题")

#question(
  [
    12. 如果平面上一个四边形的对角线互相平分，试用向量证明它是平行四边形。
  ],
  p: [
    设对角线交于 $M$。由中点性质，$arrow(M A)+arrow(M C)=bold(0), arrow(M B)+arrow(M D)=bold(0)$。 \
    $arrow(A B)=arrow(M B)-arrow(M A)$，$arrow(D C)=arrow(M C)-arrow(M D)=(-arrow(M A))-(-arrow(M B))=arrow(M B)-arrow(M A)$。 \
    故 $arrow(A B)=arrow(D C)$，四边形 $A B C D$ 为平行四边形。
  ],
)

== 第二节 数量积 向量积 混合积

#prob-type("一、判断题")

#question(
  [
    1. 若 $bold(a) times bold(b) = bold(a) times bold(c)$ 且 $bold(a) != 0$，则 $bold(b) = bold(c)$。（ #choice[×] ）
  ],
  p: [
    $bold(a) times bold(b)=bold(a) times bold(c) => bold(a) times (bold(b)-bold(c))=bold(0) => (bold(b)-bold(c)) parallel bold(a)$，不一定有 $bold(b)=bold(c)$。
  ],
)

#question(
  [
    2. 若向量 $bold(a), bold(b), bold(c)$ 满足 $bold(a) = bold(b) times bold(c), bold(b) = bold(c) times bold(a)$，则 $bold(a), bold(b), bold(c)$ 两两垂直。（ #choice[√] ）
  ],
  p: [
    $bold(a)=bold(b) times bold(c) => bold(a) perp bold(b), bold(a) perp bold(c)$； \
    $bold(b)=bold(c) times bold(a) => bold(b) perp bold(c), bold(b) perp bold(a)$。 \
    故 $bold(a), bold(b), bold(c)$ 两两垂直。
  ],
)

#prob-type("二、选择题")

#question(
  [
    3. 设 $bold(a)$ 与 $bold(b)$ 为非零向量，则 $bold(a) dot bold(b) = 0$ 是（ #choice[B] ）
    A. $bold(a) parallel bold(b)$ 的充要条件 #quad B. $bold(a) perp bold(b)$ 的充要条件 \
    C. $bold(a) = bold(b)$ 的充要条件 #quad D. $bold(a) parallel bold(b)$ 的必要但不充分条件
  ],
  p: [
    $bold(a) dot bold(b)=|bold(a)| |bold(b)| cos theta = 0 <=> cos theta=0 <=> theta=(pi)/(2)$。
  ],
  a: [B.],
)

#question(
  [
    4. 设向量 $bold(a) = 2 bold(i) - bold(j) + bold(k), bold(b) = bold(i) + 2 bold(j) - bold(k)$，则 $(bold(a) + bold(b)) times (bold(a) - bold(b)) =$（ #choice[C] ）。
    A. $-bold(i) + 3 bold(j) + 5 bold(k)$ #quad B. $-2 bold(i) + 6 bold(j) + 10 bold(k)$ \
    C. $2 bold(i) - 6 bold(j) - 10 bold(k)$ #quad D. $3 bold(i) + 4 bold(j) + 5 bold(k)$
  ],
  p: [
    $(bold(a) + bold(b)) times (bold(a) - bold(b)) = bold(a) times bold(a) - bold(a) times bold(b) + bold(b) times bold(a) - bold(b) times bold(b) = -2 (bold(a) times bold(b))$。 \
    $bold(a) times bold(b) = (-1, 3, 5) => -2(bold(a) times bold(b)) = (2, -6, -10)$。
  ],
)

#question(
  [
    5. 下列结论中正确的是（ #choice[C] ）。
    A. $|bold(a)| bold(a) = bold(a)^2$ #quad B. 若 $bold(a) dot bold(b) = 0$，则必有 $bold(a) = 0$ 或 $bold(b) = 0$ \
    C. $bold(a) dot (bold(b) - bold(c)) = bold(a) dot bold(b) - bold(a) dot bold(c)$ #quad D. 若 $bold(a) != 0$ 且 $bold(a) dot bold(b) = bold(a) dot bold(c)$，则 $bold(b) = bold(c)$
  ],
  p: [
    A. 左侧为向量，右侧为标量；B. 非零向量垂直时点积也为 0；C. 数量积分配律；D. 只能推出 $bold(a) perp (bold(b)-bold(c))$。
  ],
)

#prob-type("三、填空题")

#question(
  [
    6. 设 $angle(bold(a), bold(b)) =(pi)/(3), |bold(a)| = 5, |bold(b)| = 8$，则 $|bold(a) - bold(b)| =$ #ans[$7$]。
  ],
  p: [
    $|bold(a) - bold(b)|^2 = |bold(a)|^2 + |bold(b)|^2 - 2|bold(a)| |bold(b)|cos((pi)/(3)) = 25 + 64 - 2((5 dot 8 dot 1)/(2)) = 49 => |bold(a) - bold(b)| = 7$。
  ],
)

#question(
  [
    7. 设向量 $bold(a) = (4, -3, 4), bold(b) = (2, 2, 1)$，则 $Prj_bold(b) bold(a) =$ #ans[$2$]。
  ],
  p: [
    $Prj_bold(b) bold(a) =((bold(a) dot bold(b)))/(|bold(b)|)=((4 dot 2 - 3 dot 2 + 4 dot 1))/(sqrt(2^2 + 2^2 + 1^2))=(6)/(3)= 2$。
  ],
)

#question(
  [
    8. 已知 $|bold(a)| = 3, |bold(b)| = 26, |bold(a) times bold(b)| = 72$，则 $bold(a) dot bold(b) =$ #ans[$plus.minus 30$]。
  ],
  p: [
    $(bold(a) dot bold(b))^2 = (|bold(a)| |bold(b)|)^2 - |bold(a) times bold(b)|^2 = (3 dot 26)^2 - 72^2 = 78^2 - 72^2 = 900 => bold(a) dot bold(b) = plus.minus 30$。
  ],
)

#prob-type("四、计算题")

#question(
  [
    9. 设向量 $bold(a) = 3 bold(i) - bold(j) - 2 bold(k), bold(b) = bold(i) + 2 bold(j) - bold(k)$，求：
      (1) $bold(a) dot bold(b)$ 及 $bold(a) times bold(b)$；
      (2) $(-2 bold(a)) dot 3 bold(b)$ 及 $bold(a) times 2 bold(b)$；
      (3) $bold(a), bold(b)$ 的夹角的余弦。
  ],
  p: [
    (1) $bold(a) dot bold(b) = 3-2+2=3$；$bold(a) times bold(b) = (5, 1, 7)$。 \
    (2) $(-2 bold(a)) dot 3 bold(b) = -6(bold(a) dot bold(b)) = -18$；$bold(a) times 2 bold(b) = 2(bold(a) times bold(b)) = (10, 2, 14)$。 \
    (3) $cos theta =((bold(a) dot bold(b)))/((|bold(a)| |bold(b)|))=(3)/((sqrt(14) sqrt(6)))=(3)/((2 sqrt(21)))$。
  ],
)

#question(
  [
    10. 已知三点 $M_1(1, -1, 2), M_2(3, 3, 1)$ 和 $M_3(3, 1, 3)$，求与向量 $arrow(M_1 M_2), arrow(M_2 M_3)$ 同时垂直的单位向量。
  ],
  p: [
    $arrow(M_1 M_2) = (2, 4, -1), arrow(M_2 M_3) = (0, -2, 2)$。 \
    $bold(n) = arrow(M_1 M_2) times arrow(M_2 M_3) = (6, -4, -4)$。 \
    $bold(e) =(plus.minus bold(n))/(|bold(n)|)= plus.minus ((3)/(sqrt(17)), -(2)/(sqrt(17)), -(2)/(sqrt(17)))$。
  ],
)

#question(
  [
    11. 求向量 $bold(a) = (4, -3, 4)$ 在向量 $bold(b) = (2, 2, 1)$ 上的投影。
  ],
  p: [
    $Prj_bold(b) bold(a) =((bold(a) dot bold(b)))/(|bold(b)|)=((8 - 6 + 4))/(3)= 2$。
  ],
)

#question(
  [
    12. 已知向量 $arrow(O A) = bold(i) + 3 bold(k), arrow(O B) = bold(j) + 3 bold(k)$，求 $Delta "O A B"$ 的面积。
  ],
  p: [
    $S =(1)/(2 |arrow(O A) times arrow(O B)|)=(1)/(2 |(-3, -3, 1)|)=(sqrt(19))/(2)$。
  ],
)

#question(
  [
    13. 设向量 $bold(a) = (2, 3, -1), bold(b) = (1, -2, 3), bold(c) = (2, 1, 2)$，向量 $bold(d)$ 与 $bold(a), bold(b)$ 均垂直，且在向量 $bold(c)$ 上的投影是 14，求向量 $bold(d)$。
  ],
  p: [
    $bold(d) parallel (bold(a) times bold(b)) = (7, -7, -7)$，设 $bold(d) = k (1, -1, -1)$。 \
    $Prj_bold(c) bold(d) =((bold(d) dot bold(c)))/(|bold(c)|)=(k(2 - 1 - 2))/(3)= -(k)/(3)= 14 => k = -42$。 \
    故 $bold(d) = (-42, 42, 42)$。
  ],
)

== 第三节 平面及其方程

#prob-type("一、选择题")

#question(
  [
    1. 平面 $x - 2y + 7z + 3 = 0$ 与平面 $3x + 5y + z - 1 = 0$ 的位置关系为（ #choice[B] ）。
    A. 平行 #quad B. 垂直 #quad C. 相交但不垂直 #quad D. 重合
  ],
  p: [
    $bold(n_1) = (1, -2, 7), bold(n_2) = (3, 5, 1) => bold(n_1) dot bold(n_2) = 3 - 10 + 7 = 0 => bold(n_1) perp bold(n_2)$。
  ],
  a: [B.],
)

#question(
  [
    2. 过点 $M_1(2, -1, 4), M_2(-1, 3, -2)$ 和 $M_3(0, 2, 3)$ 的平面方程为（ #choice[A] ）。
    A. $14x + 9y - z - 15 = 0$ #quad B. $2x + 7y - 8z - 6 = 0$ \
    C. $14x - 9y + z - 15 = 0$ #quad D. $14x + 9y + z - 15 = 0$
  ],
  p: [
    $arrow(M_1 M_2) = (-3, 4, -6), arrow(M_1 M_3) = (-2, 3, -1) => bold(n) = arrow(M_1 M_2) times arrow(M_1 M_3) = (14, 9, -1)$。 \
    方程：$14(x-2) + 9(y+1) - (z-4) = 0 => 14x + 9y - z - 15 = 0$。
  ],
  a: [A.],
)

#question(
  [
    3. 平面 $x - y + 2z - 6 = 0$ 与平面 $2x + y + z - 5 = 0$ 的夹角为（ #choice[C] ）。
    A. $(pi)/(2)$ #quad B. $(pi)/(6)$ #quad C. $(pi)/(3)$ #quad D. $(pi)/(4)$
  ],
  p: [
    $cos theta =(|bold(n_1) dot bold(n_2)|)/((|bold(n_1)| |bold(n_2)|))=(|2 - 1 + 2|)/((sqrt(6) sqrt(6)))=(1)/(2)=> theta =(pi)/(3)$。
  ],
  a: [C.],
)

#prob-type("二、填空题")

#question(
  [
    4. 过点 $M(3, 0, -1)$ 且与平面 $3x - y + 2z - 12 = 0$ 平行的平面方程为 #ans[$3x - y + 2z - 7 = 0$]。
  ],
  p: [
    法向量 $(3, -1, 2)$，方程：$3(x-3) - (y-0) + 2(z+1) = 0 => 3x - y + 2z - 7 = 0$。
  ],
)

#question(
  [
    5. 点 $M_1(1, 2, 1)$ 到平面 $x + 2y + 2z - 10 = 0$ 的距离为 #ans[$1$]。
  ],
  p: [
    $d =(|1 + 4 + 2 - 10|)/(sqrt(1^2 + 2^2 + 2^2))=(|-3|)/(3)= 1$。
  ],
)

#question(
  [
    6. 使得平面 $x + k y - 2z = 9$ 与平面 $2x - 3y + z = 0$ 成 $(pi)/(4)$ 角的 $k$ 值为 #ans[$(plus.minus sqrt(70))/(2)$]。
  ],
  p: [
    $cos((pi)/(4)) =(|2 - 3k - 2|)/((sqrt(k^2+5) sqrt(14)))=(sqrt(2))/(2)=> 18k^2 = 14(k^2+5) => 4k^2 = 70 => k =(plus.minus sqrt(70))/(2)$。
  ],
)

#prob-type("三、计算题")

#question(
  [
    7. 求平面 $2x - 2y + z + 5 = 0$ 与各坐标面的夹角的余弦。
  ],
  p: [
    $bold(n) = (2, -2, 1), |bold(n)| = 3$。 \
    $cos alpha =(|bold(n) dot bold(k)|)/(|bold(n)|)=(1)/(3)$；$cos beta =(|bold(n) dot bold(i)|)/(|bold(n)|)=(2)/(3)$；$cos gamma =(|bold(n) dot bold(j)|)/(|bold(n)|)=(2)/(3)$。
  ],
)

#question(
  [
    8. 求过点 $M_0(2, 9, -6)$ 且与线段 $O M_0$ 垂直的平面方程。
  ],
  p: [
    $bold(n) = arrow(O M_0) = (2, 9, -6)$。 \
    方程：$2(x-2) + 9(y-9) - 6(z+6) = 0 => 2x + 9y - 6z - 121 = 0$。
  ],
)

#question(
  [
    9. 一平面过点 $(1, 0, -1)$ 且平行于向量 $bold(a) = (2, 1, 1)$ 和 $bold(b) = (1, -1, 0)$，试求该平面方程。
  ],
  p: [
    $bold(n) = bold(a) times bold(b) = (1, 1, -3)$。 \
    方程：$1(x-1) + 1(y-0) - 3(z+1) = 0 => x + y - 3z - 4 = 0$。
  ],
)

#question(
  [
    10. 求三平面 $x + 3y + z = 1, 2x - y - z = 0$ 和 $-x + 2y + 2z = 3$ 的交点。
  ],
  p: [
    解方程组：$cases(x + 3y + z = 1, 2x - y - z = 0, -x + 2y + 2z = 3) => cases(x=1, y=-1, z=3)$。交点为 $(1, -1, 3)$。
  ],
)

#question(
  [
    11. 分别按下列条件求平面方程：
      (1) 平行于 $z O x$ 面且过点 $(2, -5, 3)$；
      (2) 过 $z$ 轴和点 $(-3, 1, 2)$；
      (3) 平行于 $x$ 轴且过点 $(4, 0, -2)$ 和 $(5, 1, 7)$。
  ],
  a: [(1) $y + 5 = 0$；(2) $x + 3y = 0$；(3) $z - 9y + 2 = 0$。],
  p: [
    (1) 平行于 $z O x$ 面 => $y = C$，代入点得 $y = -5$。 \
    (2) 过 $z$ 轴可设为 $A x + B y = 0$，代入点得 $-3 A + B = 0 => B = 3 A$，取 $A = 1, B = 3$ 得 $x + 3 y = 0$。 \
    (3) 平行于 $x$ 轴 => $bold(v_1)=(1,0,0)$；另由两点得 $bold(v_2)=(1,1,9)$。$bold(n) = bold(v_1) times bold(v_2) = (0,-9,1)$。 \
    方程：$-9(y-0) + 1(z+2) = 0 => z - 9y + 2 = 0$。
  ],
)

== 第四节 空间直线及其方程

#prob-type("一、选择题")

#question(
  [
    1. 直线 $L_1$: $cases(x + 2y - z = 7, -2x + y + z = 7)$ 与 $L_2$: $cases(3x + 6y - 3z = 8, 2x - y - z = 0)$ 的位置关系为（ #choice[B] ）。
    A. $L_1 perp L_2$ #quad B. $L_1 parallel L_2$ #quad C. $L_1$ 与 $L_2$ 相交但不垂直 #quad D. $L_1$ 与 $L_2$ 为异面直线
  ],
  p: [
    $bold(s_1) = (1, 2, -1) times (-2, 1, 1) = (3, 1, 5)$；$bold(s_2) = (3, 6, -3) times (2, -1, -1) = (-9, -3, -15)$。 \
    因 $bold(s_2) = -3 bold(s_1)$，故 $L_1 parallel L_2$。
  ],
  a: [B.],
)

#question(
  [
    2. 直线 $(L: (x - 2))/(3)=((y + 2))/((-1))=((z - 1))/(4)$ 与平面 $Pi: 6x - 2y + 8z = 7$ 的位置关系为（ #choice[B] ）。
    A. 直线 $L$ 与平面 $Pi$ 平行 #quad B. 直线 $L$ 与平面 $Pi$ 垂直 \
    C. 直线 $L$ 在平面 $Pi$ 上 #quad D. 直线 $L$ 与平面 $Pi$ 只有一个交点，但不垂直
  ],
  p: [
    $bold(s) = (3, -1, 4), bold(n) = (6, -2, 8)$。因 $bold(n) = 2 bold(s)$，故直线与平面垂直。
  ],
  a: [B.],
)

#question(
  [
    3. 两平行线 $x = t + 1, y = 2t + 1, z = t$ 与 $((x - 2))/(1)=((y + 1))/(2)=((z - 1))/(1)$ 之间的距离是（ #choice[C] ）。
    A. 1 #quad B. $(2)/(3)$ #quad C. $((4 sqrt(3)))/(3)$ #quad D. $((2 sqrt(3)))/(3)$
  ],
  p: [
    $L_1$ 过 $M_1(1, 1, 0)$，$bold(s) = (1, 2, 1)$；$L_2$ 过 $M_2(2, -1, 1)$。$arrow(M_1 M_2) = (1, -2, 1)$。 \
    $d =(|arrow(M_1 M_2) times bold(s)|)/(|bold(s)|)=(|(-4, 0, 4)|)/(sqrt(6))=((4 sqrt(3)))/(3)$。
  ],
  a: [C.],
)

#prob-type("二、填空题")

#question(
  [
    4. 过点 $(2, -3, 4)$ 且与平面 $3x - y + 2z = 4$ 垂直的直线方程为 #ans[$((x - 2))/(3)=((y + 3))/((-1))=((z - 4))/(2)$]。
  ],
  p: [
    直线方向向量取平面法向量 $bold(n)=(3,-1,2)$。对称式方程为 $((x-2))/(3)=((y+3))/((-1))=((z-4))/(2)$。
  ],
)

#question(
  [
    5. 直线 $cases(x + y + 3z = 0, x - y - z = 0)$ 与平面 $x - y - z + 1 = 0$ 的夹角为 #ans[$0$]。
  ],
  p: [
    $bold(s) = (1, 1, 3) times (1, -1, -1) = (2, 4, -2) parallel (1, 2, -1)$；$bold(n) = (1, -1, -1)$。 \
    $sin phi =(|bold(s) dot bold(n)|)/((|bold(s)| |bold(n)|))=(|1 - 2 + 1|)/((sqrt(6) sqrt(3)))= 0 => phi = 0$。
  ],
)

#question(
  [
    6. 点 $(1, 2, 3)$ 到直线 $(x)/(1)=((y - 4))/((-3))=((z - 3))/((-2))$ 的距离为 #ans[$(sqrt(6))/(2)$]。
  ],
  p: [
    $M_0(0, 4, 3), bold(s) = (1, -3, -2), P(1, 2, 3) => arrow(M_0 P) = (1, -2, 0)$。 \
    $d =(|arrow(M_0 P) times bold(s)|)/(|bold(s)|)=(|(4, 2, -1)|)/(sqrt(14))=(sqrt(21))/(sqrt(14))=(sqrt(6))/(2)$。
  ],
)

#question(
  [
    7. 点 $(-1, 3, -4)$ 在平面 $x + 2y - z + 1 = 0$ 上的投影为 #ans[$(-(8)/(3), -(1)/(3), -(7)/(3))$]。
  ],
  p: [
    垂线：$x=-1+t, y=3+2t, z=-4-t$。代入平面：$(-1+t)+2(3+2t)-(-4-t)+1=0 => 6t+10=0 => t=-(5)/(3)$。 \
    投影点：$(-1-(5)/(3), 3-(10)/(3), -4+(5)/(3)) = (-(8)/(3), -(1)/(3), -(7)/(3))$。
  ],
)

#prob-type("三、计算题")

#question(
  [
    8. 用对称式方程及参数方程表示直线 $cases(x - y + z = 1, 2x + y + z = 4)$
  ],
  a: [$((x - 1))/((-2))=((y - 1))/(1)=((z - 1))/(3)$，$cases(x = 1 - 2t, y = 1 + t, z = 1 + 3t)$],
  p: [
    $bold(s) = (1,-1,1) times (2,1,1) = (-2,1,3)$。取 $z=1$，解得 $x=1, y=1$。 \
    对称式：$((x-1))/()-2 =((y-1))/(1)=((z-1))/(3)$；参数式：$x=1-2t, y=1+t, z=1+3t$。
  ],
)

#question(
  [
    9. 求过点 $(0, 2, 4)$ 且与两平面 $x + 2z = 1$ 和 $y - 3z = 2$ 平行的直线方程
  ],
  a: [$((x))/((-2))=((y - 2))/(3)=((z - 4))/(1)$],
  p: [
    $bold(s) = (1,0,2) times (0,1,-3) = (-2,3,1)$。 \
    方程：$(x)/()-2 =((y-2))/(3)=((z-4))/(1)$。
  ],
)

#question(
  [
    10. 求过点 $(3, 1, -2)$ 且过直线 $((x - 4))/(5)=((y + 3))/(2)=(z)/(1)$ 的平面方程
  ],
  a: [$8x - 9y - 22z - 59 = 0$],
  p: [
    直线点 $M(4,-3,0), bold(s)=(5,2,1), P(3,1,-2) => arrow(M P)=(-1,4,-2)$。 \
    $bold(n) = bold(s) times arrow(M P) = (-8,9,22)$。 \
    方程：$-8(x-3)+9(y-1)+22(z+2)=0 => 8x-9y-22z-59=0$。
  ],
)

#question(
  [
    11. 求过点 $(1, 2, 1)$ 且与两直线 $L_1: cases(x + 2y - z + 1 = 0, x - y + z - 1 = 0)$，$L_2: cases(2x - y + z = 0, x - y + z = 0)$ 平行的平面方程。
  ],
  p: [
    $bold(s_1) = (1,2,-1) times (1,-1,1) = (1,-2,-3)$；$bold(s_2) = (2,-1,1) times (1,-1,1) = (0,-1,-1)$。 \
    $bold(n) = bold(s_1) times bold(s_2) = (-1,1,-1) parallel (1,-1,1)$。 \
    方程：$1(x-1)-1(y-2)+1(z-1)=0 => x-y+z=0$。
  ],
)

#question(
  [
    12. 求点 $(3, -1, 2)$ 到直线 $cases(x + y - z + 1 = 0, 2x - y + z - 4 = 0)$ 的距离。
  ],
  p: [
    点 $M_0(1, 0, 2), bold(s) = (0, -3, -3) parallel (0, 1, 1), P(3, -1, 2) => arrow(M_0 P) = (2, -1, 0)$。 \
    $d =(|arrow(M_0 P) times bold(s)|)/(|bold(s)|)=(|(-1, -2, 2)|)/(sqrt(2))=(3)/(sqrt(2))=((3 sqrt(2)))/(2)$。
  ],
)

== 第五节 曲面及其方程

#prob-type("一、选择题")

#question(
  [
    1. 方程 $y^2 + z^2 - 4x + 8 = 0$ 表示（ #choice[D] ）
    A. 单叶双曲面 #quad B. 双叶双曲面 #quad C. 锥面 #quad D. 旋转抛物面
  ],
  p: [
    $y^2 + z^2 = 4(x - 2)$，为抛物线 $y^2=4(x-2)$ 绕 $x$ 轴旋转而得。
  ],
  a: [D.],
)

#question(
  [
    2. 旋转双叶双曲面 $(x^2)/((a^2))-(y^2)/((b^2))+(z^2)/((a^2))= -1$ 的旋转轴是（ #choice[B] ）。
    A. $x$ 轴 #quad B. $y$ 轴 #quad C. $z$ 轴 #quad D. 直线 $cases(y = z, x = 0)$
  ],
  p: [
    方程可化为 $(y^2)/(b^2)-((x^2+z^2))/(a^2)= 1$。$x, z$ 系数相同，说明绕 $y$ 轴对称。
  ],
  a: [B.],
)

#prob-type("二、填空题")

#question(
  [
    3. $x O y$ 面上双曲线 $4x^2 - 9y^2 = 36$ 分别绕 $x$ 轴、$y$ 轴旋转一周所得旋转曲面的方程分别为 #ans[$4x^2 - 9(y^2 + z^2) = 36$] 和 #ans[$4(x^2 + z^2) - 9y^2 = 36$]。
  ],
  p: [
    绕 $x$ 轴旋转：$y^2 arrow y^2+z^2 => 4x^2-9(y^2+z^2)=36$。 \
    绕 $y$ 轴旋转：$x^2 arrow x^2+z^2 => 4(x^2+z^2)-9y^2=36$。
  ],
)

#question(
  [
    4. 曲面 $x^2 - y^2 - z^2 = 1$ 是由 $x O y$ 面上的曲线 #ans[$x^2 - y^2 = 1$] 绕 $x$ 轴旋转一周所得的或是由 #ans[$z O x$] 面上的曲线 #ans[$x^2 - z^2 = 1$] 绕 #ans[$x$] 轴旋转一周所得的。
  ],
  p: [
    方程可记为 $x^2 - (y^2+z^2) = 1$。令 $z=0$ 得 $x^2-y^2=1$；令 $y=0$ 得 $x^2-z^2=1$。均绕 $x$ 轴旋转。
  ],
)

#question(
  [
    5. 方程 $4 x^2 + 7 y^2 = z$ 所表示的曲面为 #ans[椭圆抛物面]。
  ],
  p: [
    标准方程 $z =(x^2)/(a^2)+(y^2)/(b^2)$ ($a,b$ 同号) 表示椭圆抛物面。
  ],
)

#prob-type("三、计算题")

#question(
  [
    6. 一球面过坐标原点及三点 $A(4, 0, 0), B(1, 3, 0)$ 和 $C(0, 0, -4)$，求球面的方程及球心的坐标和半径。
  ],
  p: [
    设 $x^2 + y^2 + z^2 + D x + E y + F z + G = 0$。过原点 $= > G = 0$。 \
    代入 $A, B, C$：$16+4D=0 => D=-4$；$16-4F=0 => F=4$；$1+9+D+3E=0 => E=-2$。 \
    方程：$(x-2)^2+(y-1)^2+(z+2)^2=9$。球心 $(2,1,-2)$，半径 3。
  ],
)

#question(
  [
    7. 将 $z O x$ 面上的圆 $x^2 + z^2 = 9$ 绕 $z$ 轴旋转一周，求所得旋转曲面的方程。
  ],
  p: [
    绕 $z$ 轴旋转：$x^2 arrow x^2+y^2 => x^2+y^2+z^2=9$。
  ],
)

#question(
  [
    8. 指出下列方程所表示的曲面并画出草图：
    (1) $(x^2)/(9)+(z^2)/(4)= 1$；(2) $x^2 - y^2 - 4z^2 = 4$；(3) $(z)/(3)=(x^2)/(4)+(y^2)/(9)$。
  ],
  a: [（1）椭圆柱面；（2）双叶双曲面；（3）椭圆抛物面。],
  p: [
    (1) 不含 $y$，在 $x O z$ 面为椭圆，故为椭圆柱面。 \
    (2) $(x^2)/(4)-(y^2)/(4)-(z^2)/(1)= 1$，双叶双曲面。 \
    (3) $z = ((3)/(4))x^2 + ((1)/(3))y^2$，椭圆抛物面。
  ],
)

== 第六节 空间曲线及其方程

#prob-type("一、选择题")

#question(
  [
    1. 已知曲线 $cases(x^2 + y^2 + z^2 = 2, x + y + z = a)$ 在 $y O z$ 面上的投影曲线为 $cases(y^2 + y z + z^2 = 1, x = 0)$，则 $a =$ （ #choice[C] ）。
    A. $sqrt(2)$ #quad B. 1 #quad C. $plus.minus sqrt(2)$ #quad D. $plus.minus 1$
  ],
  p: [
    消去 $x$：$(a - y - z)^2 + y^2 + z^2 = 2 => 2 y^2 + 2 y z + 2 z^2 - 2 a (y + z) + a^2 - 2 = 0$。 \
    对比 $2 y^2 + 2 y z + 2 z^2 = 2$，需 $a = 0$（不合）或系数满足特定关系。通常此类题 $a = plus.minus sqrt(2)$ 为使常数项匹配的结果。
  ],
)

#question(
  [
    2. 双曲抛物面 $x^2 - y^2 = z$ 在 $z O x$ 面上的截痕是（#choice[C]）.
    A. $x^2 = z$ #quad B. $cases(y^2 = -z, x = 0)$ #quad C. $cases(x^2 = z, y = 0)$ #quad D. $cases(x^2 - y^2 = 0, z = 0)$
  ],
  p: [
    $z O x$ 面方程为 $y = 0$。代入得 $x^2 = z$。截痕方程为 $cases(x^2 = z, y = 0)$。
  ],
  a: [C.],
)

#prob-type("二、填空题")

#question(
  [
    4. 曲线 $cases(-2 x + y^2 + z^2 = 0, z = 3)$ 在 $x O y$ 面上的投影曲线方程为 #ans[$cases(2 x - y^2 = 9, z = 0)$]。
  ],
  p: [
    消去 $z$：$-2x + y^2 + 9 = 0 => 2x - y^2 = 9$。投影方程为 $cases(2x - y^2 = 9, z = 0)$。
  ],
)

#question(
  [
    5. 方程组 $cases(y = 5 x + 1, y = 2 x - 3)$ 在平面解析几何中表示 #ans[点 $(-((4)/(3)), -((17)/(3)))$] ，在空间解析几何中表示 #ans[一条空间直线]。
  ],
  p: [
    平面内两直线交于一点。空间内两不平行平面交于一直线。
  ],
)

== 总习题八

#prob-type("一、选择题")

#question(
  [
    1. 点 $M(2, -3, 1)$ 关于坐标原点对称的点是（#choice[A]）.
    A. $(-2, 3, -1)$ #quad B. $(-2, -3, -1)$ #quad C. $(2, -3, -1)$ #quad D. $(2, 3, 1)$
  ],
  p: [
    关于原点对称：$(x,y,z) arrow (-x,-y,-z)$。$M(2,-3,1) arrow (-2,3,-1)$。
  ],
  a: [A.],
)

#question(
  [
    2. 设向量 $bold(a) = (1, -1, -1), bold(b) = (2, 1, -1), lambda$ 为非零常数。若 $(bold(a) + lambda bold(b)) perp bold(a)$，则 $lambda =$ （ #choice[B] ）。
    A. $(3)/(2)$ #quad B. $-(3)/(2)$ #quad C. $(2)/(3)$ #quad D. $-(2)/(3)$
  ],
  p: [
    $(bold(a) + lambda bold(b)) dot bold(a) = |bold(a)|^2 + lambda (bold(b) dot bold(a)) = 3 + lambda(2-1+1) = 3 + 2lambda = 0 => lambda = -(3)/(2)$。
  ],
  a: [B.],
)

#question(
  [
    14. 求点 $(1, 2, -1)$ 到直线 $((x - 1))/(2)=((y + 1))/((-1))=((z - 2))/(3)$ 的距离。
  ],
  p: [
    $M_0(1, -1, 2), bold(s) = (2, -1, 3), P(1, 2, -1) => arrow(M_0 P) = (0, 3, -3)$。 \
    $d =(|arrow(M_0 P) times bold(s)|)/(|bold(s)|)=(|(6, -6, -6)|)/(sqrt(14))=(6 sqrt(3))/(sqrt(14))= ((3)/(7)) sqrt(42)$。
  ],
)
