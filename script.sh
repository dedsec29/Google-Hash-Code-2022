set -e
g++ code.cpp -o code 
g++ grader.cpp -o grader
for file in ./output/*.txt; do
    ./grader < "$file" > score.txt
    cat score.txt
done

