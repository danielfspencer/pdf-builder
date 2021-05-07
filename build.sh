mkdir -p input
if [ -z "$(ls -A input)" ]; then
  echo "input folder empty"
else
  find input/ -mindepth 1 | sort | tr '\n' ',' > files.list
  latexmk -pdf main.tex
  rm -f files.list
  latexmk -c
fi

