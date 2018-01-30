---
title: '線形空間'
author: 'M. Nakata'
---
\newcommand{\deli}{\,:\,}
\newcommand{\bb}{\boldsymbol}
\renewcommand{\bar}{\overline}
\renewcommand{\scr}{\mathscr}
\renewcommand{\cal}{\mathcal}
\newcommand{\span}{\mathrm{span}\,}

# 参考文献
- 斎藤正彦『線型代数入門』（東京大学出版会）
- 新井朝雄『物理現象の数学的諸原理 現代数理物理学入門』（共立出版）
- Loring W. Tu. *An Introduction to Manifolds*. Springer.

# 導入 {#linear-algebra-introduction}
ここでは主に有限次元ベクトル空間について考える．無限次元ベクトル空間は難しいが，そこに内積が定義されていると幾分か簡単になる．内積が定義されたベクトル空間は（プレ）ヒルベルト空間とよばれ，関数解析学で扱う．ベクトル空間は群の表現論やLie代数，多様体など，数学のあらゆる分野で基礎的な理論となる．ベクトル空間を一般化した加群とよばれるものはホモロジー代数の中心をなす．物理学においても，古典論ではベクトル解析やテンソル解析は欠かせないし，相対論では微分幾何学が，量子論ではヒルベルト空間の理論が使われる．このように，数学を学ぶうえで微分積分学と並んで最も重要になるのが線形代数学である．

## ベクトル空間 {#vector-spaces}

#### 定義 {#vector-space-def .definition}
Abel群 $V$ に体 $F$ が作用していて次の**分配律**（*distributive laws*）をみたすとき，$V$ を $F$ 上の**ベクトル空間**（*vector space*）あるいは**線形空間**（*linear space*）という：

- 任意の $u, v \in V$ と任意の $\mu, \lambda \in F$ に対して，$\lambda (u + v) = \lambda u + \lambda v,\ (\lambda + \mu) v = \lambda v + \mu v$.

$V$ の元を**ベクトル**（*vector*），$F$ の元を**スカラー**（*scalar*）とよぶ．$F$ のことを**係数体**（*coefficient field*）とよび，$F$ による作用を**スカラー倍**（*scalar multiple*）という．$F = \bb R$ のとき，とくに**実ベクトル空間**（*real vector space*），$F = \bb C$ のとき**複素ベクトル空間**（*complex vector space*）という．$\Box$

#### 定義 {#linear-subspace .definition}
体 $F$ 上のベクトル空間 $V$ の部分集合 $U$ が $V$ の**線型部分空間**（*linear subspace*）あるいは**部分ベクトル空間**（*vector subspace*）であるとは，$0 \in U$ であって任意のベクトル $u, v \in U$ とスカラー $\lambda \in F$ に対して $u + v, \lambda u \in U$ が成立つことをいう．言い換えれば，$U$ が $V$ と同じ演算についてそれ自身ベクトル空間になっているとき，線型部分空間という．$\Box$

#### 定義 {#operation-of-spaces .definition}
$V$ を体 $F$ 上のベクトル空間とする．ベクトル $v \in V$，スカラー $\lambda \in F$ および $V$ の2つの線型部分空間 $U_1, U_2 \subset V$ に対して
\begin{align*}
Fv &= \{ \lambda' v \deli \lambda' \in F \},\\
\lambda U_1 &= \{ \lambda u \deli u \in U_1 \},\\
U_1 + U_2 &= \{ u_1 + u_2 \deli u_1 \in U_1,\ u_2 \in U_2 \},\\
U_1 - U_2 &= \{ u_1 - u_2 \deli u_1 \in U_1,\ u_2 \in U_2 \}
\end{align*}
とおく．$\Box$

#### 定義 {#linear-independence .definition}
$V$ を体 $F$ 上のベクトル空間とする．$V$ の部分集合 $\{ u_1, \dotsc, u_n \} \subset V$ が**線形独立**（*linear independent*）あるいは**一次独立**であるとは，あるスカラー $\lambda_1, \dotsc, \lambda_n \in F$ に対して $\lambda_1 u_1 + \dotsb + \lambda_n u_n = 0$ となれば $\lambda_1 = \dotsb = \lambda_n = 0$ であることをいう．線形独立でないとき，**線形従属**（*linear dependent*）であるという．$\Box$

#### 定義 {#spanned-space .definition}
$V$ を体 $F$ 上のベクトル空間とする．$V$ の部分集合 $U \subset V$ に対して，
$$
\span U = \{ \sum_{i = 1}^n \lambda_i u_i \deli n \in \bb N,\ \lambda_i \in F,\ u_i \in U \ (1 \le i \le n) \}
$$
とおく．$U$ が有限個のベクトル $\{ u_1, \dotsc, u_n \}$ から成るとき，
$$
\span U = \sum Fu_i
$$
である．$\sum_{i = 1}^n \lambda_i u_i \ (\lambda_i \in F, u_i \in U)$ で表される $\span U$ の各ベクトルのことを $u_1, \dotsc, u_n$ の**線形結合**（*linear combination*）とよぶ．

$\span U$ を $U$ によって**張られる**（*spanned*）空間といい，$U$ は $\span U$ を**張る**（*spans*）という．$\Box$

#### 定義 {#basis-for-vector-space .definition}
$V$ を体 $F$ 上のベクトル空間，$B \subset V$ をその部分集合とする．$B$ が線形独立でかつ $V$ を張るとき，$B$ を $V$ の**基底**（*basis*）という．$B$ の各ベクトルが $\Lambda$ を添字集合として $e_\lambda \ (\lambda \in \Lambda)$ と書けるとき，$B$ を $(e_\lambda)_{\lambda \in \Lambda}$ あるいは単に $(e_\lambda)$ と表す．$\Box$

#### 補題 {#number-of-basis-is-inv .lemma}
体 $F$ 上のベクトル空間 $V$ の基底 $B$ で $|B| = n \lt \infty$ なるものが存在すれば，任意の $n + 1$ 個のベクトルは線形従属である．

#### 証明 {.proof}
$B = (e_i)_{i = 1}^n \subset V$ を $V$ の基底とすると，任意の $n + 1$ 個のベクトル $v_1, \dotsc, v_{n+1} \in V$ は
\begin{align}
v_i = \sum_{j = 1}^n v_i^{(j)} e_j \quad (i = 1, \dotsc, n + 1)
\end{align}
と書ける．もしこれらが線形独立ならば，スカラー $\lambda_1, \dotsc, \lambda_{n+1} \in F$ が $\sum_{i = 1}^{n + 1} \lambda_i v_i = 0$ をみたすとき $\lambda_1 = \dotsb = \lambda_{n + 1} = 0$ である．一方，
\begin{align*}
\sum_{i = 1}^{n + 1} \lambda_i v_i = \sum_{i = 1}^{n + 1} \lambda_i \sum_{j = 1}^n v_i^{(j)} e_j = \sum_{j = 1}^n \left( \sum_{i = 1}^{n + 1} \lambda_i v_i^{(j)} \right) e_j
\end{align*}
だから，$B$ の線形独立性より，$\sum_{i = 1}^{n + 1} \lambda_i v_i^{(j)} = 0,\ j = 1, \dotsc, n$．これを $n + 1$ 個の変数 $\lambda_1, \dotsc, \lambda_{n+1}$ について解くと，行列論により非自明な解が存在する，すなわち $\sum_{i = 1}^{n + 1} \lambda_i v_i^{(j)} = 0,\ j = 1, \dotsc, n$ であって，ある $\lambda_k$ について $\lambda_k \neq 0$ となるようなスカラー $\lambda_1, \dotsc, \lambda_{n+1} \in F$ が存在する．これは $\{ v_1, \dotsc, v_{n + 1} \}$ が線形従属であることを意味する．
$\Box$

#### 定義 {#dimension-of-vector-space .definition}
[補題](#number-of-basis-is-inv)より，ベクトル空間 $V$ に $|B| = n \lt \infty$ なる基底 $B \subset V$ が存在するとき，$n$ は基底の取り方に依らない．
これを $\dim V = n$ と書いて $V$ の**次元**（*dimension*）という．このとき $V$ は**有限次元**（*finite dimensional*）であるといい，$\dim V \lt \infty$ とも表す．

どのような自然数 $n \in \bb N$ に対しても，$|B| = n$ となる線形独立な部分集合 $B \subset V$ が存在するとき，$V$ は**無限次元**（*infinite dimensional*）といい，$\dim V = \infty$ と表す．$\Box$

#### 定義 {#components-of-vector-in-finite-dimensional-space .definition}
体 $F$ 上の $n$ 次元ベクトル空間 $V$ に基底 $B = (e_i)$ を1つ定めると，$V$ の任意のベクトル $v \in V$ は $(e_i)$ の線形結合で表せる．$v = \sum_{i = 1}^n v_i e_i$ のとき，$v_i \in F$ を $v$ の基底 $B$ に関する**第 $i$ 成分**（*$i$-th component*）という．このとき，$v = (v_1, \dotsc, v_n)$ あるいは単に $v = (v_i)$ と表す．$\Box$

#### 定義 {#linear-map .definition}
$V$ と $W$ を同じ係数体 $F$ 上のベクトル空間とする．$V$ から $W$ への写像 $T \colon V \to W$ が次の**線形性**（*linearity*）をみたすとき，$T$ を $V$ から $W$ への**線形写像**（*linear map*）あるいは**線形作用素**（*linear operator*）という：

1. 任意のベクトル $u, v \in V$ に対して $T(u + v) = T(u) + T(v)$，
2. 任意のベクトル $u \in V$ とスカラー $\lambda \in F$ に対して $T(\lambda u) = \lambda T(u)$．

$T(u)$ を $Tu$ や $\langle T, u \rangle$ のようにも書く．

$V$ から $W$ への線形写像全体の集合を $\cal L(V, W)$ と表す．また，$W = F$ を $F$ 上の1次元ベクトル空間とみたとき，$V^* = \cal L(V, F)$ を $V$ の**双対空間**（*dual space*）という．$\Box$

#### 例 {.example}

   i) 数ベクトル空間 $F^n$ は，自然に定義された和とスカラー倍によって $F$ 上のベクトル空間となる．とくに，$M_n(F) = F^{n^2}$ は $F$ 上の $n$ 次正方行列全体のベクトル空間であり，行列の間に非可換な積が定まっている．
