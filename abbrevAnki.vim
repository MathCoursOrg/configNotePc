"==========================================================
"CONFIGURATION VIM POUR ENTRER DES NOTES EN LATEX POUR ANKI
"==========================================================
"
" Apropos: Présentation générale de ce fichier {{{
" Fichier de configuration vim qui définit plusieurs abbréviation de cours,
"mapping, pour tapper un fichier importable par le logiciel _Anki_. Il y a
"aussi des mapping LaTeX puisque _Anki_ le supporte.}}}

" Mapping généraux {{{
map <F9> :make %<CR>
map <F8> :w<CR>:source %<CR><C-w><C-w>
map <F7> <C-w><C-w>
map j gj
map k gk
map <C-l>  :setf tex<CR>
map <C-h> :setf html<CR>
map <C-p> :setf plain<CR>
map <space> za
"}}}

" Settings pour Anki {{{
"Fonction InsertaNewNote{{{
function! InsertaNewNote()
    return "\n#<++> {{{\n\"[latex]\n<++>\n[/latex]\";\"\n[latex]\n<++>\n[/latex]\"\n#}}}\n"
endfunction
"}}}
map  <C-Tab> /<++><CR>ce
imap <C-Tab> <Esc><C-Tab>
map <F2> GO<C-R>=InsertaNewNote()<CR><Esc>8k^<C-Tab>
imap <F2> <Esc><F2>
"ia $$ [$][/$]<Left><Left><Left><Left>
"ia lat [latex][/latex]<Esc>7<Left>i

"}}}

" Setting généraux {{{
set list
set foldmethod=marker
set expandtab
"}}}

" Raccourcis français: {{{

ia ann anneau
ia at admet
ia av au voisinage
ia cad c'est-à-dire
ia cara caractéristique
ia cl combinaison linéaire
ia cp compact
ia rn Radon-Nikodym
ia tt \theta
ia eet \mathbb{E}_{\theta}
ia ddt \frac{\partial}{\partial\theta}
ia ddt2 \frac{\partial^2}{\partial\theta^2}
ia ptt \mathcal{P}_{\theta}
ia ftt f_{\theta}(
ia cst constante
ia cv converge
ia dap d'après
ia del d'éléments
ia vv $V$
ia den dénombrable
ia dif différents
ia diffeo difféomorphisme
ia dim dimension
ia dod d'ordre
ia ens ensemble
ia fct fonction
ia fer fermé
ia ho holomorphe
ia homo homogène
ia hom homomorphisme
ia ieam il existe au moins
ia iid variables aléatoires indépendantes et identiquement distribuées
ia iso isomorphisme
ia lin linéaire
ia mat matrice
ia mq Montrer que
ia méro méromorphe
ia odq On dit que
ia pcq parce que
ia pcqt par conséquent
ia pe peut-être
ia pol polynôme
ia pr preuve
ia ps presque sûrement
ia rat rationnelle
ia reci réciproque
ia reg régulier
ia rel relation
ia sing singularité
ia sis s'il existe
ia sn sinon
ia ss sous <Left>
ia ssan sous-anneau
ia sg sous-groupe
ia st Soit
ia supp supposer
ia tr Tr
ia uni unitaire
ia var variable aléatoire réelle
ia vas variables aléatoires
ia vasr variables aléatoires réelles
ia piv (\pi,V)
"}}}

"Raccourcis LaTeX {{{
"Tend avec n qui tend vers l'infini:
"ia fr \frac{<++> }{ <++> }<++><ESC>?<++><CR>nnce
ia ** ^*
ia --1 ^{-1}
ia FFG \mathscr{F}(G)
ia fp \mathrm{F}_p
ia GG \|G\|
ia U \bigcup
ia cc \mathbb{C}
ia ccG \mathbb{C}[G]
ia cex \begin{cex}<CR>\end{cex}<ESC>O
ia ck \mathcal{C}^{k}
ia com commutatif
ia coro \begin{coro}<CR>\end{coro}<ESC>O
ia ddx \frac{\mathrm d}{\mathrm d }<Left><Left>
ia defi \begin{defi}<CR>\end{defi}<ESC>O
ia delta \delta
ia deltaa $\delta$
ia demo \begin{demo}<CR>\end{demo}<ESC>O
ia ds \in
ia ee \mathbb{E}
ia epsi \epsilon
ia espacepro $(\Omega, \tau, \mathbb{P})$
ia ev espace vectoriel
ia ex \begin{exemple}<CR>\end{exemple}<ESC>O
ia exi \begin{exercice}<CR>\end{exercice}<ESC>O
ia exist \exists
ia glv GL(V)
ia include \subset
ia infi \infty
ia inter intervalle
ia it \item
ia ite \begin{itemize}<CR>\end{itemize}<ESC>O
ia lg \longrightarrow
ia lgi \longrightarrow \infty
ia lgn loi des grands nombres
ia lim \lim_{}<Left><Left>
ia lp $L^p$
ia lpsse Les propriétés suivantes sont équivalentes:
ia lq $L^q$
ia math \[<CR>\]<ESC>0
ia mq montrer que
ia nb \begin{note}<CR>\end{note}<ESC>O
ia nn \mathbb{N}
ia nne \mathbb{N}^*
ia norm \\|\\|<Left><Left>
ia phii $\phi$
ia pii $\pi$
ia pp presque partout
ia ppp \mathbb{P}
ia pre \begin{proof}<CR>\end{proof}<ESC>O
ia proba probabilité
ia proof \begin{proof}<CR>\end{proof}<ESC>O
ia prop \begin{prop}<CR>\end{prop}<ESC>O
ia psi \psi
ia pt \forall
ia qq \mathbb{Q}
ia rd \mathbb{R}^d
ia rep représentation
ia rg \longrightarrow
ia rr \mathbb{R}
ia ssi \iff
ia sum \sum_{}^{<Left><Left><Left>
ia tendpn \overset{n \to \infty}{\longrightarrow}
ia th \begin{tho}<CR>\end{tho}<ESC>O
" ia tq \ \text{tel que}
ia zcG Z(\mathbb{C}[G])
ia zfG Z(\mathscr{F}(G))
ia zz \mathbb{Z}
ia kk \mathbb{K}

"Mapping Latex {{{

imap <A-,> $$<Left>
ia align \begin{align*}<CR>\end{align*}<ESC>O
imap <A-b> \begin{}<Left>
imap <A-e> \end{<C-x><C-o>
"imap <A-f> \frac{}{<Left><Left>
"}}}

"}}}

"Raccourcis Anki
ia nl <br /><CR>
