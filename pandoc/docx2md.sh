# Transform from docx to Pandoc markdown (https://pandoc.org/MANUAL.html#pandocs-markdown)
pandoc -s Sesambook.docx --from docx --to markdown -o Sesambook.md
