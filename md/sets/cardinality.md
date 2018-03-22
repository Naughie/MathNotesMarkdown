---
title: '集合論'
author: 'M. Nakata'
---
\newcommand{\deli}{\,:\,}
\newcommand{\bb}[1]{\boldsymbol{#1}}
\renewcommand{\i}{\mathrm{i}}
\renewcommand{\bar}[1]{\overline{#1}}
\renewcommand{\le}{\leqslant}
\renewcommand{\ge}{\geqslant}
\newcommand{\qset}[2]{{#1}/\!\,{#2}}
\newcommand{\scr}[1]{\mathscr{#1}}
\renewcommand{\cal}[1]{\mathcal{#1}}
\newcommand{\pfrac}[2]{\frac{\partial #1}{\partial #2}}
\newcommand{\card}{\mathop{\mathrm{card}}\nolimits}
\newcommand{\Span}{\mathop{\mathrm{span}}}
\newcommand{\obj}{\mathop{\mathrm{obj}}}
\newcommand{\Hom}{\mathop{\mathrm{Hom}}}

#### 定義 {.definition .unnumbered}
2つの集合 $X$ と $Y$ は，$X$ から $Y$ への全単射が存在するとき**対等**（*equivalent*）であるといい，$X \cong Y$ と表す．この $\cong$ は集合間の同値関係になる（ただし，「集合全体の集合」は存在しない．すべての集合を集めたものは**類**（*class*）とよばれる．類においても集合と同じように同値関係を考えればよい）．集合 $X$ の同値類を $\card(X)$ と書き，$X$ の**濃度**（*cardinality*, *cardinal*）という．
$n$ 個の元からなる有限集合 $\{1, 2, \dotsc, n \}$ の濃度を $n$ で表す．さらに，$\aleph_0$ で $\bb N$ の濃度を，$\mathfrak c$ で $\bb R$ の濃度を表し，$\mathfrak c$ を**連続体濃度**（*cardinality of the continuum*）という．濃度が $\aleph_0$ であるような集合は**可算集合**（*countable set*）とよばれる．集合が有限集合か可算集合のいずれかであることを**高々可算**（*at most countable*）であるという．$\card(X) = \mathfrak m,\ \card(Y) = \mathfrak n$ であるような集合 $X,\ Y$ に対して，$Y^X$ の濃度を $\mathfrak n^{\mathfrak m}$ で表す．
$\{ X_\lambda \deli \lambda \in \Lambda \}$ を互いに素な集合族とするとき，濃度の和と積をそれぞれ
\begin{align*}
\sum_{\lambda \in \Lambda} \card(X_\lambda) &= \card(\coprod_{\lambda \in \Lambda} X_\lambda),\\
\prod_{\lambda \in \Lambda} \card(X_\lambda) &= \card(\prod_{\lambda \in \Lambda} X_\lambda)
\end{align*}
と定義する．$\Box$


以下では，[系](#equivalence-of-existence-of-injection-and-surjection)と[Bernsteinの定理](#bernstein-theorem)は一々断らない．

#### 補題 {.lemma .unnumbered}
濃度の和，積および冪乗はwell-definedである．すなわち，$\{ X_\lambda \deli \lambda \in \Lambda \}, \{ Y_\lambda \deli \lambda \in \Lambda \}$ をともに互いに素な集合族であって，各 $\lambda \in \Lambda$ に対して $\card(X_\lambda) = \card(Y_\lambda)$ なるものとすると，
\begin{align*}
\card(\coprod X_\lambda) &= \card(\coprod Y_\lambda),\\
\card(\prod X_\lambda) &= \card(\prod Y_\lambda),\\
\card(X_1^{X_2}) &= \card(Y_1^{Y_2}).\ \Box
\end{align*}

#### 証明 {.proof .unnumbered}
仮定より，全単射の族 $\{ f_\lambda \colon X_\lambda \to Y_\lambda \deli \lambda \in \Lambda \}$ が存在する．このとき
\begin{align*}
\coprod f_\lambda (x) &= f_{\mu}(x) \quad (\text{if}\ x \in X_\mu),\\
\left(\prod f_\lambda (x)\right)_\mu &= f_\mu (x_\mu)
\end{align*}
によって写像 $\coprod f_\lambda \colon \coprod X_\lambda \to \coprod Y_\lambda,\ \prod f_\lambda \colon \prod X_\lambda \to \prod Y_\lambda$ を定義すれば，これらは全単射である．まず $\coprod f_\lambda$ が全単射であることを示す．任意の $y \in Y_\mu$ に対して $\coprod f_\lambda(f_\mu^{-1}(y)) = y$ だから全射である．$\coprod f_\lambda (x) = \coprod f_\lambda (x')$ とすれば $x, x' \in X_\mu$ であるような $\mu$ が存在して，$f_\mu (x) = f_\mu (x')$．よって $f_\mu$ の単射性より $x = x'$．次に $\prod f_\lambda$ が全単射であることを示す．$\prod f_\lambda (x) = \prod f_\lambda (x')$ とすれば任意の $\mu$ に対して $f_\mu(x_\mu) = f_\mu (x'_\mu)$ であるから，$f_\mu$ が単射であることから $x_\mu = x'_\mu$．$\mu$ は任意だから $x = x'$ が従う．一方，任意の $y \in \prod Y_\lambda$ に対して，$x_\lambda = f_\lambda^{-1}(y_\lambda)$ によって $x \in \prod X_\lambda$ を定義すれば $\prod f_\lambda (x) = y$．よって $\prod f_\lambda$ は単射でもある．以上より，$\coprod f_\lambda$ と $\prod f_\lambda$ は全単射であるから，
\begin{align*}
\card(\coprod X_\lambda) &= \card(\coprod Y_\lambda),\\
\card(\prod X_\lambda) &= \card(\prod Y_\lambda).
\end{align*}
最後に，$f \colon X_2 \to X_1$ に $\hat f = f_1ff_2^{-1}$ を対応させれば，これが $X_1^{X_2}$ から $Y_1^{Y_2}$ への全単射となる．実際，$\hat f = \hat g$ ならば $f_1ff_2^{-1}
= f_1gf_2^{-1}$ であるから，$f = g$ となる．また，$h \colon Y_2 \to Y_1$ に対して $f = f_1^{-1}hf_2$ とおけば $\hat f = h$ となる．よって写像 $f \mapsto \hat f$ は全単射であり，
$$
\card(X_1^{X_2}) = \card(Y_1^{Y_2})
$$
が言える．$\Box$

#### 補題 {.lemma .unnumbered}
集合 $X$ と $Y$ が与えられたとし，$\mathfrak m = \card(X),\ \mathfrak n = \card(Y)$ とおく．単射 $\colon X \to Y$ が存在するとき $\mathfrak m \le \mathfrak n$ とすると，これは濃度の順序関係を定める．また，$\mathfrak m \le \mathfrak n$ であるための必要十分条件は全射 $\colon Y \to X$ が存在することである．$\Box$

#### 証明 {.proof .unnumbered}
$\mathfrak m \le \mathfrak n$ の必要十分条件が全射 $\colon Y \to X$ の存在であることはよい．
$\le$ が順序関係であることを確かめる．まず，全単射 $1_X \colon X \to X$ が存在するから $\mathfrak m \le \mathfrak m$ である．$\mathfrak m \le \mathfrak n$ かつ $\mathfrak n \le \mathfrak m$ のとき単射 $\colon X \to Y$ および $\colon Y \to X$ が存在するから，全単射 $\colon X \to Y$ が存在する．
従って $\mathfrak m = \mathfrak n$．最後に，$X, Y, Z$ は集合で $\mathfrak m = \card(X),\ \mathfrak n = \card(Y),\ \mathfrak l = \card(Z)$ とおき，$\mathfrak m \le \mathfrak n$ かつ $\mathfrak n \le \mathfrak l$ とする．このとき2つの単射 $f \colon X \to Y$ および $g \colon Y \to Z$ が存在する．$gf \colon X \to Z$ は単射である．実際，$gf(x) = gf(x')$ ならば $f(x) = f(x')$，従って $x = x'$．よって $X$ から $Z$ への単射が存在するから $\mathfrak m \le \mathfrak l$．
以上で $\le$ が順序関係であることを示せた．$\Box$

#### 命題 {.proposition .unnumbered}
$a, b \in \bb R,\ a \lt b$ とする．
\begin{align}
&\card(\bb Z) = \card(\bb Q) = \aleph_0,\\
&\card([a, b]) = \card((a, b)) = \mathfrak c,\\
&2^{\aleph_0} = \mathfrak c,\\
&2 \le \mathfrak n \Longrightarrow \mathfrak m \lt \mathfrak n^{\mathfrak m}.
\end{align}
ここで，$[a,b] = \{ x \in \bb R \deli a \le x \le b \}$ を**閉区間**（*closed interval*）といい，$(a, b) = \{ x \in \bb R \deli a \lt x \lt b \}$ を**開区間**（*open interval*）という．

ここから特に，$\aleph_0 \lt \mathfrak c$ が分かる．

#### 証明 {.proof .unnumbered}
##### (1)の証明 {.unnumbered}
$n \in \bb N$ に対して，$\phi(2n - 1) = -n,\ \phi(2n) = n - 1$ とすれば，$\phi \colon \bb N \to \bb Z$ は全単射となる．よって $\card(\bb Z) = \aleph_0$．$\bb N$ から $\bb Q$ への全単射を式で表すのは難しい．有理数列 $\{ a_n \}$ を次の数列とする：
$$
0, 1, \frac 12,  \frac 13, \frac 23, \frac 34, \frac 14, \frac 15, \frac 25, \frac 35, \frac 45, \frac 56, \frac 16, \frac 17, \frac 27, \dotsc
$$
具体的には以下の手順で求める：

1. $n/m\ (m, n \in \bb N,\ 1 \le n \le m)$ の形の有理数を，$1 / (2q - 1), \dotsc, (2q - 1) / (2q - 1), 2q / 2q, \dotsc, 1 / 2q$ の順番で並べる．
2. 並べた有理数を順番に見ていき，約分した結果すでに現れた有理数と等しくなるものは除外する．
3. 残った有理数を順番に番号付ける．

こうして $\{ a_n \}$ を得る．この構成から分かるように，$\bb Q' = \{ x \in \bb Q \deli 0 \le x \le 1 \}$ とおくと，写像 $n \mapsto a_n$ は $\bb N$ から $\bb Q'$ への全単射になる．あとは $\bb Q'$ と $\bb Q$ が対等であることを示せばよい．$\bb Q'$ は $\bb Q$ の部分集合である $\bb Q'$ 自身と対等であるのは明らかだから，$\bb Q$ から $\bb Q'' = \{ x \in \bb Q \deli 0 \lt x \lt 1 \} \subset \bb Q'$ への全単射の存在を言う．$x \in \bb Q''$ に対して，
\begin{align*}
\psi(x) = \left\{ \begin{array}{ll} \frac{x - 1/2}x = 1 - \frac 1{2x} & (\text{if}\ x \le \frac 12),\\
\frac{x - 1/2}{1 - x} = -1 + \frac 1{2(1 - x)} & (\text{if}\ x \gt \frac 12) \end{array} \right.
\end{align*}
とすると，$\psi \colon \bb Q'' \to \bb Q$ は全単射である．実際，$x \lt x' \lt 1/2 \lt y \lt y'$ のとき $\psi(x) \lt \psi(x') \lt \psi(1/2) = 0 \lt \psi(y) \lt \psi(y')$ だから，$\psi$ は単射．また，任意に $z \in \bb Q$ を取ると，$z \gt 0$ ならば
$$
\frac 12 \lt \frac{2z + 1}{2(z + 1)} \lt 1,\quad \psi\left( \frac{2z + 1}{2(z + 1)} \right) = z
$$
となり，$z \lt 0$ ならば
$$
0 \lt \frac 1{2(1 - z)} \lt \frac 12,\quad \psi\left( \frac 1{2(1 - z)} \right) = z
$$
となるから，$\psi$ は全射でもある．よって $\bb Q''$ と $\bb Q$ は対等であり，従って $\card(\bb Q) = \card(\bb Q') = \aleph_0$．

##### (2)の証明 {.unnumbered}
まず $\card((a, b)) = \mathfrak c$ は，
$$
f(x) = \tan\left( \frac \pi2 \cdot \frac{2x - (a + b)}{b - a} \right)
$$
によって定まる写像 $f \colon (a, b) \to \bb R$ が全単射であることから分かる．次に $\card([a, b]) = \mathfrak c$ を考える．$\bb R$ と $(a, b) \subset [a, b]$ が対等であることは示した．当然 $[a, b]$ は $[a, b] \subset \bb R$ と対等だから，結局 $[a, b]$ と $\bb R$ は対等で，$\card([a, b]) = \mathfrak c$．

##### (3)の証明 {.unnumbered}
$2^{\bb N}$ から開区間 $(0, 1)$ への単射と全射をそれぞれ構成する．以下，簡単のため $2 = \{ 0, 1 \}$ と書く．写像 $f \colon \bb N \to 2$ に対して
\begin{align*}
B_f^{(n)} &= \sum_{k = 1}^n \frac{f_k}{2^k},&\quad B_f &= \sum_{k = 1}^\infty \frac{f_k}{2^k},\\
T_f^{(n)} &= \sum_{k = 1}^n \frac{f_k}{3^k},&\quad T_f &= \sum_{k = 1}^\infty \frac{f_k}{3^k},\\
\end{align*}
とおき，
\begin{align*}
\beta(f) &= \left\{ \begin{array}{ll} B_f & (\text{if}\ B_f \in (0, 1)),\\ \frac 12 & (\text{if}\ B_f \notin (0, 1)), \end{array} \right. \\
\tau(f) &= \left\{ \begin{array}{ll} T_f & (\text{if}\ T_f \in (0, 1)),\\ \frac 23 & (\text{if}\ T_f \notin (0, 1)), \end{array} \right. \\
\end{align*}
と定義する（$B$ はbinary，$T$ はternaryの頭文字）．このとき，$\beta \colon 2^{\bb N} \to (0, 1)$ は全射で $\tau \colon 2^{\bb N} \to (0, 1)$ は単射であることを示す．

任意の実数 $r \in (0, 1)$ は2進少数展開 $r = \sum r_k 2^{-k}$ を持つ．そこで写像 $R \colon n \mapsto r_n$ を考えれば，$\beta(R) = B_R = r$．よって $\beta$ は全射．次に，$f, g \colon \bb N \to 2$ であって，$f \neq g,\ \tau(f) = \tau(g)$ なるものが存在したとする．もし $\tau(f) = \tau(g) = 2/3$ ならば，$T_f = T_g = 0$ より $f = g = 0$ が従うから，$\tau(f) = \tau(g) \neq 2/3$（$0 \le T_f \le 1/2$ に注意）．このとき $T_f = T_g$．$f \neq g$ であるから，$f_n \neq g_n$ となる $n \in \bb N$ が存在する．そのような $n$ のうち最小のものを $m$ とすると，
$$
T_f^{(n)} = T_g^{(n)} \ (n \lt m), \quad T_f^{(m)} \neq T_g^{(m)}.
$$
そこで，$f_m = 1 \gt 0 = g_m$ としてもよく，そのとき $T_f^{(m)} \gt T_g^{(m)}$ が成立つ．さて，新しい写像 $f', g' \colon \bb N \to 2$ を，
\begin{align*}
f'_n &= f_n \ (n \le m), &\quad f'_n &= 0 \ (n \gt m),\\
g'_n &= g_n \ (n \le m), &\quad g'_n &= 1 \ (n \gt m)
\end{align*}
と定義する．すると，簡単な計算より，
\begin{align*}
T_{f'} &= T_f^{(m - 1)} + \frac 1{3^m},\\
T_{g'} &= T_g^{(m - 1)} + \frac 1{2 \cdot 3^m},\\
\end{align*}
が分かる．ここから $T_g \le T_{g'} \lt T_{f'} \le T_f$ となるから，$T_f \neq T_g$．従って $\tau$ の単射性が示された．

以上より $2^{\aleph_0} = \card((0, 1)) = \mathfrak c$ となる．

##### (4)の証明 {.unnumbered}
この証明は**Cantorの対角線論法**（*Cantor's diagonal argument*）とよばれる．$X, Y$ を集合として，$\mathfrak m = \card(X),\ \mathfrak n = \card(Y)$ とおく．$\mathfrak n \ge 2$
 とする．単射 $\colon X \to Y^X$ の存在はすぐに分かる．たとえば $Y$ の異なる2元 $a, b \in Y$ を選び（$\mathfrak n \ge 2$ だから選ぶことができる），$x \in X$ に対して
$\chi_x(x) = a$，$y \neq x$ のとき $\chi_x(y) = b$ とすれば，写像 $x \mapsto \chi_x$ が単射である．
 全射 $\colon X \to Y^X$ が存在しないことを示すために，$f \colon X \to Y^X$ を全射とする．

ここで，写像 $g \colon X \to Y$ を，$f(x)(x) = a$ のとき $g(x) = b$，$f(x)(x) \neq a$ のとき $g(x) = a$ と定義すれば $g \notin f(X)$ である．実際各 $x \in X$ に対して $g(x) \neq f(x)(x)$ となり，$g = f(y)$ なる $y \in X$ は存在しない．これは $f$ が全射でないことを意味するから矛盾．よって $X$ から $Y^X$ への全射は存在せず，従って $\mathfrak m \lt \mathfrak n^{\mathfrak m}$．$\Box$
