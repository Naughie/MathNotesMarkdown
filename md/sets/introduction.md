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

集合を要素とする集合を，**集合族**（*family of sets*）あるいは**集合系**（*system of sets*）とよぶ．集合族は，それに属する個々の集合を明示するために**インデックス**（*index*）を付して表されることが多い．たとえばインデックスの集合を $\Lambda$ としたとき，$\{ A_\lambda \deli \lambda \in \Lambda \}$ あるいは単に $\{ A_\lambda \}$ のように書く．このとき $\Lambda$ を**添字集合**（*index set*）といい，$\{ A_\lambda \deli \lambda \in \Lambda \}$ を $\Lambda$ によって**添字付けられた集合族**（*family of sets indiced by $\Lambda$*）という．集合族の各元 $A_\lambda$ がすべて共通の集合 $X$ の部分集合のとき，すなわちすべての $A_\lambda$ に対して $A_\lambda \subset X$ のとき，$\{ A_\lambda \deli \lambda \in \Lambda \}$ を $X$ の**部分集合族**（*family of subsets*）とよぶ．任意の相異なるインデックス $\lambda, \mu \in \Lambda$ に対して $A_\lambda \cap A_\mu = \emptyset$ であるとき，集合族 $\{ A_\lambda \deli \lambda \in \Lambda \}$ は**互いに素**（*pairwise disjoint*）という．集合族 $\{ A_\lambda \deli \lambda \in \Lambda \}$ に対して，その**和集合**と**共通部分**を2つの集合の場合と同様に定義できる．すなわち，和集合とは少なくとも1つの $A_\lambda$ に属する元の集合，共通部分はすべての $A_\lambda$ に属する元の集合である．和集合は $\bigcup \{ A_\lambda \deli \lambda \in \Lambda \}$ または $\bigcup_{\lambda \in \Lambda} A_\lambda$ や単に $\bigcup A_\lambda$ と書く．共通部分も，$\bigcap \{ A_\lambda \deli \lambda \in \Lambda \}$ や $\bigcap_{\lambda \in \Lambda} A_\lambda$，$\bigcap A_\lambda$ のように書く．$\{ A_\lambda \deli \lambda \in \Lambda \}$ が互いに素なとき，その和集合を**非交和**（*disjoint union*）といい $\coprod_{\lambda \in \Lambda} A_\lambda$ のように書くこともある．和集合，共通部分，補集合について次の重要な定理が成立つ．

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
$afb$ のとき $f(a) = b$ や $fa = b$，$f \colon a \mapsto b$ などと書き，$b$ を $a$ での $f$ の**値**（*value*）あるいは $a$ の $f$ による**像**（*image*）という．$f(a)$ を"$f$ of $a$"なとという．また，$f$ は $a$ を $b$ に**写像する**（*maps $a$ to $b$*, *assigns $b$ to $a$*），$b$ は $a$ に**対応する**（*corresponds to $a$*）ともいう．
$X$ の部分集合 $A \subset X$ に対し，$f(A) = \{ f(a) \deli a \in A \} \subset Y$ とおいて $f$ による $A$ の**像**（*image*）という．とくに，$f(X)$ は $f$ の値域となる．$Y$ の部分集合 $B \subset Y$ に対して，$f^{-1}(B) = \{ x \in X \deli f(x) \in B \} \subset X$ を $f$ による $B$ の**逆像**（*inverse image*）とよぶ．シングルトン $\{ y \} \subset Y$ に対してはその逆像を単に $f^{-1}(y)$ で表す．
$f$ の値域が $Y$ 全体であるとき，すなわち $f(X) = Y$ であるとき，$f$ を $X$ から $Y$ への**全射**（*surjection*）あるいは $X$ から $Y$ の**上への写像**（*onto $Y$*）という．$X$ に属する任意の2元 $x, x' \in X$ に対して，$f(x) = f(x')$ ならばいつも $x = x'$ であるとき，$f$ を**単射**（*injection*）という．これは，任意の $y \in Y$ に対して $f^{-1}(y)$ は空集合かシングルトンのいずれかであるとき，と言っても同じである．写像 $f \colon X \to Y$ が全射であり同時に単射でもあるとき，$f$ を $X$ から $Y$ への**全単射**（*bijection*）あるいは $X$ と $Y$ の間の**一対一対応**（*one-to-one correspondence*）という．

$f$ が全単射ならば，$Y$ の任意の元 $y \in Y$ に対してただ1つ $X$ の元 $x \in X$ が定まり $f(x) = y$ が成立つ．この $y \in Y$ に $f(x) = y$ なる $x \in X$ を対応させる $Y$ から $X$ への写像を $f$ の**逆写像**（*inverse*）といい，$f^{-1} \colon Y \to X$ で表す．すると，$f^{-1}(y) = x$ であるときかつそのときに限って $f(x) = y$ となる．
$X$ から $Y$ への写像 $f \colon X \to Y$ と $X$ の部分集合 $A \subset X$ が与えられたときに，$x \in A$ に $f(x)$ を対応させることで $A$ から $Y$ への写像を定義できる．この写像を $f$ の $A$ への**制限**（*restriction*）といい $f \mid A$ と書く．一般に $f$ と $f \mid A$ は（$X = A$ でない限り）定義域が異なるため，別の写像として区別する．
同じ定義域の2つの写像 $f, g \colon X \to Y$ が等しいとは，すべての $x \in X$ に対して $f(x) = g(x)$ が成立つことであり，$f = g$ と書く．

#### 例 {.example}

 i) 空でない集合 $X$ に対して，$f(x) = x$ によって定まる全単射 $f \colon X \to X$ が存在する．この写像を $X$ の**恒等写像**（*identity*）といい，$\mathrm{id}_X,\ 1_X$ などと書く．$X$ が明らかな場合は省略する．
ii) 空でない集合 $X$ とその部分集合 $A \subset X$ が与えられたとき，恒等写像の $A$ への制限 $1_X \mid A \colon A \to X$ を $A$ から $X$ への**包含写像**（*inclusion*）といい，$A \hookrightarrow X$ と表す．包含写像は最も簡単な単射でもあるから，**標準的単射**（*canonical injection*）ともよばれる．$\Box$

2つの写像 $f \colon X \to Y,\ g \colon Y \to Z$ があるとき，$x \mapsto g(f(x))$ によって $X$ から $Z$ への写像が定まる．これを $f$ と $g$ の**合成写像**（*composite*）といい，$g \circ f$ あるいは $gf$ と書く．$f$ が全単射のときは $f^{-1} \circ f = 1_X,\ f \circ f^{-1} = 1_Y$ となる．
写像 $f \colon X \to Y$ が与えられたとき，容易に分かるように，$f$ が全単射ならば $f^{-1}$ も全単射でさらに $(f^{-1})^{-1} = f$ が成立つ．2つの全単射 $f \colon X \to Y$ および $g \colon Y \to Z$ に対して $gf \colon X \to Z$ が全単射になることもまた簡単に分かる．

$\Lambda$ を添字集合とする集合族 $\{ A_\lambda \deli \lambda \in \Lambda \}$ を考える．$\Lambda$ から $\bigcup A_\lambda$ への写像 $f \colon \Lambda \to \bigcup A_\lambda$ で，各 $\lambda \in \Lambda$ に対して $f(\lambda) \in A_\lambda$ を満たすもの全体の集合を集合族 $\{ A_\lambda \}$ の**直積**（*direct product*）といい，$\prod_{\lambda \in \Lambda} A_\lambda$ と書く．$f \in \prod A_\lambda$ に対し，$f(\lambda)$ の代わりに $f_\lambda$ と書き，$f$ の **$\lambda$ 成分**（*$\lambda$-coordinate*）という．
$\Lambda = \{1, 2\}$ のとき，$\prod A_\lambda$ と $A_1 \times A_2$ は同じであることが分かる．実際，$(a,b) \in A_1 \times A_2$ であるとは，対応 $f(1) = a,\ f(2) = b$ が $\prod A_\lambda$ に属していることを意味する．逆に $f \in \prod A_\lambda$ のとき，$(f_1, f_2)$ は順序対をなしていて $(f_1, f_2) \in A_1 \times A_2$ である．

写像と和集合，共通部分，補集合の間に次の重要な性質がある．

#### 定理 {.theorem}
2つの集合 $X, Y$ と $X$ の部分集合族 $\{A_\lambda \subset X \deli \lambda \in \Lambda \}$ および $X$ から $Y$ への写像 $f \colon X \to Y$ が与えられたとする．このとき次が成立つ：

\begin{align}
&A_1 \subset A_2 \Longrightarrow f(A_1) \subset f(A_2);\\
&f(\bigcup A_\lambda) = \bigcup f(A_\lambda);\\
&f(\bigcap A_\lambda) \subset \bigcap f(A_\lambda);\\
&f(A_1 \setminus A_2) \supset f(A_1) \setminus f(A_2).
\end{align}

さらに $f$ が全単射のときは，$Y$ の部分集合族 $\{B_\lambda \subset Y \deli \lambda \in \Lambda \}$ に対して次が成立つ：

\begin{align}
&B_1 \subset B_2 \Longrightarrow f^{-1}(B_1) \subset f^{-1}(B_2);\\
&f^{-1}(\bigcup B_\lambda) = \bigcup f^{-1}(B_\lambda);\\
&f^{-1}(\bigcap B_\lambda) = \bigcap f^{-1}(B_\lambda);\\
&f^{-1}(B_1 \setminus B_2) = f^{-1}(B_1) \setminus f^{-1}(B_2).
\end{align}

また，$f$ が単射ならば(8)と(9)において等号が成立つ．$\Box$

#### 証明 {.proof}
##### (7)の証明
$A_1 \subset A_2$ とする．$y \in f(A_1)$ のとき，$x \in A_1$ が存在して $y = f(x)$ となる．このときまた $x \in A_2$ でもあるから $y \in f(A_2)$．よって $f(A_1) \subset f(A_2)$ となる．

##### (8)の証明
$y \in f(\bigcup A_\lambda)$ とすると，ある $\lambda' \in \Lambda$ と $x \in A_{\lambda'}$ が存在して $y = f(x)$ となる．よって $y \in f(A_{\lambda'}) \subset \bigcup f(A_\lambda)$ であるから $f(\bigcup A_\lambda) \subset \bigcup f(A_\lambda)$．

逆に $y \in \bigcup f(A_\lambda)$ のときはある $\lambda' \in A_\lambda$ に対して $y \in f(A_{\lambda'})$，従って $y = f(x)$ となる $x \in A_{\lambda'}$ が存在する．このとき $x \in \bigcup A_\lambda$ であるから $y \in f(\bigcup A_\lambda)$．

以上より $f(\bigcup A_\lambda) = \bigcup f(A_\lambda)$．

##### (9)の証明
$y \in f(\bigcap A_\lambda)$ とすると $y = f(x)$ となる $x \in \bigcap A_\lambda$ が存在する．すると各 $\lambda$ に対して $x \in A_\lambda$ であるから $y \in f(A_\lambda)$ が成立ち，よって $y \in \bigcap f(A_\lambda)$ となる．これで $f(\bigcap A_\lambda) \subset \bigcap f(A_\lambda)$ を示せた．

$f$ が単射で $y \in \bigcap f(A_\lambda)$ ならば，任意の $\lambda$ に対して $y \in f(A_\lambda)$ であり，$y = f(x_\lambda)$ となる $x_\lambda \in A_\lambda$ が存在する．$f$ の単射性より $x_\lambda$ はすべて等しく，その値を $x$ とおく．このとき任意の $\lambda$ に対して $x \in A_\lambda$ だから $x \in \bigcap A_\lambda$．これと $y = f(x)$ より $y \in f(\bigcap A_\lambda)$ となるから，$f(\bigcap A_\lambda) \supset \bigcap f(A_\lambda)$．

##### (10)の証明
$y \in f(A_1) \setminus f(A_2)$ とすると，$y \in f(A_1)$ より $y = f(x)$ なる $x \in A_1$ が存在する．一方 $y \notin f(A_2)$ であるから $x \in A_2$ ではあり得ない．よって $x \in A_1 \setminus A_2$ であり，$y \in f(A_1 \setminus A_2)$．すなわち $f(A_1 \setminus A_2) \supset f(A_1) \setminus f(A_2)$ が分かる．

$f$ が単射のときは，$y \in f(A_1 \setminus A_2)$ ならば $y = f(x)$ となる $x \in A_1 \setminus A_2$ が存在するから $y \in f(A_1)$ は分かる．ここで $y \in f(A_2)$ とするとある $x' \in A_2$ が存在して $y = f(x')$ であるが，$f$ の単射性より $x = x' \in A_1 \cap A_2$．これは $x \in A_1 \setminus A_2$ に反する．よって $y \notin f(A_2)$ であるから $y \in f(A_1) \setminus f(A_2)$，従って $f(A_1 \setminus A_2) \subset f(A_1) \setminus f(A_2)$．

##### (11), (12), (13), (14)の証明
$f$ が全単射であるから $f^{-1}$ も全単射．よって(7), (8), (9), (10)において $f \colon X \to Y$ を $f^{-1} \colon Y \to X$ に，$\{ A_\lambda \}$ を $\{ B_\lambda \}$ に置き換えれば直ちに従う．$\Box$

写像の単射性と全射性に関する次の事実がよく用いられる．

#### 定理 {.theorem #equivalent-statement-on-injectivity-and-surjectivity}
写像 $f \colon X \to Y$ に対して次が成立つ：

 i) $f$ が単射であることの必要十分条件は，$gf = 1_X$ なる写像 $g \colon Y \to X$ が存在することである；
ii) $f$ が全射であることの必要十分条件は，$fh = 1_Y$ なる写像 $h \colon Y \to X$ が存在することである．$\Box$

#### 証明 {.proof}
##### i.の証明
必要性を示す．$f$ が単射ならば，任意の2元 $x, x' \in X$ に対して $f(x) = f(x')$ ならば $x = x'$ である．よって，$X$ の元 $x_0 \in X$ を適当に固定すれば，写像 $g \colon Y \to X$ が
\begin{align*}
g(y) = \left\{ \begin{array}{ll} x & (\text{if}\ y = f(x)), \\ x_0 & (\text{if}\ y \notin f(X) \end{array}  \right.
\end{align*}
によって定義できる（これが写像であることは確かめなければならない．すなわち，$f(x) = f(x')$ ならば $gf(x) = gf(x')$ を確かめる必要があるが，これは $f$ の単射性より明らか）．そうすると，任意の $x \in X$ に対して $gf(x) = x$ だから，$gf = 1_X$．

次に十分性を示す．写像 $g \colon Y \to X$ が存在して $gf = 1_X$ ならば，任意の $x, x' \in X$ に対して $x = gf(x)$ および $x' = gf(x')$ が成立つ．ここで $f(x) = f(x')$ とすれば，$gf(x) = gf(x')$ より $x = x'$ が分かる．これは $f$ が単射であることを意味する．

##### ii.の証明
$f$ を全射とすると，任意の $y \in Y$ に対して $f(x) = y$ なる $x \in X$ が少なくとも1つ存在する．そのうちの1つを適当に選び $x_y$ とする．そこで写像 $h \colon Y \to X$ を $h(y) = x_y$ と定義すれば，$fh(y) = f(x_y) = y$ であるから $fh = 1_Y$ となる．

逆に $fh = 1_Y$ となる写像 $h \colon Y \to X$ が存在すると仮定する．このとき，任意の $y \in Y$ に対して $y = f(h(y))$ であるから，$f$ は全射．$\Box$

写像の単射性と全射性を圏論的に言い換えると以下のようになる．

#### 定理 {.theorem}
写像 $f \colon X \to Y$ に対して次が成立つ：

 i) $f$ が単射であることの必要十分条件は，$fg_1 = fg_2$ なる任意の写像 $g_1, g_2 \colon Z \to X$ に対して $g_1 = g_2$ となることである；
ii) $f$ が全射であることの必要十分条件は，$h_1f = h_2f$ なる任意の写像 $h_1, h_2 \colon Y \to Z$ に対して $h_1 = h_2$ となることである．$\Box$

#### 証明 {.proof}
##### i.の証明
$f$ を単射として，2つの写像 $g_1, g_2 \colon Z \to X$ について $fg_1 = fg_2$ となったとする．このとき $g_1 = g_2$ を示したい．任意の $z \in Z$ に対して $f(g_1(z)) = f(g_2(z))$ であるから，$f$ の単射性より $g_1(z) = g_2(z)$ となる．よって $g_1 = g_2$．

逆に任意の写像 $g_1, g_2 \colon Z \to X$ に対して，$fg_1 = fg_2$ ならば $g_1 = g_2$ が成立つとする．このとき特に $Z = \{ 0 \}$ として，$g_1(0) = x,\ g_2(0) = y$ とする．もし $f(x) = f(y)$ であれば，$fg_1(0) = fg_2(0)$ であるから $g_1 = g_2$ が言える．従って $x = g_1(0) = g_2(0) = y$ となり，$f$ は単射．

##### ii.の証明
まず $f$ が全射ならば，$h_1f = h_2f$ なる写像 $h_1, h_2 \colon Y \to Z$ に対して $h_1 = h_2$ となる．実際，任意の $y \in Y$ に対して $x \in X$ が存在して $y = f(x)$ とでき，このとき $h_1(y) = h_1f(x) = h_2f(x) = h_2(y)$ より $h_1 = h_2$．

次に任意の写像 $h_1, h_2 \colon Y \to Z$ に対して，$h_1f = h_2f$ ならば $h_1 = h_2$ となるとする．$f$ が全射でないとすると $y_0 \in Y \setminus f(X)$ が存在する．そこで $Z = \{ 0, 1 \}$ として
\begin{align*}
h_1(y) &= 0,\\
h_2(y) &= \left\{ \begin{array}{ll} 0 & (\text{if}\ y \neq y_0),\\ 1 & (\text{if}\ y = y_0) \end{array} \right.
\end{align*}
と定義すれば，$h_1f = h_2f$ であるが $h_1 \neq h_2$ となり矛盾．よって $f$ は全射である．$\Box$

#### 系 {.corollary}
2つの集合 $X$ と $Y$ に対して，単射 $\colon X \to Y$ が存在するための必要十分条件は全射 $\colon Y \to X$ が存在することである．$\Box$

#### 証明 {.proof}
[定理](#equivalent-statement-on-injectivity-and-surjectivity)より，単射 $f \colon X \to Y$ が存在すれば写像 $g \colon Y \to X$ が存在して $gf = 1_X$ となり，またこの $g$ は全射である．

逆に全射 $g \colon Y \to X$ が存在すれば同じ定理より $gf = 1_X$ なる写像 $f \colon X \to Y$ が存在し，$f$ の単射性も分かる．$\Box$
