# lazdialog
Something like kdialog, zenity but should load faster (build with lazarus).

#Textarera Example shell:
answer=$(lazdialog --textarea --caption "windowTitle" --label "questiion label?" --default "default textarea content")
echo "You put $answer"
