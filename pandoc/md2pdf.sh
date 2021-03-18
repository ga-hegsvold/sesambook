# Replace unrecognized bullet points with '*'
sed -i 's/○/*/g' Sesambook.md
# Transform from Pandoc md to pdf
pandoc Sesambook.md -t latex -o Sesambook-from-md.pdf
