# setup
## step1
just apdate
```
sudo apt update && sudo apt upgrade -y
sudo apt-get update && sudo apt-get upgrade -y
```
## step2
run the scripts

## step3
add code in the setting.json of vscode.
also make sure to change the shortcuts 
```
{
  "key": "shift+space",
  "command": "editor.action.triggerSuggest",
  "when": "editorHasCompletionItemProvider && textInputFocus && !editorReadonly"
}
```
## step4
change property of google IME.
* 句読点→、．
* スペース入力→半角
* IMEを無効化→Ctrl Space
* 入力補助→アルファベット、数字、カッコはすべて半角