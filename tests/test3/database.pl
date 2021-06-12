%
% Copyright (C) 2021 Kian Cross
%

node(c1, or, c2, c3).
  node(c2, and, c4, c5).
    node(c4, p, void, void).
    node(c5, q, void, void).
  node(c3, and, c6, c7).
    node(c6, r, void, void).
    node(c7, s, void, void).
