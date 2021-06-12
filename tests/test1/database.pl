%
% Copyright (C) 2021 Kian Cross
%

node(a1, or, a2, a3).
  node(a2, and, a4, a5).
    node(a4, not, a6, void).
      node(a6, implies, a7, a8).
        node(a7, p, void, void).
        node(a8, q, void, void).
    node(a5, r, void, void).
  node(a3, and, a9, a10).
    node(a9, s, void, void).
    node(a10, t, void, void).
