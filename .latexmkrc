$latex = 'lualatex -synctex=1 -halt-on-error -file-line-error %O %S';
$bibtex = 'upbibtex %O %S';
$biber = 'biber %O --bblencoding=utf8 -u -U --output_safechars %S';
$makeindex = 'upmendex %O -o %D %S';

$pdf_mode = 4;
$max_repeat = 3;

$out_dir = ".";
$emulate_aux = 1;
$aux_dir = ".tex";

