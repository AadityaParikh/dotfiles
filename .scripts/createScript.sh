#!/bin/sh

file="$1.sh"

touch $file && echo "Created file" $file
chmod +x $file && echo "Changed permissions"
echo "#!/bin/sh" > $file && echo "added shebang"
