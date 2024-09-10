package ASSIGN2.task_1
//Exercise 1: Implicit can be used in different context. In this session we only saw how implicit is used for parameters. Explore and learn how implicit is used for type conversion.
object Ex_8 {
implicit def Concat(x: Int): String = x.toString

def printConcat(str1: String, str2: String): Unit = {
  println(str1+str2)
}
def main(args: Array[String]): Unit = {
  val x = 600
  val y = 900

  printConcat(x,y)
}
}
