# ResponderBubble
swift 跨图层传值

参考：https://juejin.cn/post/7247324653840039995

解决复杂UI页面，层级较深，传输UIView事件到VC处理。
无需block 或者delegate 层层传递。
无需Notification 导出分发。

利用响应链传输数据

指定函数接收
指定类型
指定参数

