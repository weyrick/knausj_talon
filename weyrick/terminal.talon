os: mac
app: iterm2
-
# weyrick
change:
  "cd "
change <user.text>:
  "cd "
  insert(user.text)
  key(tab)
  "; ls -al"
  key(enter)
change <user.letters>:
  "cd "
  insert(user.letters)
  key(tab)
  "; ls -al"
  key(enter)
change up:
  "cd ..; ls -al"
  key(enter)
zip <user.text>:
  "z "
  insert(user.text)
  "; ls -al"
  key(enter)
ls:
  "ls -al"
  key(enter)
