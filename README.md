- https://craftinginterpreters.com
- https://github.com/munificent/craftinginterpreters

This repo was generated from the author's repo and only the clox related code is retained.

## chap14_chunks (Chunks of Bytecode)

- 定义 `Chunk` 以字节码形式存储指令集，主要用到动态数组
- 包含数值常量的存储

## chap15_virtual (A Virtual Machin)

- 定义 `VM` 包裹字节码，同时增加一个 `ip` 字段 instruction pointer，永远指向 first byte of code in the chunk
- 利用栈完成后缀表达式的加减乘除运算
- BINARY_OP 宏有个技巧，当包含多条语句时，用 while 假循环包裹一下

## chap16_scanning (Scanning on Demand)

- 扫描源代码字符串，解析成一个个token，是关键字、标识符、字符串还是数值，比较费功夫

## chap17_compiling (Compiling Expressions)

- 完成了一个表达式的语法解析，把各指令写入 chunk 中，如输入 `(-1 + 2) * 3 - -4`，算法很神奇，没看太懂

## chap18_types (Types of Values)

- 利用 `union` 完成多种类型封装(bool/nil/number)，已经可以实现 `!(5 - 4 > 3 * 2 == !nil)`

## chap19_strings (Strings)

- 因为 string 是变长的，所以引入了 `Obj`，`ObjString` 是 `Obj` 封装
- `VM` 中维护了所有 objects 链表

## chap20_hash (Hash Tables)

- 增加哈希表，没用链表的实现，用了开放寻址法，如果冲突了就往下个桶放
- `VM` 中维护了 strings 的哈希表，避免相同的字符串重复创建

## chap21_global (Global Variables)

- `VM` 中维护了 globals 的哈希表，存储全局变量

## chap22_local (Local Variables)

## chap23_jumping (Jumping Back and Forth)

## chap24_calls (Calls and Functions)

## chap25_closures (Closures)

## chap26_garbage (Garbage Collection)

## chap27_classes (Classes and Instances)

## chap28_methods (Methods and Initializers)

## chap29_superclasses (Superclasses)

## chap30_optimization (Optimization)
