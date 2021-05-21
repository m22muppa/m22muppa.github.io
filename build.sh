for i in *.md; do
	output=${i%%.*}.html
	echo $i $output
	pandoc -f markdown+smart+ascii_identifiers+emoji -t html-smart --standalone -i $i -o $output --template=template.html --metadata title="M22M"
done

git add .
git commit -m  'update'
git push origin main
