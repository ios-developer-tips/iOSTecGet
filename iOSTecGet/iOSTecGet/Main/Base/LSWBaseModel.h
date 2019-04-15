//
//  LSWBaseModel.h
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/11.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSWBaseModel : NSObject

@property (nonatomic, copy)NSString *image;
@property (nonatomic, copy)NSString *selectedImage;
@property (nonatomic, strong)NSString *viewController;
@property (nonatomic, copy)NSString *titleName;
@end

NS_ASSUME_NONNULL_END
