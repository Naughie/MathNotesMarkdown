---
title: '集合論'
author: 'M. Nakata'
---
\newcommand{\deli}{\,:\,}
\newcommand{\bb}{\boldsymbol}
\newcommand{\i}{\mathrm{i}}

# 参考文献
- 松坂和夫『集合・位相入門』（岩波書店）
- 内田伏一『数学シリーズ 集合と位相』（裳華房）
- 兒玉之宏，永見啓応『位相空間論』（岩波書店）

# 導入 {#sets-introduction}
ここでは，集合を厳密には定義しない．これを厳密に扱う分野は数学基礎論とよばれる．基礎論の内容は抽象的で難しいため，別に解説する．差し当たっては簡単に（ただし多くの教科書が採っている方法で）集合を定義した後，集合論を展開する．

## 集合の書き方
何らかのものの集まりを，**集合**（*set*）あるいは**族**（*family*），**系**（*system*）という．集合を構成している個々のもののことをその集合の**元**（*element*, *member*）あるいは**要素**とよぶ．$x$ がある集合 $X$ の元であることを $x \in X$ または $X \ni x$ と表す．このとき，$x$ は $X$ に**属する**（*belongs to*）あるいは**含まれる**（*is contained in*）といい，また $X$ は $x$ を**含む**（*contains*）という．$x \in X$ でないことを $x \notin X$ と書く．

2つの集合 $X$ と $Y$ が与えられたとき，$x \in X$ のときいつも $x \in Y$ でもあるとき，$X$ は $Y$ の**部分集合**（*subset*）であるといい，$X \subset Y$ あるいは $Y \supset X$ と書く．$X \subset Y$ のとき，$X$ は $Y$ に**含まれる**（*is contained in*），あるいは $Y$ は $X$ を**含む**（*contains*）ともいう．$X \subset Y$ かつ $Y \subset X$ であるとき，$X$ と $Y$ は**同じ集合**（*identical sets*）といい，$X = Y$ と表す．$X \subset Y$ であるが $X = Y$ でないとき，すなわち $X$ の元 $x \in X$ であって $x \notin Y$ なるものが存在するとき，$X$ は $Y$ の**真部分集合**（*proper set*）といい，$X \subsetneq Y$ と書く．$X$ の元1つのみからなる部分集合 $\{ x \} \subset X$ を**シングルトン**（*singleton*）という．
2つの集合 $X$ と $Y$ に対して，$X$ または $Y$ に属する元の集合を $X$ と $Y$ の**和集合**（*union*）あるいは単に**和**（*sum*）といい，$X$ の元でもあり同時に $Y$ の元でもあるようなものの集合を $X$ と $Y$ の**共通部分**（*intersection*）という．和集合と共通部分をそれぞれ $X \cup Y$，$X \cap Y$ で表す．$X$ の元のうち $Y$ には属さない元の集合を $Y$ の $X$ における**補集合**（*complement*）といい，$X \setminus Y$ と書く．文脈上明らかな場合は単に $Y^c$ と書いて $X$ における補集合を表す．

集合 $X$ の元がある条件 $P$ をみたすもの全体であるとき，$X = \{ a \deli P \}$ と表す．$X = \{ a \mid P \}$ と書くこともある．$\alpha, \beta, \gamma, \dotsc$ 等で $X$ の元を代表して $X = \{ \alpha, \beta, \gamma, \dotsc \}$ などと書いてもよい．これによれば，和集合，共通部分，補集合はそれぞれ
\begin{align}
X \cup Y &= \{ a \deli a \in X \ \text{または} \ a \in Y \},\\
X \cap Y &= \{ a \deli a \in X \ \text{かつ}   \ a \in Y \},\\
X \setminus Y &= \{ a \deli a \in X \ \text{かつ} \ a \notin Y \}
\end{align}
となる．集合 $X \setminus X$ を $\emptyset$ と書き，**空集合**（*empty set*, *void set*）とよぶ．

#### 例 {.example}
  i) $\bb N = \{ 1, 2, 3, \dotsc \}$．自然数全体の集合．
 ii) $\bb Z = \{ \dotsc, -3, -2, -1, 0, 1, 2, 3, \dotsc \}$．整数全体の集合．
iii) $\bb Q = \{ m / n \deli m \in \bb Z, \ n \in \bb N \}$．有理数全体の集合．
 iv) $\bb R = \{ a \deli a \ \text{は実数}\}$．実数全体の集合．$r \in \bb R$ に対して，$\bb R_{>r}$ で $r$ より大きい実数全体の集合を表す．$\bb Q$ や $\bb Z$ なども同様．
  v) $\bb C = \{ a + b \i \} \deli a, b \in \bb R \}$．複素数全体の集合．ただし，$\i = \sqrt{-1}$ は虚数単位．
 vi) $A = \{ 1, 2, 3\}, B = \{3, 0, \pi\}$ のとき，$A \cup B = \{ 0, 1, 2, 3, \pi \},\ A \cap B = \{ 3 \},\ A \setminus B = \{ 1, 2 \}$．また，$A \subset \bb N, B \subset \bb C$．
vii) $\bb N \subset \bb Z \subset \bb Q \subset \bb R \subset \bb C$．

$\bb N, \bb Z, \bb Q$ は集合論によって定義できる．$\bb Q$ から $\bb R$ を造り出す操作を**完備化**（*completion*）という．$\bb R$ から $\bb C$ は，**代数拡大**（*algebraic extension*）によって得られる．$\Box$

集合を要素とする集合を，**集合族**（*family of sets*）あるいは**集合系**（*system of sets*）とよぶ．集合族は，それに属する個々の集合を明示するために**インデックス**（*index*）を付して表されることが多い．たとえばインデックスの集合を $\Lambda$ としたとき，$\{ A_\lambda \deli \lambda \in \Lambda \}$ あるいは単に $\{ A_\lambda \}$ のように書く．このとき $\Lambda$ を**添字集合**（*index set*）といい，$\{ A_\lambda \deli \lambda \in \Lambda \}$ を $\Lambda$ によって**添字付けられた集合族**（*family of sets indiced by $\Lambda$*）という．集合族の各元 $A_\lambda$ がすべて共通の集合 $X$ の部分集合のとき，すなわちすべての $A_\lambda$ に対して $A_\lambda \subset X$ のとき，$\{ A_\lambda \deli \lambda \in \Lambda \}$ を $X$ の**部分集合族**（*family of subsets*）とよぶ．任意の相異なるインデックス $\lambda, \mu \in \Lambda$ に対して $A_\lambda \cap A_\mu = \emptyset$ であるとき，集合族 $\{ A_\lambda \deli \lambda \in \Lambda \}$ は**互いに素**（*pairwise disjoint*）という．集合族 $\{ A_\lambda \deli \lambda \in \Lambda \}$ に対して，その**和集合**と**共通部分**を2つの集合の場合と同様に定義できる．すなわち，和集合とは少なくとも1つの $A_\lambda$ に属する元の集合，共通部分はすべての $A_\lambda$ に属する元の集合である．和集合は $\bigcup \{ A_\lambda \deli \lambda \in \Lambda \}$ または $\bigcup_{\lambda \in \Lambda} A_\lambda$ や単に $\bigcup A_\lambda$ と書く．共通部分も，$\bigcap \{ A_\lambda \deli \lambda \in \Lambda \}$ や $\bigcap_{\lambda \in \Lambda} A_\lambda$，$\bigcap A_\lambda$ のように書く．和集合，共通部分，補集合について次の重要な定理が成立つ．

#### 定理 {#properties-of-sets .theorem}
$\Lambda$ を添字集合とした，集合 $X$ の部分集合族 $\{ A_\lambda \deli \lambda \in \Lambda \}$ と $X$ の部分集合 $B \subset X$ に対して次が成立つ：
\begin{align}
&B \cup \left( \bigcup A_\lambda \right) = \bigcup ( B \cup A_\lambda ), &\quad & B \cap \left( \bigcap A_\lambda \right) = \bigcap ( B \cap A_\lambda );\\
&B \cup \left( \bigcap A_\lambda \right) = \bigcap ( B \cup A_\lambda ), &\quad & B \cap \left( \bigcup A_\lambda \right) = \bigcup ( B \cap A_\lambda );\\
&B \setminus \left( \bigcup A_\lambda \right) = \bigcap ( B \setminus A_\lambda ), &\quad & B \setminus \left( \bigcap A_\lambda \right) = \bigcup ( B \setminus A_\lambda ).
\end{align}
(4)を**結合律**（*associative laws*），(5)を**分配律**（*distributive laws*），(6)を**de Morganの法則**（*de Morgan's laws*）とよぶ．$\Box$

#### 証明 {.proof}
##### (4)の証明
まず $B \cup \left( \bigcup A_\lambda \right) = \bigcup ( B \cup A_\lambda )$ を示す．$x \in B \cup \left( \bigcup A_\lambda \right)$ とする．$x \in B$ のときは，とくに任意の $\lambda \in \Lambda$ に対して $x \in B \cup A_\lambda$ だから，$x \in \bigcup ( B \cup A_\lambda )$．$x \in \bigcup A_\lambda$ のとき，ある $A_{\lambda'}$ について $x \in A_{\lambda'}$．よって，$x \in B \cup A_{\lambda'}$ でもあるから $x \in \bigcup ( B \cup A_\lambda )$．これで $B \cup \left( \bigcup A_\lambda \right) \subset \bigcup ( B \cup A_\lambda )$ が示せた．$x \in \bigcup ( B \cup A_\lambda )$ とすると，ある $\lambda' \in \Lambda$ が存在して $x \in B \cup A_{\lambda'}$．$x \in A_{\lambda'}$ ならば $x \in \bigcup A_\lambda$ であるから，$x \in B$ と $x \in A_{\lambda'}$ のいずれの場合も $x \in B \cup \left( \bigcup A_\lambda \right)$ となる．よって $B \cup \left( \bigcup A_\lambda \right) \supset \bigcup ( B \cup A_\lambda )$ であるから，$B \cup \left( \bigcup A_\lambda \right) = \bigcup ( B \cup A_\lambda )$ がいえた．

次に $B \cap \left( \bigcap A_\lambda \right) = \bigcap ( B \cap A_\lambda )$ を示す．$x \in B \cap \left( \bigcap A_\lambda \right)$ とすると，$x \in \bigcap A_\lambda$ であるから，すべての $A_\lambda$ は $x$ を含む．$x \in B$ と合わせて，$x$ がすべての $B \cap A_\lambda$ に属することが分かる．すなわち $x \in \bigcap ( B \cap A_\lambda )$ となり，$B \cap \left( \bigcap A_\lambda \right) \subset \bigcap ( B \cap A_\lambda )$ が成立つ．一方 $x \in \bigcap ( B \cap A_\lambda )$ とすればすべての $\lambda \in \Lambda$ に対して $x \in B \cap A_\lambda$ だから，$x \in B$ かつ $x \in \bigcap A_\lambda$ である．以上より $B \cap \left( \bigcap A_\lambda \right) \supset \bigcap ( B \cap A_\lambda )$ となり，$B \cap \left( \bigcap A_\lambda \right) = \bigcap ( B \cap A_\lambda )$ が示せた．

##### (5)の証明
まず $B \cup \left( \bigcap A_\lambda \right) = \bigcap ( B \cup A_\lambda )$ を示す．$x \in B \cup \left( \bigcap A_\lambda \right)$ とする．$x \in B$ ならばすべての $\lambda \in \Lambda$ に対して $x \in B \cup A_\lambda$ であるから，$x \in \bigcap ( B \cup A_\lambda )$．$x \in \bigcap A_\lambda$ のときもすべての $\lambda \in \Lambda$ に対して $x \in B \cup A_\lambda$ であるから $x \in \bigcap ( B \cup A_\lambda )$ となり，$B \cup \left( \bigcap A_\lambda \right) \subset \bigcap ( B \cup A_\lambda )$ がいえる．$x \in \bigcap ( B \cup A_\lambda )$ とすると，$x \in B \cup A_\lambda$ がすべての $\lambda$ について成立つ．$x \notin B$ のときは $x \in A_\lambda$ となるから，$x \in \bigcap A_\lambda$．よって，$B \cup \left( \bigcap A_\lambda \right) \supset \bigcap ( B \cup A_\lambda )$ であるから結局 $B \cup \left( \bigcap A_\lambda \right) = \bigcap ( B \cup A_\lambda )$ が示せた．

次に $B \cap \left( \bigcup A_\lambda \right) = \bigcup ( B \cap A_\lambda )$ を示す．$x \in B \cap \left( \bigcup A_\lambda \right)$ とすると，$x$ はある $A_{\lambda'}$ に属する．よって $x \in B \cap A_{\lambda'}$ であるから $x \in \bigcup ( B \cap A_\lambda )$，従って $B \cap \left( \bigcup A_\lambda \right) \subset \bigcup ( B \cap A_\lambda )$．$x \in \bigcup ( B \cap A_\lambda )$ ならばある $\lambda' \in \Lambda$ について $x \in B \cap A_{\lambda'}$．このとき $x \in A_{\lambda'}$ であるから $x \in \bigcup A_\lambda$ となり，$x \in B \cap \left( \bigcup A_\lambda \right)$ がいえる．よって $B \cap \left( \bigcup A_\lambda \right) \supset \bigcup ( B \cap A_\lambda )$ が従い，$B \cap \left( \bigcup A_\lambda \right) = \bigcup ( B \cap A_\lambda )$ を示した．

##### (6)の証明
まず $B \setminus \left( \bigcup A_\lambda \right) = \bigcap ( B \setminus A_\lambda )$ を示す．$x \in B \setminus \left( \bigcup A_\lambda \right)$ とすると，$x \in B$ であって $x$ はどの $A_\lambda$ にも属さない．よって任意の $\lambda \in \Lambda$ に対して $x \in B \setminus A_\lambda$ であるから，$x \in \bigcap ( B \setminus A_\lambda )$．ここから $B \setminus \left( \bigcup A_\lambda \right) \subset \bigcap ( B \setminus A_\lambda )$ が分かる．$x \in \bigcap ( B \setminus A_\lambda )$ のとき $x$ は $B$ には属するがどの $A_\lambda$ にも属さない．すなわち $x \in B \setminus \left( \bigcup A_\lambda \right)$ となり，$B \setminus \left( \bigcup A_\lambda \right) \supset \bigcap ( B \setminus A_\lambda )$ が分かる．以上より，$B \setminus \left( \bigcup A_\lambda \right) = \bigcap ( B \setminus A_\lambda )$．

最後に $B \setminus \left( \bigcap A_\lambda \right) = \bigcup ( B \setminus A_\lambda )$ を示す．$x \in B \setminus \left( \bigcap A_\lambda \right)$ に対して，$x \in B$ であるが $x$ の属さない $A_{\lambda'}$ が存在するから $x \in \bigcup ( B \setminus A_\lambda )$．よって $B \setminus \left( \bigcap A_\lambda \right) \subset \bigcup ( B \setminus A_\lambda )$．$x \in \bigcup ( B \setminus A_\lambda )$ のときはある $\lambda' \in \Lambda$ について $x \in B \setminus A_{\lambda'}$ である．とくに $x \notin A_{\lambda'}$ より $x \notin \bigcap A_\lambda$ が従うから，$x \in B \setminus \left( \bigcap A_\lambda \right)$．よって $B \setminus \left( \bigcap A_\lambda \right) \supset \bigcup ( B \setminus A_\lambda )$ がいえて，従って $B \setminus \left( \bigcap A_\lambda \right) = \bigcup ( B \setminus A_\lambda )$．
$\Box$

## 直積
2つの集合 $X$ と $Y$ が与えられたとき，$X$ と $Y$ の**直積**（*direct product*）とよばれる集合 $X \times Y$ が次のように定義される．まず，$a \in X$ と $b \in Y$ から，順序付けられた組 $(a,b)$ を考える．この $(a,b)$ のことを2元 $a$ と $b$ からなる**順序対**（*ordered pair*）という．ここで，「順序付けられた」とは，$a$ と $b$ を並べる順序を入れ替えることができないことをいう．すなわち，$(a,b)$ と $(b,a)$ は一般には一致しない．そこで，$X \times Y = \{ (a,b) \deli a \in X,\ b \in Y \}$ とおき，これを $X$ と $Y$ の直積とする．$X \times Y$ の2つの元 $(a,b), (a',b') \in X \times Y$ は，$a = a'$ かつ $b = b'$ のとき等しいとする．したがって，$a = b$ のとき，かつそのときに限り $(a,b) = (b,a)$ となる．$(a,b) \in X \times Y$ に対して，$X$ の元 $a$ を $(a,b)$ の**第1成分**（*first component*），$Y$ の元 $b$ を**第2成分**（*second component*）とよぶ．
$X \times Y$ の部分集合 $R \subset X \times Y$ は，2つの元 $a \in X$ と $b \in Y$ との間の**関係**（*relationship*）を定める．$(a,b) \in R$ のとき $aRb$ と書き，$a$ と $b$ は**関係 $R$ をもつ**という．$R$ の元の第1成分全体の集合を $R$ の**定義域**（*domain*），第2成分全体の集合を**値域**（*range*）とよぶ．

2つの集合 $X$ と $Y$ の間の関係 $f \subset X \times Y$ が $X$ 全体を定義域として，かつ $afb,\ afc$ ならば $b = c$ が成立つとき $f \colon X \to Y$ と書いて $f$ を $X$ から $Y$ への**写像**（*map*, *mapping*），**関数**（*function*）あるいは**対応**（*correspondence*）という．関数という語は，主に $Y = \bb R$ や $Y = \bb C$ のときに用いる．
$afb$ のとき $f(a) = b$ や $fa = b$ などと書き，$b$ を $a$ での $f$ の**値**（*value*）あるいは $a$ の $f$ による**像**（*image*）という．$f(a)$ を"$f$ of $a$"なとという．また，$f$ は $a$ を $b$ に**写像する**（*maps $a$ to $b$*, *assigns $b$ to $a$*），$b$ は $a$ に**対応する**（*corresponds to $a$*）ともいう．
$X$ の部分集合 $A \subset X$ に対し，$f(A) = \{ f(a) \deli a \in A \} \subset Y$ とおいて $f$ による $A$ の**像**（*image*）という．とくに，$f(X)$ は $f$ の値域となる．$Y$ の部分集合 $B \subset Y$ に対して，$f^{-1}(B) = \{ x \in X \deli f(x) \in B \} \subset X$ を $f$ による $B$ の**逆像**（*inverse image*）とよぶ．シングルトン $\{ y \} \subset Y$ に対してはその逆像を単に $f^{-1}(y)$ で表す．
$f$ の値域が $Y$ 全体であるとき，すなわち $f(X) = Y$ であるとき，$f$ を $X$ から $Y$ への**全射**（*surjection*）あるいは $X$ から $Y$ の**上への写像**（*onto $Y$*）という．$X$ に属する任意の2元 $x, x' \in X$ に対して，$f(x) = f(x')$ ならばいつも $x = x'$ であるとき，$f$ を**単射**（*injection*）という．これは，任意の $y \in Y$ に対して $f^{-1}(y)$ は空集合かシングルトンのいずれかであるとき，と言っても同じである．
