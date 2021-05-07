This program takes all images in the `input/` folder and turns them into a PDF.
Images are placed one on each page in alphabetical (from filename) order.

## Requirements
- linux
- bash
- latexmk
- ghostscript (for compress.sh)
- working latex environment (tested with TeX Live 2019)

## Setup
Create a folder called `input/`, or run:
```bash
bash build.sh
```
(this will create the folder)

## Usage
Place images in `input/` and run:
```bash
bash build.sh
```
`main.pdf` will be created.

If this file is too large, run:
```bash
bash compress.sh
```
`compressed.pdf` will be created.
If this is still too large, supply a lower DPI to the script:
```bash
bash compress.sh 150
```
