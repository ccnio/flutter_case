/**
 * 混入类的知识点：
    1. 使用 mixin 声明混入类
    2. 混入类除了继承Object外，不可以继承任何其他类、不可以定义构造函数
    3. on表示被混入的类必须是on后面限定的类的子类

    被混入类的知识点
    1. 用 with 关键字混入一个 mixin 类
    2. 混入成员有冲突时：
      a. 后面的覆盖前面的同名成员
      b. 不会覆盖被混入类自带的同名方法
      c. 会覆盖被混入类的父类同名方法
    3. super 可以访问到混入类
 */
mixin class MixinA {
  // extends Parent, error: 不能有继承类
  String name = "mixin a";

  // MixinA(){} , error：不能定义构造函数
  void printA() {
    print('a');
  }
}

mixin MixinB on Parent {
  // on 限制被混入类的类型
  String name = "mixin b";

  void printB() {
    print('b');
  }
}

class Parent {
  String name = "parent";
}

class MyClass extends Parent with MixinA, MixinB {
  // 会覆盖继承类的成员，但不会覆盖自己的成员
  void printA() {
    super.printB(); // super 可以访问到混入类
    print("print myclass");
  }
}

void main() {
  var myClass = MyClass();
  print(myClass.name); // mixin b
  myClass.printA(); // print myclass
}
