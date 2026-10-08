{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    (pkgs.texliveMedium.withPackages (ps: with ps; [
      multirow
      enumitem
      titlesec
      caption
      tcolorbox
      environ
      etoolbox
      pdfcol
      listings
      microtype
      booktabs
    ]))
    pkgs.poppler-utils
  ];

  shellHook = ''
    echo "=========================================================="
    echo " OS Lab LaTeX Environment Ready"
    echo " Compile with: pdflatex -interaction=nonstopmode lab_2.tex"
    echo "=========================================================="
  '';
}
