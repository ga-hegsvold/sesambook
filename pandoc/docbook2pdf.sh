# Replace unrecognized bullet points with '*'
sed -i 's/○/*/g' Sesambook-from-docx.xml
# Transform from docbook to pdf
pandoc -s Sesambook-from-docx.xml --from docbook -t latex -o Sesambook-from-docx.pdf
