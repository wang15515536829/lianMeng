//
//  ProductDetailsView.m
//  CellPhoneItem3
//
//  Created by lanouhn on 15/6/23.
//  Copyright (c) 2015年 lanou3g.com. All rights reserved.
//

#import "ProductDetailsView.h"
#define kProductDetailURL @"http://lib3.wap.zol.com.cn/index.php?c=Iphone_392_SeriesDetail&noParam=1&seriesId=19062"

@implementation ProductDetailsView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubviews];
    }
    return self;
}

- (void)addSubviews
{
    // 创建scrollView (这个起点坐标系统默认导航条下方的为0)
    self.myScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    self.myScrollView.backgroundColor = [UIColor yellowColor];
    
    // 给scrollView创建TableView
    // 创建第一个TableView
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.myScrollView.frame.size.height) style:UITableViewStylePlain];
    // tableView的两个代理对象
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.myScrollView addSubview:self.tableView];
    [self.tableView release];
    
    // 创建第二个tableView
    PriceBar *priceTableView = [[PriceBar alloc] initWithFrame:CGRectMake(self.frame.size.width, self.tableView.frame.origin.y, self.tableView.frame.size.width, self.tableView.frame.size.height) style:UITableViewStylePlain];
    [self.myScrollView addSubview:priceTableView];
    
    // 创建第三个tableView
    AppraisalBar *appraisalTableView = [[AppraisalBar alloc] initWithFrame:CGRectMake(2 * self.frame.size.width, self.tableView.frame.origin.y , self.tableView.frame.size.width, self.tableView.frame.size.height) style:UITableViewStylePlain];
    [self.myScrollView addSubview:appraisalTableView];
    
    // 给scrollView设置content
    self.myScrollView.contentSize = CGSizeMake(self.frame.size.width * 3, 0);
    
    // scrollView滑动条关闭
    self.myScrollView.showsHorizontalScrollIndicator = NO;
    
    // 设置scrollView不要弹簧效果
    self.myScrollView.bounces = NO;
    
    // scrollView可以整页翻动
    self.myScrollView.pagingEnabled = YES;
    
    // scrollView的代理对象
    self.myScrollView.delegate = self;
    
    // myScrollView添加释放
    [self addSubview:self.myScrollView];
    [self.myScrollView release];
    
    // 请求数据
    [self getDataFromUrl:nil];
    
    // 数组初始化
    self.proDetailArr = [NSMutableArray array];
    self.paraArr = [NSMutableArray array];
    self.extraProsArr = [NSMutableArray array];
}

// 懒加载
- (NSMutableArray *)AllModelArr
{
    if (!_AllModelArr) {
        self.AllModelArr = [NSMutableArray array];
    }
    return _AllModelArr;
}

#pragma mark - 请求数据的方法
- (void)getDataFromUrl:(NSString *)parameter
{
    // 初始化网络请求
    NSURL *url = [NSURL URLWithString:kProductDetailURL];
    NetworkEngine *engine = [NetworkEngine netWorkEngineWithURL:url params:nil delegate:self];
    [engine start];
}

#pragma mark - 请求数据成功的代理方法
- (void)netWorkDidFinishLoading:(NetworkEngine *)engine withInfo:(NSData *)data
{
    NSError *error = nil;
    // 拿到最外层数组
    self.dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
    // 解析第一个productDetail数据
    [self getProDetailModelArr:self.dic];
    // 解析第二个Param数据
    [self getParamModelArr:self.dic];
    // 解析第三个ExtraPros数据
    [self getExtraProsModelArr:self.dic];
    
    [self.tableView reloadData];
}

#pragma mark - 解析3个model数据
// 第一个PrDetail数据
- (void)getProDetailModelArr:(NSDictionary *)dic
{
    NSDictionary *dicPro = [dic objectForKey:@"seriesInfo"];
    // 拿到里层字典
    ProductDetailModel *proDetailModel = [[ProductDetailModel alloc] initWithDictionary:dicPro];
    // 装进一个数组里
    [self.proDetailArr addObject:proDetailModel];
    // 再装进总数组(以便以后好建立section)
    [self.AllModelArr addObject:self.proDetailArr];
}

// 第二个Param数据
- (void)getParamModelArr:(NSDictionary *)dic
{
    NSArray *arrPar = [dic objectForKey:@"paramArr"];
    for (NSDictionary *dicK in arrPar) {
        ParamArr *paramModel = [[ParamArr alloc] initWithDictionary:dicK];
        [self.paraArr addObject:paramModel];
    }
    [self.AllModelArr addObject:self.paraArr];
}

// 第三个ExtraPros数据
- (void)getExtraProsModelArr:(NSDictionary *)dic
{
    NSArray *arrExt = [dic objectForKey:@"extraPros"];
    for (NSDictionary *dicK in arrExt) {
        ExtraPros *extraPros = [[ExtraPros alloc] initWithDictionary:dicK];
        [self.extraProsArr addObject:extraPros];
    }
    [self.AllModelArr addObject:self.extraProsArr];
}

#pragma mark - tableView的代理方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSLog(@"%ld" , self.AllModelArr.count);
    return self.AllModelArr.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self.AllModelArr objectAtIndex:section] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *bigPicid = @"bigPicid";
    BigPic *bigPicCell = [tableView dequeueReusableCellWithIdentifier:bigPicid];
    if (bigPicCell == nil) {
        bigPicCell = [[BigPic alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:bigPicid];
    }
    
    // 自适应高度
    [bigPicCell calculateHeight];
    
    return bigPicCell;
    
}


#pragma mark - cell自适应高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 1) {
        BigPic *bigPicCell = (BigPic *)[self tableView:self.tableView cellForRowAtIndexPath:indexPath];
        
        return bigPicCell.frame.size.height;
    } else 
    
    
}

- (void)dealloc
{
    [self.tableView release];
    self.AllModelArr = nil;
    self.dic = nil;
    [super dealloc];
}

@end
