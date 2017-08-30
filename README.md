# XBLoopLabel
实现商城跑马灯，上下自动轮播滚动文字

### HOW？
#### 直接把控件拖进项目，直接创建该控件，传入文字数组，以及滚动间隔，点击文字已block回调

    用法
    
    
    /**  
    直接调用这个方法  
    @param dataSource 数据源  
    @param timeInterval 时间间隔,默认是1.0秒  
    @param frame 控件大小  
    */  
    + (instancetype)textLoopViewWith:(NSArray *)dataSource loopInterval:(NSTimeInterval)timeInterval initWithFrame:(CGRect)frame selectBlock:(selectTextBlock)selectBlock;
    

### ViewController.m  
具体代码如下：  
    
        XBTextLoopView *loopView = [XBTextLoopView textLoopViewWith:@[@"我是跑马灯😆1", @"我是跑马灯😆2", @"我是跑马灯😆3"] loopInterval:1.0 initWithFrame:CGRectMake(100, 100, 200, 40) selectBlock:^(NSString *selectString, NSInteger index) {  
    NSLog(@"%@===index%ld", selectString, index);  
    }];  
        [self.view addSubview:loopView];
