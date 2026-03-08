#import "../template.typ": *

= 第八章 向量代数与空间解析几何

== 第一节 向量及其线性运算

#prob-type("一、判断题")

#question([
  1. 若 $bold(a) + bold(b) = bold(a) + bold(c)$，则 $bold(b) = bold(c)$ (#choice[√])
], a: [√.])

#question([
  2. 若向量 $bold(a) = (a_x, a_y, a_z)$，则平行于向量 $bold(a)$ 的单位向量为 $( a_x/|bold(a)|, a_y/|bold(a)|, a_z/|bold(a)| )$。 (#choice[×])
], a: [×.])

#prob-type("二、选择题")

#question([
  3. 点 $(4, -3, 5)$ 到 $y$ 轴的距离为（ #choice[D] ）
A. $sqrt(4^2 + (-3)^2 + 5^2)$ 

B. $sqrt((-3)^2 + 5^2)$ 

C. $sqrt(4^2 + (-3)^2)$ 

D. $sqrt(4^2 + 5^2)$
], a: [D.])

#question([
  4. 设有非零向量 $bold(a), bold(b)$，若 $bold(a) perp bold(b)$，则必有（ #choice[B] ）。
A. $|bold(a) + bold(b)| = |bold(a)| + |bold(b)|$ 

B. $|bold(a) + bold(b)| = |bold(a) - bold(b)|$ 

C. $|bold(a) + bold(b)| < |bold(a) - bold(b)|$ 

D. $|bold(a) + bold(b)| > |bold(a) - bold(b)|$
], a: [B.])

#prob-type("三、填空题")

#question([
  5. 点 $(2, 1, -3)$ 关于坐标原点对称的点是
], a: [$(-2, -1, 3)$。])

#question([
  6. 设 $|bold(a)| = 4$，向量 $bold(a)$ 与轴 $l$ 的夹角为 $pi/6$，则 $op("Prj")_l bold(a) = $ #ans[$2 sqrt(3)$]。
], a: [$2 sqrt(3)$])

#question([
  7. 设向量 $bold(a)$ 与坐标轴正向的夹角分别为 $alpha, beta, gamma$，且 $alpha = 60^degree, beta = 120^degree$，则 $gamma =$
], a: [$pi/4$ 或 $3 pi/4$])

#question([
  8. 已知两点 $M_1(0, 1, 2)$ 和 $M_2(1, -1, 0)$，试用坐标式表示向量 $arrow(M_1 M_2)$ 和 $-2 arrow(M_1 M_2)$，并求 $arrow(M_1 M_2)$ 的模、方向余弦和方向角。
], a: [$(1, -2, -2), (-2, 4, 4)$；模为 3，方向余弦为 $1/3, -2/3, -2/3$。
方向角为 $arccos(1/3), arccos(-2/3), arccos(-2/3)$。])

#question([
  9. 求平行于向量 $bold(a) = (6, 7, -6)$ 的单位向量。
], a: [$plus.minus ( 6/11, 7/11, -6/11 )$。])

#question([
  10. 设向量 $bold(m) = 3bold(i) + 5bold(j) + 3bold(k), bold(n) = 2bold(i) + bold(j) - 4bold(k), bold(p) = 5bold(i) + bold(j) - 4bold(k)$，求向量 $bold(a) = 4bold(m) + 3bold(n) - bold(p)$ 在 $x$ 轴上的投影及在 $y$ 轴上的分向量。
], a: [$13, 22bold(j)$。])

#question([
  11. 一向量的终点为点 $B(2, -1, 7)$，它在 $x$ 轴、$y$ 轴和 $z$ 轴上的投影分别为 $4, -4, 7$，求此向量的起点 $A$ 的坐标。
], a: [$(-2, 3, 0)$])

#prob-type("五、证明题")

#question([
  12. 如果平面上一个四边形的对角线互相平分，试用向量证明它是平行四边形。
], a: [略。])

== 第二节 数量积 向量积 混合积

#prob-type("一、判断题")

#question([
  1. 若 $bold(a) times bold(b) = bold(a) times bold(c)$ 且 $bold(a) != 0$，则 $bold(b) = bold(c)$。（ #choice[B] ）
], a: none)

#question([
  2. 若向量 $bold(a), bold(b), bold(c)$ 满足 $bold(a) = bold(b) times bold(c), bold(b) = bold(c) times bold(a)$，则 $bold(a), bold(b), bold(c)$ 两两垂直。（ #choice[B] ）
], a: none)

#prob-type("二、选择题")

#question([
  3. 设 $bold(a)$ 与 $bold(b)$ 为非零向量，则 $bold(a) dot bold(b) = 0$ 是（ #choice[B] ）
A. $bold(a) || bold(b)$ 的充要条件

B. $bold(a) perp bold(b)$ 的充要条件

C. $bold(a) = bold(b)$ 的充要条件

D. $bold(a) || bold(b)$ 的必要但不充分条件
], a: none)

#question([
  4. 设向量 $bold(a) = 2 bold(i) - bold(j) + bold(k), bold(b) = bold(i) + 2 bold(j) - bold(k)$，则 $(bold(a) + bold(b)) times (bold(a) - bold(b)) = ( underline("     ") )$。
A. $-bold(i) + 3 bold(j) + 5 bold(k)$ 

B. $-2 bold(i) + 6 bold(j) + 10 bold(k)$ 

C. $2 bold(i) - 6 bold(j) - 10 bold(k)$ 

D. $3 bold(i) + 4 bold(j) + 5 bold(k)$
], a: none)

#question([
  5. 下列结论中正确的是（ #choice[B] ）
A. $|bold(a)| bold(a) = bold(a)^2$ 

B. 若 $bold(a) dot bold(b) = 0$，则必有 $bold(a) = 0$ 或 $bold(b) = 0$ 

C. $bold(a) dot (bold(b) - bold(c)) = bold(a) dot bold(b) - bold(a) dot bold(c)$ 

D. 若 $bold(a) != 0$ 且 $bold(a) dot bold(b) = bold(a) dot bold(c)$，则 $bold(b) = bold(c)$
], a: none)

#prob-type("三、填空题")

#question([
  6. 设 $angle(bold(a), bold(b)) = pi/3, |bold(a)| = 5, |bold(b)| = 8$，则 $|bold(a) - bold(b)| =$  #underline("          ")。
], a: none)

#question([
  7. 设向量 $bold(a) = (4, -3, 4), bold(b) = (2, 2, 1)$，则 $op("Prj")_bold(b) bold(a) = underline("          ")$
], a: none)

#question([
  8. 已知 $|bold(a)| = 3, |bold(b)| = 26, |bold(a) times bold(b)| = 72$，则 $bold(a) dot bold(b) =$ #underline("          ")。
], a: none)

#prob-type("四、计算题")

#question([
  9. 设向量 $bold(a) = 3 bold(i) - bold(j) - 2 bold(k), bold(b) = bold(i) + 2 bold(j) - bold(k)$，求：

(1) $bold(a) dot bold(b)$ 及 $bold(a) times bold(b)$；

(2) $(-2 bold(a)) dot 3 bold(b)$ 及 $bold(a) times 2 bold(b)$；

(3) $bold(a), bold(b)$ 的夹角的余弦。
], a: none)

#question([
  10. 已知三点 $M_1(1, -1, 2), M_2(3, 3, 1)$ 和 $M_3(3, 1, 3)$，求与向量 $arrow(M_1 M_2), arrow(M_2 M_3)$ 同时垂直的单位向量。
], a: none)

#question([
  11. 求向量 $bold(a) = (4, -3, 4)$ 在向量 $bold(b) = (2, 2, 1)$ 上的投影。
], a: none)

#question([
  12. 已知向量 $arrow(OA) = bold(i) + 3 bold(k), arrow(OB) = bold(j) + 3 bold(k)$，求 $Delta "OAB"$ 的面积。
], a: none)

#question([
  13. 设向量 $bold(a) = (2, 3, -1), bold(b) = (1, -2, 3), bold(c) = (2, 1, 2)$，向量 $bold(d)$ 与 $bold(a), bold(b)$ 均垂直，且在向量 $bold(c)$ 上的投影是 14，求向量 $bold(d)$。
], a: none)

== 第三节 平面及其方程

#prob-type("一、选择题")

#question([
  1. 平面 $x - 2y + 7z + 3 = 0$ 与平面 $3x + 5y + z - 1 = 0$ 的位置关系为（ #choice[B] ）。
A. 平行

B. 垂直

C. 相交但不垂直

D. 重合
], a: [B.])

#question([
  2. 过点 $M_1(2, -1, 4), M_2(-1, 3, -2)$ 和 $M_3(0, 2, 3)$ 的平面方程为（ #choice[A] ）。
A. $14x + 9y - z - 15 = 0$ 

B. $2x + 7y - 8z - 6 = 0$ 

C. $14x - 9y + z - 15 = 0$ 

D. $14x + 9y + z - 15 = 0$
], a: [A.])

#question([
  3. 平面 $x - y + 2z - 6 = 0$ 与平面 $2x + y + z - 5 = 0$ 的夹角为（ #choice[C] ）。
A. $pi/2$ 

B. $pi/6$ 

C. $pi/3$ 

D. $pi/4$
], a: [C.])

#prob-type("二、填空题")

#question([
  4. 过点 $M(3, 0, -1)$ 且与平面 $3x - 7y + 5z - 12 = 0$ 平行的平面方程为
], a: [$3x - 7y + 5z - 4 = 0$])

#question([
  5. 点 $M_1(1, 2, 1)$ 到平面 $x + 2y + 2z - 10 = 0$ 的距离为
], a: [1.])

#question([
  6. 使得平面 $x + k y - 2z = 9$ 与平面 $2x - 3y + z = 0$ 成 $pi/4$ 角的 $k$ 值为
], a: [$plus.minus sqrt(70)/2$。])

#prob-type("三、计算题")

#question([
  7. 求平面 $2x - 2y + z + 5 = 0$ 与各坐标面的夹角的余弦。
], a: [$1/3, 2/3, -2/3$。])

#question([
  8. 求过点 $M_0(2, 9, -6)$ 且与联结坐标原点及点 $M_0$ 的线段 $O M_0$ 垂直的平面方程。
], a: [$2x + 9y - 6z - 121 = 0$])

#question([
  9. 一平面过点 $(1, 0, -1)$ 且平行于向量 $bold(a) = (2, 1, 1)$ 和 $bold(b) = (1, -1, 0)$，试求该平面方程。
], a: [$x + y - 3z - 4 = 0$])

#question([
  10. 求三平面 $x + 3y + z = 1, 2x - y - z = 0$ 和 $-x + 2y + 2z = 3$ 的交点。
], a: [$(1, -1, 3)$])

#question([
  11. 分别按下列条件求平面方程：
(1) 平行于 $z O x$ 面且过点 $(2, -5, 3)$；

(2) 过 $z$ 轴和点 $(-3, 1, 2)$；

(3) 平行于 $x$ 轴且过点 $(4, 0, -2)$ 和 $(5, 1, 7)$。
], a: [(1) $y + 5 = 0$；])

#question([
  12. 一平面过 $z$ 轴且与平面 $2x + y - sqrt(5) z = 0$ 的夹角为 $pi/3$，求该平面方程。
], a: [$x + 3y = 0$ 或 $3x - y = 0$])

== 第四节 空间直线及其方程

#prob-type("一、选择题")

#question([
  1. 直线 $L_1$: $ cases(x + 2y - z = 7, -2x + y + z = 7) $ 与 $L_2$: $ cases(3x + 6y - 3z = 8, 2x - y - z = 0) $ 的位置关系为（ #choice[B] ）。
A. $L_1 \perp L_2$ 

B. $L_1 \parallel L_2$ 

C. $L_1$ 与 $L_2$ 相交但不垂直

D. $L_1$ 与 $L_2$ 为异面直线
], a: [B.])

#question([
  2. 直线 $L: (x - 2)/3 = (y + 2)/(-1) = (z - 1)/4$ 与平面 $Pi: 6x - 2y + 8z = 7$ 的位置关系为（ #choice[B] ）。
A. 直线 $L$ 与平面 $Pi$ 平行

B. 直线 $L$ 与平面 $Pi$ 垂直

C. 直线 $L$ 在平面 $Pi$ 上

D. 直线 $L$ 与平面 $Pi$ 只有一个交点，但不垂直
], a: [B.])

#question([
  3. 两平行线 $x = t + 1, y = 2t + 1, z = t$ 与 $(x - 2)/1 = (y + 1)/2 = (z - 1)/1$ 之间的距离是（ #choice[C] ）。
A. 1 

B. $2/3$ 

C. $(4 \sqrt{3})/3$ 

D. $(2 \sqrt{3})/3$
], a: [C.])

#prob-type("二、填空题")

#question([
  4. 过点 $(2, -3, 4)$ 且与平面 $3x - y + 2z = 4$ 垂直的直线方程为
], a: [$(x - 2)/3 = (y + 3)/(-1) = (z - 4)/2$])

#question([
  5. 直线 $ cases(x + y + 3z = 0, x - y - z = 0) $ 与平面 $x - y - z + 1 = 0$ 的夹角为
], a: [0。])

#question([
  6. 点 $(1, 2, 3)$ 到直线 $x/1 = (y - 4)/(-3) = (z - 3)/(-2)$ 的距离为
], a: [$\sqrt{6}/2$])

#question([
  7. 点 $(-1, 3, -4)$ 在平面 $x + 2y - z + 1 = 0$ 上的投影为
], a: [$(-8/3, -1/3, -7/3)$])

#prob-type("三、计算题")

#question([
  8. 用对称式方程及参数方程表示直线 $ cases(x - y + z = 1, 2x + y + z = 4) $
], a: [$(x - 1)/(-2) = (y - 1)/1 = (z - 1)/3$ $ cases(x = 1 - 2t, y = 1 + t, z = 1 + 3t) $ （ $t$ 为任意常数）])

#question([
  9. 求过点 $(0, 2, 4)$ 且与两平面 $x + 2z = 1$ 和 $y - 3z = 2$ 平行的直线方程
], a: [$x/(-2) = (y - 2)/3 = (z - 4)/1$])

#question([
  10. 求过点 $(3, 1, -2)$ 且过直线 $(x - 4)/5 = (y + 3)/2 = z/1$ 的平面方程
], a: [$8x - 9y - 22z - 59 = 0$])

#question([
  11. 求过点 $(1, 2, 1)$ 且与两直线
$ cases(x + 2y - z + 1 = 0, x - y + z - 1 = 0) $ 和 $ cases(2x - y + z = 0, x - y + z = 0) $

平行的平面方程。
], a: [$x - y + z = 0$])

#question([
  12. 求点 $(3, -1, 2)$ 到直线 $ cases(x + y - z + 1 = 0, 2x - y + z - 4 = 0) $ 的距离。
], a: [$(3 \sqrt{2})/2$])

== 第五节 曲面及其方程

#prob-type("一、选择题")

#question([
  1. 方程 $y^2 + z^2 - 4x + 8 = 0$ 表示（ #choice[D] ）
A. 单叶双曲面

B. 双叶双曲面

C. 锥面

D. 旋转抛物面
], a: [D.])

#question([
  2. 旋转双叶双曲面 $x^2/a^2 - y^2/b^2 + z^2/a^2 = -1$ 的旋转轴是（ #choice[B] ）。
A. $x$ 轴

B. $y$ 轴

C. $z$ 轴

D. 直线 $ cases(y = z, x = 0) $
], a: [B.

#prob-type("二、填空题")

#question([
  3. $x O y$ 面上双曲线 $4x^2 - 9y^2 = 36$ 分别绕 $x$ 轴、$y$ 轴旋转一周所得旋转曲面的方程分别为 #underline("          ") 和 #underline("          ")。
], a: [$4x^2 - 9(y^2 + z^2) = 36$, $4(x^2 + z^2) - 9y^2 = 36$])

#question([
  4. 曲面 $x^2 - y^2 - z^2 = 1$ 是由 $x O y$ 面上的曲线 #underline("          ") 绕 $x$ 轴旋转一周所得的或是由 #underline("          ") 面上的曲线 #underline("          ") 绕轴旋转一周所得的。
], a: [$x^2 - y^2 = 1, z O x, x^2 - z^2 = 1, x$ 轴。])

#question([
  5. 方程 $4 x^2 + 7 y^2 = z$ 所表示的曲面为
], a: [椭圆抛物面])

#prob-type("三、计算题")

#question([
  6. 一球面过坐标原点及三点 $A(4, 0, 0), B(1, 3, 0)$ 和 $C(0, 0, -4)$，求球面的方程及球心的坐标和半径。
], a: [$x^2 + y^2 + z^2 - 4x - 2y + 4z = 0$，球心为 $(2, 1, -2)$，半径为 3。])

#question([
  7. 将 $z O x$ 面上的圆 $x^2 + z^2 = 9$ 绕 $z$ 轴旋转一周，求所得旋转曲面的方程
], a: [$x^2 + y^2 + z^2 =$])

#question([
  8. 指出下列方程所表示的曲面并画出草图：
(1) $x^2/9 + z^2/4 = 1$； 

(2) $x^2 - y^2 - 4z^2 = 4$；

(3) $z/3 = x^2/4 + y^2/9$。
], a: [（1）椭圆柱面；（2）双叶双曲面；（3）椭圆抛物面。图略。])

#question([
  9. 画出由曲面 $z = 0, z = 3, x - y = 0, x - sqrt (3)y = 0, x^2 + y^2 = 1$ (在第一卦限内) 所围立体的图形.
], a: [略.])

== 第六节 空间曲线及其方程

#prob-type("一、选择题")

#question([
  1. 已知曲线 $ cases(x^2 + y^2 + z^2 = 2, x + y + z = a) $ 在 $y O z$ 面上的投影曲线为 $ cases(y^2 + y z + z^2 = 1, x = 0) $，则 $a =$ （ #choice[C] ）。
], a: [C.])

#question([
  2. 双曲抛物面 $x^2 - y^2 = z$ 在 $z O x$ 面上的截痕是（#choice[C]）.
A. $x^2 = z$ 

B. $ cases(y^2 = -z, x = 0) $ 

C. $ cases(x^2 = z, y = 0) $ 

D. $ cases(x^2 - y^2 = 0, z = 0) $
], a: [C.])

#question([
  3. 曲面 $x^2 + y^2 + z^2 = a$ 与 $x^2 + y^2 = 2 a z(a > 0)$ 的交线是（#choice[C]）.
A. 抛物线

B. 双曲线

C. 圆

D. 椭圆
], a: [C.])

#prob-type("二、填空题")

#question([
  4. 曲线 $ cases(-2 x + y^2 + z^2 = 0, z = 3) $ 在 $x O y$ 面上的投影曲线方程为
], a: [$ cases(2 x - y^2 = 9, z = 0) $])

#question([
  5. 方程组 $ cases(y = 5 x + 1, y = 2 x - 3) $ 在平面解析几何中表示 #underline("          ") ，在空间解析几何中表示 #underline("          ") 。
], a: [点 $(-(4/3), -(17/3))$ , 一条空间直线])

#question([
  6. 曲线 $ cases(x = t + 1, y = t^2, z = 2t + 1) $ 的一般方程为
], a: [$ cases(y = (x - 1)^2, z = 2x - 2) $])

#prob-type("三、计算题")

#question([
  7. 分别求母线平行于 $x$ 轴及 $y$ 轴且过曲线 $ cases(2x^2 + y^2 + z^2 = 16, x^2 - y^2 + z^2 = 0) $ 的柱面方程
], a: [母线平行于 $x$ 轴的柱面方程为 $3y^2 - z^2 = 16$；母线平行于 $y$ 轴的柱面方程为 $3x^2 + 2z^2 = 16$。])

#question([
  8. 将下列曲线的一般方程化为参数方程：
(1) $ cases(x^2 + y^2 + z^2 = 9, y = x) $ 

(2) $ cases((x - 1)^2 + y^2 + (z + 1)^2 = 4, z = 0) $ 
], a: [(1) $ cases(x = 3/sqrt(2) cos t, y = 3/sqrt(2) cos t, z = 3 sin t) $ ( $0 <= t <= 2 pi$ );
(2) $ cases(x = 1 + sqrt(3) cos t, y = sqrt(3) sin t, z = 0) $ ( $0 <= t <= 2 pi$ ).])

#question([
  9. 求螺旋线 $x = a cos theta, y = a sin theta, z = b theta$ 在三个坐标面上的投影曲线的直角坐标方程。
], a: [在 $x O y$ 面上的投影：$x^2 + y^2 = a^2, z = 0$；在 $z O x$ 面上的投影：$x = a cos(z/b), y = 0$；在 $y O z$ 面上的投影：$y = a sin(z/b), x = 0$。])

#question([
  10. 求上半球 $0 <= z <= sqrt(a^2 - x^2 - y^2)$ 与圆柱体 $x^2 + y^2 <= a x$ ($a > 0$) 的公共部分在 $x O y$ 面和 $z O x$ 面上的投影。
], a: [在 $x O y$ 面上的投影：$x^2 + y^2 <= a x, z = 0$；在 $z O x$ 面上的投影：$0 <= z <= sqrt(a^2 - a x), 0 <= x <= a, y = 0$。])

#question([
  11. 求旋转抛物面 $z = x^2 + y^2$ ($0 <= z <= 4$) 在三个坐标面上的投影。
], a: [在 $x O y$ 面上的投影：$x^2 + y^2 <= 4, z = 0$；在 $z O x$ 面上的投影：$x^2 <= z <= 4, -2 <= x <= 2, y = 0$；在 $y O z$ 面上的投影：$y^2 <= z <= 4, -2 <= y <= 2, x = 0$。])

== 总习题八

#prob-type("一、选择题")

#question([
  1. 点 $M(2, -3, 1)$ 关于坐标原点对称的点是（#choice[A]）.
A. $(-2, 3, -1)$ 

B. $(-2, -3, -1)$ 

C. $(2, -3, -1)$ 

D. $(2, 3, 1)$
], a: [A.])

#question([
  2. 设向量 $bold(a) = (1, -1, -1), bold(b) = (2, 1, -1), lambda$ 为非零常数。若 $(bold(a) + lambda bold(b)) perp bold(a)$，则 $lambda =$ （ #choice[B] ）。
A. $3/2$ 

B. $-3/2$ 

C. $2/3$ 

D. $-2/3$
], a: [B.])

#question([
  3. 设向量 $bold(a), bold(b), bold(c)$ 满足关系式 $bold(a) dot bold(b) = bold(a) dot bold(c)$，则（ #choice[D] ）。
A. 必有 $bold(a) = 0$ 或 $bold(b) = bold(c)$ 

B. 必有 $bold(a) = bold(b) - bold(c) = 0$ 

C. 当 $bold(a) != 0$ 时，必有 $bold(b) = bold(c)$ 

D. 必有 $bold(a) perp (bold(b) - bold(c))$
], a: [D.])

#question([
  4. 方程 $(z - a)^2 = x^2 +y^2$ 表示（#choice[C]）
A. $y O z$ 面上曲线 $(z - a)^2 = y^2$ 绕 $x$ 轴旋转一周所得曲面

B. $z O x$ 面上曲线 $(z - a)^2 = x^2$ 绕 $y$ 轴旋转一周所得曲面

C. $z O x$ 面上直线 $z - a = x$ 绕 $z$ 轴旋转一周所得曲面

D. $y O z$ 面上直线 $z - a = y$ 绕 $y$ 轴旋转一周所得曲面
], a: [C.])

#question([
  5. 平面 $x + 2y - z + 3 = 0$ 与直线 $(x - 1)/3 = (y + 1)/(-1) = (z - 2)/1$ 的位置关系为（ #choice[D] ）。
A. 互相垂直

B. 互相平行但直线不在平面上

C. 既不平行也不垂直

D. 直线在平面上
], a: [D.

#prob-type("二、填空题")

#question([
  6. 已知三点 $A(-2, 1, -1), B(1, -3, 4), C(-3, -1, 1)$，则
（1）向量 $arrow(AB)$ 的方向余弦为 #ans[$cos alpha = 3/(5 sqrt(2)), cos beta = -4/(5 sqrt(2)), cos gamma = 1/sqrt(2)$]，单位向量为 #ans[$(3/(5 sqrt(2)), -4/(5 sqrt(2)), 1/sqrt(2))$]；

(2) 向量 $arrow(AB)$ 在向量 $arrow(AC)$ 上的投影为 #ans[$5$]，$arrow(AB)$ 与 $arrow(AC)$ 的夹角为 #ans[$45^degree$]；

（3）以该三点为顶点的三角形的面积为 #ans[$15/2$]；

（4）过点 $C$ 且垂直于 $arrow(AB)$ 的平面方程为 #ans[$3x - 4y + 5z + 0 = 0$]；

（5）过点 $C$ 且平行于 $arrow(AB)$ 的直线方程为 #ans[$(x + 3)/3 = (y + 1)/(-4) = (z - 1)/5$]。
], a: [（1） $cos alpha = 3/(5 sqrt(2)), cos beta = -4/(5 sqrt(2)), cos gamma = 1/sqrt(2)$；单位向量为 $(3/(5 sqrt(2)), -4/(5 sqrt(2)), 1/sqrt(2))$；
(2) $5, 45^degree$；
(3) $15/2$；
(4) $3x - 4y + 5z = 0$；
(5) $(x + 3)/3 = (y + 1)/(-4) = (z - 1)/5$。])

#question([
  7. 设向量 $bold(a) = (1, 1, -4), bold(b) = (2, 0, -2)$，则
(1) $(bold(a) + bold(b)) dot (bold(a) - bold(b)) =$ #ans[$10$]

(2) $(bold(a) + bold(b)) times (bold(a) - bold(b)) =$ #ans[$(4, 12, 4)$]
], a: [（1）10；
(2) $(4, 12, 4)$。])

#question([
  8. 方程 $x^2/1 + y^2/25 - z^2/16 = 1$ 所表示的曲面为 #ans[单叶双曲面]。
], a: [单叶双曲面。])

#question([
  9. 曲线 $ cases( y = x^2 + 1,   z = 0 ) $ 绕 $y$ 轴旋转一周所得旋转曲面方程是
], a: [$y = x^2 + z^2 + 1$])

#question([
  10. 点 $(-1,2,0)$ 在平面 $x + 2 y - z + 1 = 0$ 上的投影是
], a: [$(-(5/3), (2/3), (2/3))$ .])

#prob-type("三、计算题")

#question([
  11. 已知向量 $bold(A) = 2 bold(a) + 3 bold(b), bold(B) = 3 bold(a) - bold(b), |bold(a)| = 2, |bold(b)| = 3, angle(bold(a), bold(b)) = pi/3$，求 $bold(A) dot bold(B), |bold(A) times bold(B)|$。
], a: [18, $33 sqrt(3)$])

#question([
  12. 求过两点 $(1, 2, -1)$ 和 $(-5, 2, 7)$ 且平行于 $x$ 轴的平面方程
], a: [$y = 2$])

#question([
  13. 求过点 $(2, -3, 1)$ 和直线 $ cases( x - 5 y - 16 = 0,   2 y - z + 6 = 0 ) $ 的平面方程
], a: [$x - 3 y - z - 10 = 0$])

#question([
  14. 求点 $(1, 2, -1)$ 到直线 $(x - 1)/2 = (y + 1)/(-1) = (z - 2)/3$ 的距离。
], a: [$(3/7) sqrt(42)$])

#question([
  15. 求过直线 $(x - 2)/5 = (y + 1)/2 = (z - 2)/4$ 且垂直于平面 $x + 4y - 3z + 7 = 0$ 的平面方程。
], a: [$22x - 19y - 18z - 27 = 0$])

#question([
  16. 求过点 $(0, -1, 1)$ 且与直线 $ cases(x + 2y + z = 0, x + z = 2) $ 平行的直线方程。
], a: [$(x)/1 = (y + 1)/0 = (z - 1)/(-1)$ 或 $ cases(x + z = 1, y = -1) $])

#question([
  17. 求过点 $A(1, 0, -2)$ 且垂直于直线 $L: (x-3)/1 = (y+2)/4 = z/1$ 同时平行于平面 $Pi: 3x + 4y - z + 6 = 0$ 的直线方程。
], a: [$(x - 1)/2 = y/(-1) = (z + 2)/2$])

#question([
  18. 试讨论直线 $L_1$：$(1 - x)/1 = (y + 1)/2 = (z + 1)/3$ 与 $L_2$：$ cases(2x + y - 1 = 0, 3x + z - 2 = 0) $ 的位置关系。
], a: [重合。])

#question([
  19. 求直线 $ L: cases(2x - 4y + z = 0, 3x - y - 2z - 9 = 0) $ 在平面 $Pi: 4x - y + z = 1$ 上的投影直线方程
], a: none)

#question([
  20. 方程 $z = sqrt(a^2 - x^2 - y^2)$ 及 $x^2 + y^2 = a x$ ($a > 0$) 分别表示什么曲面？求这两个曲面的交线在 $z O x$ 面上的投影直线方程，并指明曲线类型。
], a: [上半球面，圆柱面；投影方程为 $z^2 = a^2 - a x, y = 0$ ($0 <= x <= a$)，抛物线。])
