# Check Pattern

* ID
    * [0-9]*$
    * \>= 1
* NAME
    * [a-zA-Z0-9,. ;:-=@()\\[-\`{-~]*$

## Note

* Don't forget appending escape char [ `¥`, `\`, \`, \" ] of Souce code or Script.

# Run

```
nabeshin@iMacNabeshin check_char_kind % sh test.sh "" ""                            
inValid ID
inValid NAME
nabeshin@iMacNabeshin check_char_kind % sh test.sh 1 a
valid ID 1
valid NAME a
nabeshin@iMacNabeshin check_char_kind % sh test.sh a 1
inValid ID a
valid NAME 1
nabeshin@iMacNabeshin check_char_kind % sh test.sh 1.0 abc_1
inValid ID 1.0
valid NAME abc_1
nabeshin@iMacNabeshin check_char_kind % sh test.sh -1.0 "Abc Inc."
inValid ID -1.0
inValid NAME Abc Inc.
nabeshin@iMacNabeshin check_char_kind % sh test.sh "1 2 3" "Abc Inc."                    
inValid ID 1 2 3
valid NAME Abc Inc.
nabeshin@iMacNabeshin check_char_kind % sh test.sh "0" "Abc Inc.[@jp](Tokyo,Shibuya)" 
inValid ID 0
valid NAME Abc Inc.[@jp](Tokyo,Shibuya)
nabeshin@iMacNabeshin check_char_kind % sh test.sh "あ" "い"         
inValid ID あ
inValid NAME い
nabeshin@iMacNabeshin check_char_kind % 
```
