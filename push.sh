git add .

echo 'Enter the commit message:'
read commitMessage

echo 'Enter your ssh password:'
read password

git commit -m "$commitMessage"

#work on this later
echo password |  git push


