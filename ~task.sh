#!/bin/bash

mkdir -p  task/dir1 task/dir2 task/dir3/dir4

cd task

touch dir2/empty

echo "#!/bin/bash" > dir2/hello.sh
echo 'echo "$1, hello"' >> dir2/hello.sh

chmod 764 dir2/hello.sh

ls dir2 > dir2/list.txt

cp -r dir2/* dir3/dir4

find . -name  "*.txt" > dir1/summary.txt
cat dir2/list.txt >> dir1/summary.txt

export NAME="All students"

./dir2/hello.sh "$NAME" >> dir1/summary.txt

mv dir1/summary.txt "Practical task"

cat "Practical task"

grep  "dir" "Practical task" | sort

cd ..

rm -rf task
