# StatelessWidget、 StatefulWidget 

StatelessWidget 是一个不可变的Widget，一旦StatelessWidget被创建，它的属性就不会改变。Icon、IconButton, 和Text都是无状态widget, 它们都是 StatelessWidget的子类。

StatefulWidget 包含一个State对象，该对象可以存储和管理Widget的状态。当状态改变时，Flutter框架会自动调用State对象的build方法来重新构建Widget。

widget 属性 final 修饰，每次渲染就会重新创建