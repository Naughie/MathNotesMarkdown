---
title: '位相空間論'
author: 'M. Nakata'
---
\newcommand{\deli}{\,:\,}
\newcommand{\bb}[1]{\boldsymbol{#1}}
\renewcommand{\bar}{\overline}
\renewcommand{\scr}{\mathscr}

# 参考文献
- 松坂和夫『集合・位相入門』（岩波書店）
- 内田伏一『数学シリーズ 集合と位相』（裳華房）
- 兒玉之宏，永見啓応『位相空間論』（岩波書店）
- John Kelley. *General Topology*. Springer.

# 導入 {#topology-introduction}
位相空間論では集合間の写像の連続性や集合の連結性などについて扱いたい．そのために，集合に「位相」とよばれる数学的構造を導入する．

その前に距離空間を考える．距離空間は最も簡単な位相空間の例であり，Euclid空間とほぼ同じ議論をすることができる．

## 距離空間 {#metric-space}
#### 定義 {#metric-space-def .definition}
集合 $X$ と写像 $d \colon X \times X \to \bb R$ が与えられたとする．$d$ が $X$ 上の**距離**（*metric*）であるとは，次の条件をみたすことをいう：
\begin{align}
& d(x, y) \ge 0 \ \forall x, y \in X,\\
& d(x, y) = 0 \Longleftrightarrow x = y,\\
& d(x, y) = d(y, x) \ \forall x, y \in X,\\
& d(x, y) \le d(x, z) + d(z, y) \ \forall x, y, z \in X.
\end{align}
(1)と(2)を合わせて**正定値性**（*positive definiteness*），(3)を**対称性**（*symmetric property*）という．(4)の不等式を**三角不等式**（*triangle inequality*）という．

集合 $X$ 上に距離 $d$ が定義されたとき，これらを組にして $(X, d)$ を**距離空間**（*meric space*）とよぶ．$d$ を明示する必要がない場合は単に $X$ と書いて距離空間 $(X, d)$ を表す．
$\Box$

#### 例 {.example}
  i) $\bb R^n$ 上にいくつかの種類の距離を定めることができる（$x = (x_i), y = (y_i) \in \bb R^n$ とする）：
     - $d_\infty (x, y) = \max \{ | x_i - y_i |\}$，
     - $d_p (x, y) = ( \sum (x_i - y_i)^p )^{ 1/p }\ ( p \in \bb N)$．この $d_p$ が距離であることの証明は簡単ではない．$p = 2$ のときはCauchy-Schwarzの不等式から従う．
 ii) 任意の集合 $X$ に対して**自明な距離**（*trivial metric*）$d$ が定まる．すなわち，$x , y \in X$ のとき $x = y$ ならば $d(x, y) = 0$，$x \neq y$ ならば $d(x,y) = 1$ とする．明らかに，この $d$ は距離となる．

以下，単に $\bb R^n$ と言ったときは常に距離 $d_2$ が定まってるものとする．$\Box$

#### 定義 {#open-disk .definition}
$(X, d)$ を距離空間とする．$x \in X,\ \epsilon > 0$ に対して，
$$
B(x, \epsilon) = \{ y \in X \deli d(x, y) \lt \epsilon \}
$$
を $x$ を中心とする半径 $\epsilon$ の**開球**（*open ball*）あるいは $x$ の **$\epsilon$-近傍**（*$\epsilon$-neighborhood*）とよぶ．とくに，$\epsilon = 1$ のとき**単位球**（*unit ball*）とよぶ．
また，
$$
\bar B(x, \epsilon) = \{ y \in X \deli d(x, y) \le \epsilon \}
$$
を $x$ を中心とする半径 $\epsilon$ の**閉球**（*closed ball*）とよぶ．$\Box$

#### 定義 {#sequence-limit .definition}
$(X, d)$ を距離空間とする．$X$ 上の点列 $\{ x_n \} \subset X$ が点 $x \in X$ に**収束する**（*converges to*）とは，任意の正数 $\epsilon > 0$ に対してある番号 $N \in \bb N$ が存在して，$n \ge N$ なるときいつも $d(x_n, x) \lt \epsilon$ であることをいう．このとき，極限の点 $x$ は一意に定まり，$x = \lim_{n \to \infty} x_n$ あるいは単に $x = \lim x_n$ と書く．$x_n \to x \ (n \to \infty)$ とも表す．

点列 $\{ x_n \}$ が**Cauchy列**（*Cauchy sequence*）であるとは，任意の正数 $\epsilon > 0$ に対してある番号 $N \in \bb N$ が存在して，$n, m \ge N$ なるときいつも $d(x_n, x_m) \lt \epsilon$ であることをいう．

記号で書けば，$X$ 上の点列 $\{ x_n \}$ は
$$
\exists x \in X,\ \forall \epsilon > 0,\ \exists N \in \bb N \ \text{s.t.}\ n \ge N \Longrightarrow d(x, x_n) \lt \epsilon
$$
なるとき $x$ に収束するといい，
$$
\forall \epsilon > 0,\ \exists N \in \bb N \ \text{s.t.}\ n, m \ge N \Longrightarrow d(x_n, x_m) \lt \epsilon
$$
なるときCauchy列という．$\Box$

距離空間では，Euclid空間と全く同様にして開集合や閉集合，閉包などが定義される．

#### 定義 {#open-set-with-metric .definition}
$(X, d)$ を距離空間とする．$X$ の部分集合 $A \subset X$ が**開集合**（*open set*）であるとは，任意の $x \in A$ に対してある $\epsilon > 0$ が存在して，$B(x, \epsilon) \subset A$ とできることをいう．記号で書けば，
$$
\forall x \in A,\ \exists \epsilon > 0 \ \text{s.t.}\ B(x, \epsilon) \subset A
$$
なるとき $A$ を開集合とよぶ．

$X$ の部分集合 $A \subset X$ 上の任意の収束列が $A$ 上の点に収束するとき，$A$ を**閉集合**（*closed set*）という．$\Box$

#### 例 {.example}
  i) 任意の距離空間 $X$ はそれ自身開集合でかつ閉集合でもある．
 ii) 開球は開集合で，閉球は閉集合である．
iii) $I_n = [0, 1] \times \dotsb \times [0, 1] \subset \bb R^n$ は $\bb R^n$ の閉集合である．$\Box$

#### 補題 {#open-closed-duality .lemma}
$(X, d)$ を距離空間とする．$X$ の部分集合 $A \subset X$ について，

1. $A$ が開集合 $\Longleftrightarrow$ $A^c$ が閉集合;
2. $A$ が閉集合 $\Longleftrightarrow$ $A^c$ が開集合

である．$\Box$

#### 証明 {.proof}
一般に $(A^c)^c = A$ であるから，1.において $A$ を $A^c$ で置き換えれば2.が従う．よって，1.の同値関係を示す．
$A$ が開集合として，$A^c$ 上の収束列 $\{ x_n \}$ で $A^c$ に収束しない，すなわち $A$ の点 $x \in A$ に収束するものを考える．$x$ は $A$ に属するから，ある正数 $\epsilon$ に対して $B(x, \epsilon) \subset A$ が成立つ．点列 $\{ x_n \}$ の収束性より，この $\epsilon$ に対してある番号 $N \in \bb N$ が存在して，$n \ge N$ ならば $d(x, x_n) \lt \epsilon$ となる．これは $n \ge N$ のとき $x_n \in B(x, \epsilon)$ となることを意味するが，そのとき $x_n \in A$ であるから矛盾．よって $A^c$ 上の収束性はすべて $A^c$ の点に収束し，$A^c$ は閉集合である．

次に $A^c$ は閉集合とする．$A$ が開集合でないとき，どんな正数 $\epsilon > 0$ をとっても $B(x, \epsilon) \subset A$ とできないような $A$ の点 $x$ が存在する．よって，任意の正数 $\epsilon > 0$ に対して $y_\epsilon \in B(x, \epsilon) \setminus A$ となる点 $y_\epsilon \in X$ をとれる．そこで，点列 $\{ y_{1/n} \}$ を考えると，$y_{1/n} \notin A$ であるからこれは $A^c$ 上の点列になっている．任意の正数 $\epsilon > 0$ に対して，$1/n \lt \epsilon$ ならば $y_{1/n} \in B(x, 1/n) \subset B(x, \epsilon)$ であるから $d(x, y_{1/n}) \lt \epsilon$．これより，点列 $\{ y_{1/n} \}$ は $x$ に収束することが分かるが，これは $A^c$ が閉集合であることに矛盾する．よって，$A$ は開集合である．$\Box$

#### 定理 {#fundamental-properties-of-openness .theorem}
$(X, d)$ を距離空間とする．$X$ のすべての開集合からなる集合族を $\scr T$，すべての閉集合からなる集合族を $\scr F$ とすると，次が成立つ：

  i) $\emptyset, X \in \scr T$，
 ii) $X$ の任意の開集合 $U, V \in \scr T$ に対して $U \cap V \in \scr T$，
iii) $X$ の任意の開集合系 $\scr U \subset \scr T$ に対して $\scr U^\# \in \scr T$;
 iv) $\emptyset, X \in \scr F$，
  v) $X$ の任意の閉集合 $U, V \in \scr F$ に対して $U \cup V \in \scr F$，
 vi) $X$ の任意の閉集合系 $\scr U \subset \scr F$ に対して $\bigcap_{ U \in \scr F } U \in \scr F$．$\Box$

#### 証明 {.proof}
[補題](#open-closed-duality)とde Morganの定理より，i.，ii.，iii.を示せば十分である．
$X \in \scr T$ はよい．$\emptyset \in \scr T$ は $\emptyset^c = X \in \scr F$ から分かる．ii.を示す．2つの開集合 $U, V \in \scr T$ が互いに素のとき，$U \cap V = \emptyset$ は開集合である．$U \cap V \neq \emptyset$ のとき，$U \cap V$ の元 $x \in U \cap V$ を任意に選ぶ．$x \in U$ であるから，ある正数 $\epsilon_1 > 0$ が存在して $B(x, \epsilon_1) \subset U$ となる．同様に，ある正数 $\epsilon_2 > 0$ が存在して $B(x, \epsilon_2) \subset V$ となる．ここで $\epsilon = \min \{ \epsilon_1, \epsilon_2 \}$ とおけば，$B(x, \epsilon) \subset U \cap V$ となる．実際，$y \in B(x, \epsilon)$ とすると，$d(x, y) \lt \epsilon \le \epsilon_1$ だから $y \in B(x, \epsilon_1)$，従って $y \in U$．同様に $y \in V$ も示せるから $y \in U \cap V$，すなわち $B(x, \epsilon) \subset U \cap V$．よって，$U \cap V$ は開集合である．

$\scr U^\#$ が空でないような開集合系 $\scr U \subset \scr T$ をとる．$x \in \scr U^\#$ とすると $x$ はある開集合 $U \in \scr U$ に属する．このとき $B(x, \epsilon) \subset U$ となる正数 $\epsilon > 0$ が存在し，$B(x, \epsilon) \subset \scr U^\#$ となる．よって $\scr U^\#$ も開集合．$\Box$

有限個の開集合については，共通部分も和集合も開集合である．しかし，無限個の開集合の場合，その共通部分は開集合になるとは限らない（和集合は開集合になる）．
同様に，無限個の閉集合の和集合が閉集合になるとは限らない．

#### 例 {.example}
  i) $X = \bb R$ として，その開集合系 $\{ A_n \subset \bb R \}$ を $A_n = (-1 - 1/n, 1 + 1/n)$ とする．このとき，$\bigcap A_n = [-1, 1]$ は開集合でない．
 ii) 同じく $X = \bb R$ で $I = (0, 1)$ とおき，その閉部分集合系 $\{ B_x \subset I \deli x \in I \}$ を $B_x = [x - \epsilon_x , x + \epsilon_x]$ と定める．ただし，$\epsilon_x = \min \{ x/2, (1-x)/2 \}$ である．すると，$\bigcup_{x \in I} B_x = I$ は閉集合でない．$\Box$
