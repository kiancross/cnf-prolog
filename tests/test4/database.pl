%
% Copyright (C) 2021 Kian Cross
%

node(d1, or, d2, d3).
  node(d2, or, d4, d5).
    node(d4, not, d6, void).
      node(d6, or, d7, d8).
        node(d7, p, void, void).
        node(d8, q, void, void).
    node(d5, r, void, void).
  node(d3, or, d9, d10).
    node(d9, s, void, void).
    node(d10, t, void, void).
