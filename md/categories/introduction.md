---
title: '圏論'
author: 'M. Nakata'
---
\newcommand{\deli}{\,:\,}
\newcommand{\bb}[1]{\boldsymbol{#1}}
\renewcommand{\bar}{\overline}
\renewcommand{\scr}{\mathscr}
\newcommand{\obj}{\mathrm{obj}\,}
\newcommand{\Hom}{\mathrm{Hom}\,}

# 参考文献
- Rotman. *An Introduction to Homological Algebra*. Springer.
- 斎藤恭司，土岡俊介『ベーシック圏論 普遍性からの速習コース』（丸善出版）

# 導入 {#topology-introduction}
圏論とは，群，環，ベクトル空間，集合，位相空間などの数学的構造を一般化したものである．今ではその応用の範囲は広く及ぶ．

## 圏

#### 定義 {.definition}
**圏**（*category*）$\scr C$ は，以下の要素から構成される：

 i) **対象**（*object*）とよばれるものからなる類 $\obj \scr C$，
ii) 各対象 $A, B \in \obj \scr C$ に対し，集合 $\Hom (A, B)$ が対応する．$\Hom(A,B)$ の元 $f \in \Hom(A,B)$ を $A$ から $B$ への**射**（*morphism*）といい，$f \colon A \to B$ あるいは $A \xrightarrow{f} B$ と表す．

さらに，次の性質をみたす：

1) 各対象 $A, B, A', B' \in \obj \scr C$ に対し，$A \neq A'$ または $B \neq B'$ ならば $\Hom(A, B) \cap \Hom(A', B') = \emptyset$ である．
2) $\scr C$ における2つの射 $f \colon A \to B$ と $g \colon B \to C$ に対し，$f$ と $g$ の**合成射**（*composite*）とよばれる射 $gf \colon A \to C$ が存在し結合律をみたす．すなわち，$A \xrightarrow f B \xrightarrow g C \xrightarrow h D$ のとき $h(gf) = (hg)f$ が成立つ．
3) 各対象 $A \in \obj \scr C$ に対し**恒等射**（*identity*）とよばれる射 $1_A \colon A \to A$ が存在し，$f \colon A \to B$ ならば $f1_A = f$ および $1_
B f = f$ が成立つ．

$\obj \scr C$ が小さい類のとき，すなわち $\obj \scr C$ が集合のとき圏 $\scr C$ は**小さい**（*small*）という．

#### 例 {.example}
