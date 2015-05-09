## 3.6.2 Limitations

Type inference saves a lot of manual type hints when working with local variables, but sometimes the type system still needs some help. In fact, it does not even try to infer the type of a [variable](class-field-variable.md) or [property](class-field-property.md) field unless it has a direct initialization.

There are also some cases involving recursion where type inference has limitations. If a function calls itself recursively while its type is not (completely) known yet, type inference may infer a wrong, too specialized type.

A different kind of limitation involves the readability of code. If type inference is overused it might be difficult to understand parts of a program due to the lack of visible types. This is particularly true for method signatures. It is recommended to find a good balance between type inference and explicit type hints.

---

Previous section: [Top-down Inference](type-system-top-down-inference.md)

Next section: [Modules and Paths](type-system-modules-and-paths.md)