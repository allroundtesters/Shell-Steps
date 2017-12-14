# ag and grep

echo "grep [options] pattern [files]"
# grep root in rc file
grep root ~/.zshrc
grep -cv ":" ~/.zshrc

# Simple regex expression
grep -ni '^ex' ~/.zshrc
grep -ni '$TH' ~/.zshrc

