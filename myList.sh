rm -f directory.html

touch directory.html

echo "<html><title></title><body><div class=\"container\"><table><thead><tr><th>Contents</th><th>Type</th></tr></thead><tbody>" >> directory.html

FILES=./*
for dir in $FILES
do
  echo "<tr><td>$(basename "$dir")</td>" >> directory.html
  if [[ -d $dir ]]; then
    echo "<td>Directory</td>" >> directory.html
  else
    echo "<td>File</td>" >> directory.html
  fi
done

xdg-open directory.html
