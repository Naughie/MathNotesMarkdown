---
title: '多様体論'
author: 'M. Nakata'
---
\newcommand{\deli}{\,:\,}
\newcommand{\bb}[1]{\boldsymbol{#1}}
\renewcommand{\bar}{\overline}
\renewcommand{\scr}{\mathscr}
\newcommand{\pfrac}[2]{\frac{\partial #1}{\partial #2}}

# 参考文献
- Loring W. Tu. *An Introduction to Manifolds*. Springer.
- 小林昭七『接続の微分幾何とゲージ理論』（裳華房）


# 導入

## ベクトル束
$M$ を $n$ 次元多様体として，その点 $p \in M$ における接空間を $T_pM$，余接空間を $T^*_p M$ と書く．$(x^1, \dotsc, x^n)$ を点 $p$ の近傍での局所座標系とすると， $X \in T_pM$ に対して
$$
X = \sum a^i \pfrac{}{x^i}
$$
のとき $X = (x^1(p), \dotsc, x^n(p), a^1, \dotsc, a^n)$ として，$TM = \bigcup_{p \in M} T_pM$ に局所座標系を定めることができる．$T^*M = \bigcup_{p \in M} T^*_p M$ にも同様に局所座標系を定義できる．

#### 定義 {.definition}
多様体 $M$ 上の**ベクトル束**（*vector bundle*）とは，多様体 $E$ であって次の条件をみたすものである：

  i) 微分可能な写像 $\pi \colon E \to M$ があり，各点 $x \in M$ に対して $E_x = \pi^{-1}(x)$ は同じ次元 $r$ のベクトル空間である．$E_x$ を $x$ 上の**ファイバー**（*fiber*）という．
 ii) 各点 $x \in M$ とその近傍 $U \subset M$ に対して，微分同相 $\varphi \colon \pi^{-1}(U) \to U \times \bb R^r$ が存在して，$\{ y \} \subset M$ への制限が線形同型となる．

#### 例 {.example}
 i) $TM$ と $T^*M$ はともにファイバーの次元が $n$ のベクトル束である．実際，$X \in T_pM$ に対して $\pi(X) = p$ とすればこれはファイバーを与え，$\pi^{-1}(p) = T_pM$ と $R^n$ は線形同型となる．$T^*M$ も同様．
ii) **直積束**（*product bundle*）$E = M \times \bb R^r$ はベクトル束である．

#### 定義 {.definition}
$\{ U_\alpha \} \subset M$ を $M$ の被覆とすると各 $\pi^{-1}(U_\alpha)$ は $U_\alpha \times \bb R^r$ と同型になる．よって，$x \in U_\alpha \cap U_\beta$ に対して２つの同型
$$
\varphi_\alpha(x) \colon E_x \to \bb R^r\quad \varphi_\beta(x) \colon E_x \to \bb R^r
$$
が存在する．このとき，$\psi_{\alpha\beta}(x) = \varphi_\alpha(x) \varphi_\beta(x)^{-1}$ によって $\psi_{\alpha\beta} \colon U_\alpha \cap U_\beta \to GL(r, \bb R)$ が定まる．これらの写像の族 $\{ \psi_{\alpha\beta} \}$ を被覆 $\{ U_\alpha \}$ に対する $E$ の**変換関数**（*transition functions*）とよぶ．

#### 注 {.remark}
$E$ の変換関数 $\{ \psi_{\alpha\beta} \}$ は次の性質をもつ：
\begin{align}
&\psi_{\alpha\beta}(x) \psi_{\beta\gamma}(x) = \psi_{\alpha\gamma}(x)\quad (x \in U_\alpha \cap U_\beta \cap U_\gamma);\\
&\psi_{\alpha\alpha}(x) = I_r;\\
&\psi_{\beta\alpha}(x) = \psi_{\alpha\beta}(x)^{-1}.
\end{align}
