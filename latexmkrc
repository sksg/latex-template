$pdf_mode = 1;
$pdflatex = 'lualatex --shell-escape --output-dir="build"';

$wdir = '.';
if (-d "/compile/tex") {  # Overleaf
    $wdir = '/compile';
    $pdflatex = 'lualatex --shell-escape';
} else {
    $out_dir = 'build';
}
ensure_path('TEXINPUTS', $wdir . '/tex//');
ensure_path('TEXINPUTS', $wdir . '/graphics//');
ensure_path('TEXINPUTS', $wdir . '/exercises//');
ensure_path('OPENTYPEFONTS', $wdir . '/tex//');
ensure_path('TTFONTS', $wdir . '/tex//');
