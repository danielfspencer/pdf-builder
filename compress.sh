DPI=170
INPUT="main.pdf"
OUTPUT="compressed.pdf"

if [ ! -f "$INPUT" ]; then
    echo "$INPUT does not exist (has build.sh been run?)"
    exit
fi

if [ $# -eq 0 ]
  then
    echo "Defaulting to $DPI DPI (use $0 <DPI> to override)"
else
    DPI=$1
    echo "Using $DPI DPI"
fi

echo -e "\n$INPUT:\n\t" $(($(stat -c '%s' $INPUT) / 1024)) "kB\n"
echo -e "Compressing...\n"

gs \
    -dQUIET \
    -sDEVICE=pdfwrite \
    -dCompatibilityLevel=1.4 \
    -dDownsampleColorImages=true \
    -dColorImageResolution=$DPI \
    -dNOPAUSE \
    -dBATCH \
    -sOutputFile=$OUTPUT $INPUT

echo -e "$OUTPUT:\n\t" $(($(stat -c '%s' $OUTPUT) / 1024)) "kB\n"
echo -e "\nRe-run with lower DPI for smaller file"
