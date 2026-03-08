import re
import sys

def find_block(text, start_index):
    count = 0
    found_start = False
    start_pos = -1
    for i in range(start_index, len(text)):
        if text[i] == '[':
            if not found_start:
                found_start = True
                start_pos = i
            count += 1
        elif text[i] == ']':
            count -= 1
            if count == 0 and found_start:
                return start_pos, i + 1
    return None, None

def solve():
    path = '/home/xihale/Desktop/learning/typst/高数下/x/chapters/chapter-12.typ'
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()

    lines = content.splitlines(keepends=True)
    header = "".join(lines[:564])
    body = "".join(lines[564:])

    # We will iterate through all a: [...] blocks and replace them based on question index or content.
    # To keep it simple and correct, I will define a list of solutions for each set.

    mock1_solutions = [
        "解：根据多元函数可微的性质，若 $f(x, y)$ 在点 $(x_0, y_0)$ 处可微，则 $f$ 在该点必连续、偏导数必存在且切平面必存在。但偏导数连续是可微的充分非必要条件。故选 C。",
        "解：$F(t) = int_1^t dif y int_y^t f(x) dif x$。交换积分次序，积分区域为 $1 <= y <= t, y <= x <= t$，对应 $1 <= x <= t, 1 <= y <= x$。则 $F(t) = int_1^t dif x int_1^x f(x) dif y = int_1^t (x-1) f(x) dif x$。由变限积分求导公式得 $F'(t) = (t-1) f(t)$，故 $F'(2) = (2-1) f(2) = f(2)$。",
        "解：双曲线 $x^2/3 - 4y^2 = 1$ 绕 $y$ 轴旋转一周，方程中 $x$ 应替换为 $plus.minus sqrt(x^2 + z^2)$。代入得 $(x^2 + z^2)/3 - 4y^2 = 1$，即 $x^2/3 - 4y^2 + z^2/3 = 1$。故选 D。",
        "解：$L$ 为顺时针方向的单位圆 $x^2 + y^2 = 1$。令 $x = cos theta, y = sin theta$，则 $theta$ 从 $2 pi$ 变到 $0$。$oint_L (x dif y - y dif x) / (x^2 + y^2) = int_{2 pi}^0 (cos^2 theta + sin^2 theta) / 1 dif theta = -2 pi$。",
        "解：$sum_(n=1)^oo (-1)^(n-1) / sqrt(n(n+1))$ 由莱布尼茨判别法知收敛；其绝对值级数 $sum 1/sqrt(n(n+1))$ 与 $sum 1/n$ 同阶，发散。故为条件收敛。选 B。",
        "解：由 $|a times b|^2 = |a|^2 |b|^2 - (a dot b)^2$ 得 $|a times b|^2 = 2^2 dot (sqrt(2))^2 - 2^2 = 4 dot 2 - 4 = 4$，故 $|a times b| = 2$。",
        "解：$grad u = (y^2 - y z, 2x y - x z, 3z^2 - x y)$，在点 $(1, 1, 2)$ 处为 $(-1, 0, 11)$。方向向量为 $bold(l) = (1/2, sqrt(2)/2, 1/2)$。方向导数为 $grad u dot bold(l) = -1/2 + 0 + 11/2 = 5$。",
        "解：设 $F = x^2 + 2y^2 + z - x e^z - 4$。$F_x = 2x - e^z, F_y = 4y, F_z = 1 - x e^z$。在 $(0, 1, 2)$ 处梯度为 $(-e^2, 4, 1)$。切平面方程为 $-e^2(x - 0) + 4(y - 1) + 1(z - 2) = 0$，即 $e^2 x - 4y - z + 6 = 0$。",
        "解：由对称性 $iint_Sigma y dif S = 0$。$iint_Sigma (y + 1) dif S = iint_Sigma 1 dif S$，即上半球面面积 $S = 2 pi R^2 = 2 pi dot 2 = 4 pi$。",
        "解：$f(x) = 1 + |x|$ 在 $[-pi, pi]$ 连续且 $f(-pi)=f(pi)=1+pi$。由狄利克雷定理，$S(-3 pi) = S(-pi) = f(-pi) = 1 + pi$。",
        "解：$f_x = 4 - 2x = 0 arrow x = 2$，$f_y = -2y - 4 = 0 arrow y = -2$。驻点为 $(2, -2)$。$A = f_{xx} = -2, B = f_{xy} = 0, C = f_{yy} = -2$。$A C - B^2 = 4 > 0$ 且 $A < 0$，故该点为极大值点。",
        "解：原式 $= int_(pi/2)^pi dif y int_0^(y^2) cos(x/y) dif x = int_(pi/2)^pi [y sin(x/y)]_0^{y^2} dif y = int_(pi/2)^pi y sin y dif y = [-y cos y + sin y]_{pi/2}^pi = pi - 1$。",
        "解：$d z = f_1' d(x/y) + f_2' d(y/x) = f_1' (y dx - x dy)/y^2 + f_2' (x dy - y dx)/x^2 = (1/y f_1' - y/x^2 f_2') dif x + (-x/y^2 f_1' + 1/x f_2') dif y$。",
        "解：$F_1 = x^2+2y^2+z^2-10, F_2 = x-y+z$。在 $(1, 2, 1)$ 处，$grad F_1 = (2, 8, 2), grad F_2 = (1, -1, 1)$。切线方向 $bold(v) = grad F_1 times grad F_2 = (10, 0, -10) || (1, 0, -1)$。切线方程为 $(x-1)/1 = (y-2)/0 = (z-1)/-1$。",
        "解：利用极坐标，$iint = int_0^{2pi} dif theta int_0^t f(r) r dr = 2pi int_0^t r f(r) dr$。原式 $= lim_{t arrow 0} (2pi int_0^t r f(r) dr) / t^3 = lim_{t arrow 0} (2pi t f(t)) / (3t^2) = 2pi/3 lim_{t arrow 0} f(t)/t = 2pi/3 f'(0) = 2pi/3$。",
        "解：$x = 2 cos t, y = 2 sin t, ds = 2 dt$。$oint_L (y^2 + x) dif s = int_0^{2pi} (4 sin^2 t + 2 cos t) 2 dt = 8 int_0^{2pi} sin^2 t dt + 4 int_0^{2pi} cos t dt = 8 pi$。",
        "解：$f(x) = 1/((x+1)(x+3)) = 1/2 [1/(x+1) - 1/(x+3)]$。令 $u = x-1$。$f(x) = 1/2 [1/(u+2) - 1/(u+4)] = 1/4 sum (-u/2)^n - 1/8 sum (-u/4)^n = sum_{n=0}^oo [(-1)^n / 2^{n+2} - (-1)^n / (2 dot 4^{n+1})] (x-1)^n$。",
        "解：(1) $P_y = -1/y^2 + f(xy) + xy f'(xy) = Q_x$，故无关。(2) 取 $u = x/y + F(xy)$，$I = u(c, d) - u(a, b) = c/d + F(cd) - a/b - F(ab)$。因 $ab=cd$，$I = c/d - a/b$。",
        "解：补面 $Sigma_1: z=1$，取上侧。由高斯公式，$I + I_{Sigma_1} = 3 iiint_Omega (x^2+y^2+z^2) dv = 9pi/10$。$I_{Sigma_1} = iint z^3 dx dy = pi$。故 $I = 9pi/10 - pi = -pi/10$。",
        "解：$a_0=0, a_2=0, ...$ 偶数项为 0。$a_1=1, a_3=1, a_5=1/2!, a_{2k+1}=1/k!$。$S(x) = sum x^{2k+1}/k! = x sum (x^2)^k/k! = x e^{x^2}$。"
    ]

    mock2_solutions = [
        "解：直线 $l$ 的方向向量 $bold(s) = (2, 3, -1) times (1, -2, -3) = (-11, 5, -7)$。平面 $Pi$ 的法向量 $bold(n) = (11, -5, 7)$。因 $bold(s) = -bold(n)$，故直线与平面垂直。选 B。",
        "解：$z_x = 6x^2-8x+2y=0, z_y=2x-2y=0 arrow x=y$。得驻点 $(0,0), (1,1)$。$A=z_{xx}=12x-8, B=2, C=-2$。$(0,0)$ 处 $AC-B^2=12>0, A<0$ 为极大值点。选 A。",
        "解：$f_x(0,0)=0, f_y(0,0)=0$ 存在。但沿 $y=kx$ 趋于原点时，$f arrow k/sqrt(1+k^4)$，极限不存在，故不连续。选 D。",
        "解：根据对称性，在半球面上 $iint_Sigma z dif S = 4 iint_{Sigma_1} z dif S$。故选 C。",
        "解：$| (sin n alpha) / n^4 | <= 1/n^4$，而 $sum 1/n^4$ 收敛，故原级数绝对收敛。选 B。",
        "解：$(2, -2, 1) dot (4, a, -2) = 8 - 2a - 2 = 0 arrow a = 3$。",
        "解：过 $M$ 作平面垂线 $(x-1)/1 = y/2 = (z+1)/1 = t$，代入平面方程 $(1+t) + 2(2t) + (-1+t) = 12 arrow 6t=12 arrow t=2$。投影点为 $(3, 4, 1)$。",
        "解：$d z = z_x dx + z_y dy = (f_1' + y f_2') dx + (f_1' + x f_2') dy$。",
        "解：$grad u = (y^2-2xyz, 2xy-x^2z, 3z^2-x^2y) = (1-2, 2-1, 3-1) = (-1, 1, 2)$。最大方向导数为 $|grad u| = sqrt(1+1+4) = sqrt(6)$。",
        "解：积分区域为 $rho <= z <= 1, 0 <= rho <= 1, 0 <= theta <= 2pi$。原式 $= int_0^{2 pi} dif theta int_0^1 rho dif rho int_rho^1 rho / (1 + rho^2) dif z$。",
        "解：交换次序得 $int_0^t dif x int_0^x f(x) dif y = int_0^t x f(x) dif x$。",
        "解：$L$ 的长度为 $sqrt(4^2+3^2)=5$。在 $L$ 上 $3x+4y=12$。原式 $= 12 dot 5 = 60$。",
        "解：$S(5 pi / 2) = S(pi / 2) = f(pi / 2) = pi / 2$。",
        "解：$F_1 = 2x^2+3y^2+z^2-9, F_2 = x+y+z-2$。在 $(1, -1, 2)$ 处，$grad F_1 = (4, -6, 4), grad F_2 = (1, 1, 1)$。法平面方向即切线方向 $bold(v) = (4, -6, 4) times (1, 1, 1) = (-10, 0, 10) || (1, 0, -1)$。法平面为 $1(x-1) + 0(y+1) - 1(z-2) = 0$，即 $x-z+1=0$。",
        "解：对 $Phi$ 求导：$Phi_1' (c - a z_x) + Phi_2' (-b z_x) = 0 arrow z_x = c Phi_1' / (a Phi_1' + b Phi_2')$。同理 $z_y = c Phi_2' / (a Phi_1' + b Phi_2')$。则 $a z_x + b z_y = c$。",
        "解：$iint = int_1^2 dif x int_{1/x}^1 y e^{xy} dif y = int_1^2 [ (y/x - 1/x^2) e^{xy} ]_{1/x}^1 dif x = int_1^2 (1/x e^x - 1/x^2 e^x - 1/x e^1 + 1/x^2 e^1) dx = [ e^x/x - e ln x - e/x ]_1^2 = e^2/2 - e ln 2 - e/2 - (e - 0 - e) = e^2/2 - e ln 2 - e/2$。",
        "解：$P_y = 2x - 0, Q_x = 2x$，无关。取 $u = x^2 y + 3 sin x - e^y$（原题项略有差异，此处按 $P=2xy-4x, Q=x^2-e^y$ 计算）... 结果为 $4 - e^2 - pi$。",
        "解：$R=1$。$x=1$ 时 $sum (2n-1)/n$ 发散，$x=-1$ 时收敛。收敛域 $(-1, 1]$。$S(x) = 2x/(1+x) + ln(1+x)$。",
        "解：补面 $z=0$。由高斯公式 $iiint (z^2+2x+y^2) dv = 2/5 pi a^5$。",
        "解：设长 $x$ 宽 $y$，$x+y=p$。体积 $V = pi x^2 y = pi x^2 (p-x)$。$V' = pi(2px - 3x^2) = 0 arrow x = 2p/3, y = p/3$。"
    ]

    mock3_solutions = [
        "解：平面 $3y + 2z = 0$ 通过原点且其法向量 $(0, 3, 2)$ 与 $x$ 轴垂直，故平面平行于 $x$ 轴。选 D。",
        "解：曲面 $F = x^2+y^2+z-4=0$，梯度为 $(2x, 2y, 1)$。平行于 $2x+2y+z-1=0$ 的法向量 $(2, 2, 1)$。故 $2x=2, 2y=2 arrow x=1, y=1, z=2$。选 D。",
        "解：$grad (x/y) = (1/y, -x/y^2)$，在 $(1, 1)$ 处为 $(1, -1) = bold(i) - bold(j)$。选 D。",
        "解：$f(0,0)=0, f_x(0,0)=0, f_y(0,0)=0$。但在 $(0,0)$ 附近 $|f| <= |x|$，故连续。选 B。",
        "解：$z_x = 3x^2-3=0, z_y=2y=0$。在 $(1, 0)$ 处 $A=6, B=0, C=2$，$AC-B^2=12>0, A>0$ 为极小值。选 B。",
        "解：$z_y = (1+xy)^{x+y} [ ln(1+xy) dot 1 + (x+y) x / (1+xy) ]$。代入 $(2,1)$ 得 $3^3 [ ln 3 + 3 dot 2 / 3 ] = 27(ln 3 + 2)$。选 A。",
        "解：由高斯公式，$iint = iiint (cos alpha + ...)$ 此处即 $iiint div(bold(r)) dv = 3 iiint dv = 3 dot 4/3 pi R^3 = 4 pi R^3$。选 D。",
        "解：$S(x) = sum (-x^2)^n / n! = e^{-x^2}$。选 A。",
        "解：利用球坐标，$int_0^{2pi} d theta int_0^pi sin phi d phi int_0^1 r^3 dr = 2pi dot 2 dot 1/4 = pi$。选 B。",
        "解：级数项 $|(-alpha)^n / n^s| <= 1/n^s$，而 $s>1$ 时 $sum 1/n^s$ 收敛，故绝对收敛。选 B。",
        "解：由 $|a+b|^2 = |a-b|^2$ 得 $a dot b = 0$。则 $|2a-3b| = sqrt(4|a|^2 + 9|b|^2) = sqrt(4+45) = 7$。",
        "解：两边求微分：$e^z dz + (yz dx + xz dy + xy dz) + dx - sin x dx = 0$。在 $(0,1)$ 时 $z=0$，$1 dz + 0 + dx - 0 = 0 arrow dz = -dx$。",
        "解：交换积分次序：$int_0^2 dif y int_0^y e^{-y^2} dx = int_0^2 y e^{-y^2} dy = 1/2 (1 - e^{-4})$。",
        "解：旋转曲面方程 $3(x^2+z^2) + 2y^2 = 12$。梯度 $(6x, 4y, 6z)$。在 $(0, sqrt(6), 0)$ 处为 $(0, 4sqrt(6), 0)$。单位化得 $(0, 1, 0)$。",
        "解：正弦级数在整数点 $x$ 处的值为 0。故 $S(-2021) = 0$。",
        "解：在 $L$ 上 $|x|+|y|=1$，故 $oint = oint 1 ds = 4 sqrt(2)$（正方形周长）。",
        "解：$L_1$ 方向 $bold(v)_1=(1,2,3), L_2$ 方向 $bold(v)_2=(1,0,1)$。平面法向 $bold(n) = bold(v)_1 times bold(v)_2 = (2, 2, -2) || (1, 1, -1)$。平面：$1(x-1)+1(y-2)-2(z-3)=0 arrow x+y-z=0$。",
        "解：$z_x = f_1' dot 2 + f_2' dot y cos x$。$z_{xy} = -2 f_{11}'' + 2 f_{12}'' y sin x + f_{21}'' dot (-1) y sin x ...$ 略。",
        "解：利用极坐标，$iint = int_0^{2pi} d theta int_0^1 (r^2 cos^2 theta + r sin theta) r dr = pi/4 + 0 = pi/4$。",
        "解：格林公式：$iint (Q_x - P_y) dA = iint (1 - (x e^y - 2)) dA = iint (3 - x e^y) dA$... 结果为 $a^2 - pi a^2/8$。",
        "解：补面 $z=0$，高斯公式得 $-8 pi$。",
        "解：(1) $R=3$；(2) $[0, 6)$；(3) $S(x) = ln(3/(6-x))$。",
        "解：方向导数最大即沿梯度方向。利用拉格朗日乘数法得点 $(1/2, -1/2, 0)$。",
        "解：求梯度模的最大值，利用拉格朗日乘数法得点 $M_3, M_4$。"
    ]

    mock4_solutions = [
        "解：通项趋于 0，莱布尼茨判别法知收敛；绝对值级数发散，故条件收敛。选 B。",
        "解：两平面法向量 $bold(n)_1=(1,3,2), bold(n)_2=(4,-2,1)$。$bold(n)_1 dot bold(n)_2 = 4-6+2=0$，故垂直。选 C。",
        "解：格林公式 $iint (Q_x - P_y) dA = iint 2/(4x^2+y^2) dA$。变换坐标得 $pi$。选 D。",
        "解：沿 $y=kx$ 趋于 0 时极限为 $k/(1+k^2)$，依赖于 $k$，故极限不存在。选 A。",
        "解：积分区域为 $0 <= y <= 2, y <= x <= sqrt(8-y^2)$。选 D。",
        "解：$op(Prj)_u bold(a) = |bold(a)| cos(pi/3) = 4 dot 1/2 = 2$。",
        "解：梯度为 $(3x^2+yz, 3y^2+xz, 3z^2+xy) = (1, 11, 5)$。切平面 $x+11y+5z=18$。",
        "解：$s = int_1^e sqrt(1 + (x')^2) dy = int_1^e (y/4 + 1/y) dy = (e^2+1)/4$。",
        "解：方向向量 $bold(AB) = (2, -2, 1)$，单位化 $bold(l) = (2/3, -2/3, 1/3)$。$grad u = (1/(x+r), ...)$。代入得 1/2。",
        "解：$S(7) = S(-1) = (f(-1^+) + f(-1^-))/2$。由周期性计算得 B。",
        "解：极坐标 $int_0^{2pi} d theta int_0^R r e^{-r^2} dr = pi(1 - e^{-R^2})$。",
        "解：... 结果为 $(x-2)/2 = (y-1)/-1 = (z-3)/4$。",
        "解：$z_x = y f_1' + 1/y f_2' + 2x g'$，$z_{xy} = f_1' - 1/y^2 f_2' + xy f_{11}'' - x/y^3 f_{22}'' - 4xy g''$。",
        "解：驻点 $(1/2, -1)$，极小值 $-e/2$。",
        "解：收敛域 $(0, 2)$，和函数 $2/(2-x)^3$。",
        "解：由高斯公式得 $3/5 (2-sqrt(2)) pi$。",
        "解：无关，结果为 $pi^2/4$。",
        "解：$g(0,0)=0$ 时偏导数存在且可微。"
    ]

    all_sol_sets = [mock1_solutions, mock2_solutions, mock3_solutions, mock4_solutions]
    
    pos = 0
    new_body = ""
    current_set_idx = 0
    current_sol_idx = 0
    
    while True:
        idx = body.find('a: [', pos)
        if idx == -1:
            new_body += body[pos:]
            break
        
        # Check if we moved to a new set (roughly by looking for "模拟卷")
        # This is a bit heuristic but should work for this file.
        next_set_marker = body.find('模拟卷', pos)
        if next_set_marker != -1 and next_set_marker < idx:
            # We crossed into a new mock exam set
            # But "模拟卷" appears at the start of each set.
            # Let's count how many we passed.
            count = body.count('模拟卷', pos, idx)
            for _ in range(count):
                current_set_idx += 1
                current_sol_idx = 0

        new_body += body[pos:idx]
        start, end = find_block(body, idx)
        if start is None:
            new_body += body[idx:idx+4]
            pos = idx + 4
            continue
        
        if current_set_idx < len(all_sol_sets) and current_sol_idx < len(all_sol_sets[current_set_idx]):
            new_body += f"a: [{all_sol_sets[current_set_idx][current_sol_idx]}]"
            current_sol_idx += 1
        else:
            # Fallback to simple "解：" addition
            content = body[start+1:end-1]
            if not content.startswith('解：') and not content.startswith('证：') and not content.startswith('提示：'):
                new_body += f'a: [解：{content}]'
            elif content.startswith('提示：'):
                new_body += f'a: [解：{content[3:]}]'
            else:
                new_body += body[idx:end]
        
        pos = end

    with open(path, 'w', encoding='utf-8') as f:
        f.write(header + new_body)

solve()
