package kotlin

import java.util.*

/**
 * Author:  LiuHao
 * Email:   114650501@qq.com
 * TIME:    2020/4/20 --> 11:13 AM
 * Description: KotlinArray 简述：
 */
fun main() {
//    elArray()
    val tempList = arrayListOf<Int>()
    val book = Book(1, "2", 28)
    val (_, _, age) = book
    tempList.add(age)

    print("book.id = ${book.id}, book.name = ${book.name},book.age = ${book.age},${printList(tempList)}")

    val test = Test("1", 2, "3")
    val (_, temp, info) = test
}


class Test(val date: String, val temp: Int, val info: String) {
    operator fun component1(): String {
        return date
    }

    operator fun component2(): Int {
        return temp
    }

    operator fun component3(): String {
        return info
    }

}

fun printList(tempList: ArrayList<Int>): String {
    var sb = StringBuffer()
    for (item in tempList) {
        sb.append(item)
    }
    return sb.toString()
}

fun inOperator(i: Int) {
    if (i in 1 until 10)
        print(i)

}

data class Book(var id: Int, var name: String, var age: Int) {
}

/**
 * 数组的常用方法
 */
fun elArray() {

    //  创建包含指定元素的数组（相当于Java数组的静态初始化）
    var arr1 = arrayOf("Java", "Kotlin", "Swift", "Go")
    var arr2 = arrayOf(2, 4, 500, -34)

    //  创建指定长度、元素为null的数组（相当于Java数组的动态初始化）
    var arr3 = arrayOfNulls<Double>(5)
    var arr4 = arrayOfNulls<Int>(6)

    //  创建长度为0的空数组
    var arr5 = emptyArray<String>()
    var arr6 = emptyArray<Int>()

    //  创建指定长度、使用lambda表达式初始化数组元素的数组
    var arr7 = Array(5, { (it * 2 + 97).toChar() })
    var arr8 = Array(6, { "hello" })

    //  使用arrayOf()函数：无须显式指定数组的长度，但需要依次列出每个数组元素。这种方式相当于Java数组的静态初始化。
    //  使用arrayOfNulls()函数：需要显式指定数组的长度，数组元素全部被初始化为null。这种方式相当于Java数组的动态初始化。
    //  使用emptyArray()函数：创建一个长度为0的空数组。
    //  使用Array(size:Int,init:(Int)->T)构造器：需要显式指定数组的长度，并可通过Lambda表达式来动态计算各数组的值。


    //  创建包含指定元素的数组
    var intArr = intArrayOf(2, 4, 30, -5)
    var doubleArr = doubleArrayOf(2.3, 3.5, -3.0)
    //  创建指定长度、使用Lambda表达式初始化数组元素的数组
    var intArr2 = IntArray(5, { it * it })
    var charArr = CharArray(5, { (it * 2 + 97).toChar() })
    intArr.contentToString()
    println(Arrays.toString(intArr2))
    println(Arrays.toString(charArr))


    //  kotlin语言的数组索引值同样是从0开始的。
    //  创建包含指定元素的数组
    var strArr = arrayOf("Kotlin", "Java", "Go", "Swift")
    //  使用两种方式获取数组元素
    println(strArr[1])
    println(strArr.get(1))
    //  使用两种方式修改数组元素
    strArr[1] = "Python"
    strArr.set(2, "Ruby")
    println(Arrays.toString(strArr))

    //  Kotlin的for-in循环可自动遍历数组的每个元素。
    var languages = arrayOf("C/C++", "Java", "Python", "Kotlin")
    for (language in languages) {
        println(language)
    }

    //  Kotlin的数组还提供了一个indices属性，该属性即可返回数组的索引区间。
    for (i in languages.indices) {
        println(languages[i])
    }
    //  还可以使用in、!in来检查某个索引是否位于数组的索引区间内。
    var i = java.util.Random().nextInt(10)
    println(i in languages.indices)


    //  还可以使用数组的withIndex()方法来同时访问数组的索引和元素，该方法返回一个Iterable对象，该对象的所有元素都是IndexedValue。
    for ((index, value) in languages.withIndex()) {
        println("索引为${index}的元素是：${value}")
    }


    //  定义一个数组
    var arr = arrayOf(2, 4, 5, 6)
    //  判断是否所有元素的平方都大于20
    println(arr.all { it * it > 20 })
    //  判断是否任一元素的平方大于20
    println(arr.any { it * it > 20 })
    //  根据数组元素来计算<K,V>对，返回所有<K，V>对组成的Map集合
    //  K是数组元素+10，V是数组元素的平方
    var result = arr.associate { it + 10 to it * it }
    println("result为：${result}")
    //  创建一个可变Map集合，用于追加根据数组计算出来的key=value对
    var map = mutableMapOf(1 to 100, 2 to 120, -1 to 130)
    //  将计算出来的key、value对添加到map集合中
    arr.associateByTo(map, { it * it })
    println("map为：${map}")
    //  计算数组所有元素的总和
    println(arr.fold(0, { acc, e -> acc + e }))
    //  定义一个a数组
    var a = arrayOf(3, 4, 5, 6)
    //  定义一个a2数组
    var a2 = arrayOf(3, 4, 5, 6)
    //  a数组和a2数组的长度相等，每个元素依次相等，将输出true
    println("a数组和a2数组是否相等：${a.contentEquals(a2)}")
    //  通过赋值a数组，生成一个新的b数组
    var b = a.copyOf(6)
    println("a数组和b数组是否相等：${a.contentEquals(b)}")
    //  输出b数组的元素
    println("b数组的元素为：${b.contentToString()}")
    //  将b数组的第五个元素到第七个元素赋值为1
    b.fill(1, 4, 6)
    //  输出b数组的元素
    println("b数组的元素为：${b.contentToString()}")
    //  对b数组进行排序
    b.sort()
    //  输出b数组的元素
    println("b数组的元素为：${b.contentToString()}")

    //  step()步长
    for (i in 1..5 step 2)
        print(i) // 输出“135”

    for (i in 5 downTo 1 step 2)
        print(i) // 输出“531”
}