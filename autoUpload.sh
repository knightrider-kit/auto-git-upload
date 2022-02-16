ls $1|while IFS= read i; do
cd $1/"$i"
git init
git add .
#git commit -m 'Init'
git commit -m 'first commit'
git branch -M main
git remote add origin https://github.com/your-account-name/"$i"
gh repo create "$i" --public
git push -u origin main
done
