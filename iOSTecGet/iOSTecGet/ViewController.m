//
//  ViewController.m
//  02.富文本测试
//
//  Created by 信息科技部 on 2019/2/22.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "ViewController.h"
#import "SWCollectionVIewCell.h"
#import "RichTextViewController.h"
#import "SWTimeViewController.h"
#import "NullSafeViewController.h"
#import "SWAlgorithmViewController.h"
#import "SWWebViewController.h"
#import "SWEncryptAndDecryptViewController.h"
#import "SWMJViewController.h"
#import "SWKeywordViewController.h"

#define APIURL  (getUrl())
CG_INLINE NSString* getUrl(){
    
    return @"hahha";
}

#define getSum(a,b)\
^(){\
return a+b;\
}()

inline CGFloat AAdaptionWidth() {
    return 1.0;
}


//#define swAppDelegate  - (AppDelegate *)getAppDelegate { \
//AppDelegate *tempAppDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate; \
//return tempAppDelegate; \
//}
@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic,strong)UICollectionView *collectionView;
@end

@implementation ViewController

static NSString *const cellId = @"cellId";
static NSString *const headerId = @"headerId";
static NSString *const footerId = @"footerId";
static CGFloat kMagin = 10.f;
- (UICollectionView *)collectionView{
    
    if (_collectionView == nil) {
        
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
        _collectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
        _collectionView.backgroundColor = [UIColor whiteColor];
        _collectionView.delegate = self;
        _collectionView.dataSource= self;
        [_collectionView registerNib:[UINib nibWithNibName:@"SWCollectionVIewCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:cellId];
//        [_collectionView registerClass:[SWCollectionVIewCell class] forCellWithReuseIdentifier:cellId];
        [_collectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:headerId];
        
        CGFloat itemWidth = (self.view.frame.size.width - 4 * kMagin) / 3;
        
        //设置单元格大小
        flowLayout.itemSize = CGSizeMake(itemWidth, itemWidth*0.5);
        //最小行间距(默认为10)
        flowLayout.minimumLineSpacing = 5;
        //最小item间距（默认为10）
        flowLayout.minimumInteritemSpacing = 5;
        //设置senction的内边距
        flowLayout.sectionInset = UIEdgeInsetsMake(kMagin, kMagin, kMagin, kMagin);
        //设置UICollectionView的滑动方向
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        //sectionHeader的大小,如果是竖向滚动，只需设置Y值。如果是横向，只需设置X值。
        flowLayout.headerReferenceSize = CGSizeMake(0,100);
    }
    return _collectionView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
//    AppDelegate *application = kAppDelegate;
    NSLog(@"------当前屏幕size%@",APIURL);
    
    double sum = getSum(M_PI,M_E);
    
    [self.view addSubview:self.collectionView];
}

- (void)loadCollectionView{
    
    
}

#pragma mark -- UICollectionViewDelegate

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 150;
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
//    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
    SWCollectionVIewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
    if (indexPath.row == 0) {
        
        cell.titleNameLb.text = @"富文本测试";
    }else if(indexPath.row == 1){
        
        cell.titleNameLb.text = @"时间测试";
    }else if(indexPath.row == 2){
        
        cell.titleNameLb.text = @"底层原理测试";
    }else if(indexPath.row == 3){
        
        cell.titleNameLb.text = @"算法";
    }else if(indexPath.row == 4){
        
        cell.titleNameLb.text = @"H5相关知识";
    }else if(indexPath.row == 5){
        
        cell.titleNameLb.text = @"加密学习";
    }else if(indexPath.row == 6){
        
        cell.titleNameLb.text = @"关键字学习";
    }else{
        
        cell.titleNameLb.text = @"待添加";
    }
    cell.backgroundColor = [UIColor orangeColor];
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    
    // kind有两种 一种是header 一种是footer
    if (kind == UICollectionElementKindSectionHeader) {
        
        UICollectionReusableView *header = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:headerId forIndexPath:indexPath];
        header.backgroundColor = [UIColor yellowColor];
        return header;
    }
    return nil;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) { // 富文本测试
        
        RichTextViewController *richTextVc = [[RichTextViewController alloc]init];
        [self.navigationController pushViewController:richTextVc animated:YES];
    }else if(indexPath.row == 1){ // 时间测试
        
        SWTimeViewController *timeVc = [[SWTimeViewController alloc]init];
        [self.navigationController pushViewController:timeVc animated:YES];
    }else if(indexPath.row == 2){ // 安全崩溃测试
        
        SWMJViewController *mjVc = [[SWMJViewController alloc]init];
        [self.navigationController pushViewController:mjVc animated:YES];
//        NullSafeViewController *nullSafeVc = [[NullSafeViewController alloc]init];
//        [self.navigationController pushViewController:nullSafeVc animated:YES];
    }else if(indexPath.row == 3){ // 算法练习
        
        SWAlgorithmViewController *algorithmVc = [[SWAlgorithmViewController alloc]init];
        [self.navigationController pushViewController:algorithmVc animated:YES];
    }else if(indexPath.row == 4){ // webView学习
        
        SWWebViewController *webViewVc = [[SWWebViewController alloc]init];
        [self.navigationController pushViewController:webViewVc animated:YES];
    }else if(indexPath.row == 5){ // 加密学习
        
        SWEncryptAndDecryptViewController *encryptVc = [[SWEncryptAndDecryptViewController alloc]init];
        [self.navigationController pushViewController:encryptVc animated:YES];
    }else if(indexPath.row == 6){ // 关键字学习
        
        SWKeywordViewController *keywordVc = [[SWKeywordViewController alloc]init];
        [self.navigationController pushViewController:keywordVc animated:YES];
    }else{
        
       
    }
}

   
   
//   - (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
//
//       UICollectionViewCell *cell = [[UICollectionViewCell alloc]initWithFrame:CGRectMake(0, 0, 75, 75)];
//       cell.backgroundColor = [UIColor orangeColor];
//       return cell;
//   }
#pragma mark -- UICollectionViewDataSource
#pragma mark -- UICollectionViewDelegateFlowLayout
@end
