fun main(args: Array<String>) {
    println((1..999).toList().filter { it % 3 == 0 || it % 5 == 0}.sum())
}
