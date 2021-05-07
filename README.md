This program takes all images in the `input/` folder and turns them into a PDF.
Images are placed one on each page in alphabetical order.

## Requirements
- linux
- bash
- latexmk
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
