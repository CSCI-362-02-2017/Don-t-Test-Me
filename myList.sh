rm -f directory.html

touch directory.html

echo "<html><head><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"></head><body><div class=\"container col-sm-8 col-sm-offset-2\"><table class=\"table table-striped\"><thead><tr><th>Contents</th><th>Type</th></tr></thead><tbody>" >> directory.html

FILES=./*
for dir in $FILES
do
  echo "<tr><td>$(basename "$dir")</td>" >> directory.html
  if [[ -d $dir ]]; then
    echo "<td>Directory</td>" >> directory.html
  else
    echo "<td>File</td>" >> directory.html
  fi
  echo "</tr>" >> directory.html
done

echo "</tbody></table></div></body></html>" >> directory.html

xdg-open directory.html
