//To compile type kotlinc -d main.jar main.kt
// To run the program type kotlin -classpath main.jar MainKt

fun main(){
  print("Enter a value to be outputted.")
  val (a, b) = readLine()!!.split(' ')
  println(a.toInt() + b.toInt())
}
