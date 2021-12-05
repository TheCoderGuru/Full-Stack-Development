FILE="/mnt/chromeos/GoogleDrive/Computers/My Computer/Desktop/full_stack_development/Java/Tutorial.java"

echo "Compiling ${FILE##*/}"

javac Tutorial.java

echo "Executing ${FILE##*/}"

java Tutorial