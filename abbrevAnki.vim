"==========================================================
"CONFIGURATION VIM POUR ENTRER DES NOTES EN LATEX POUR ANKI
"==========================================================
"
" Apropos: Présentation générale de ce fichier {{{
" Fichier de configuration vim qui définit plusieurs abbréviation de cours,
"mapping, pour tapper un fichier importable par le logiciel _Anki_. Il y a
"aussi des mapping LaTeX puisque _Anki_ le supporte.}}}

" Mapping généraux {{{
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
map <Tab> /<++><CR>ce
imap <Tab> <Esc>/<++><CR>ce
map <F2> Go<C-R>=InsertaNewNote()<CR><Esc>8k^<Tab>
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
ia car caractère
ia cara caractéristique
ia cl combinaison linéaire
ia cor Corollaire
ia cp compact
ia cst constante
ia cv converge
ia dap d'après
ia def définit
ia del d'éléments
ia den dénombrable
ia dif différents
ia diffeo difféomorphisme
ia dim dimension
ia dod d'ordre
ia ens ensemble
ia eq equation
ia fct fonction
ia fer fermé
ia ho holomorphe
ia homo homogène
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
ia st Soit
ia th Théorème
ia tr Tr
ia uni unitaire
ia va variable aléatoire
ia var variable aléatoire réelle
ia vas variables aléatoires
ia vasr variables aléatoires réelles
"}}}

"Raccourcis LaTeX {{{
ia --1 ^{-1}
ia FFG \mathscr{F}(G)
ia GG \|G\|
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
ia ee \mathbb{E}
ia espacepro $(\Omega, \tau, \mathbb{P})$
ia ev espace vectoriel
ia ex \begin{exemple}<CR>\end{exemple}<ESC>O 
ia exi \begin{exercice}<CR>\end{exercice}<ESC>O 
ia exist \exists
ia infi \infty
ia int \int_{}^{<Left><Left><Left>
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
ia phi \phi
ia phii $\phi$
ia pi \pi
ia pii $\pi$
ia pp \mathbb{P}
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
ia rg \rightarrow
ia rr \mathbb{R}
ia ssi \iff
ia sum \sum_{}^{<Left><Left><Left>
ia the \begin{th}<CR>\end{th}<ESC>O
ia zcG Z(\mathbb{C}[G])
ia zfG Z(\mathscr{F}(G))
ia zz \mathbb{Z}

"Mapping Latex {{{

imap <A-,> $$<Left>
imap <A-a> \begin{align*}<CR>\end{align*}<ESC>O
imap <A-b> \begin{}<Left>
imap <A-e> \end{<C-x><C-o>
imap <A-f> \frac{}{<Left><Left>
"}}}

"}}}
