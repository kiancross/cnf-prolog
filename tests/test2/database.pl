%
% Copyright (C) 2021 Kian Cross
%

node(b1, or, b2, b3).
  node(b2, r, void, void).
  node(b3, and, b4, b5).
    node(b4, s, void, void).
    node(b5, t, void, void).
