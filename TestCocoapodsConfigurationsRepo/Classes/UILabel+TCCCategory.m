//
//  UILabel+TCCCategory.m
//  Pods-TestCocoapodsConfigurationsRepo_Example
//
//  Created by Bill liu on 2019/9/24.
//

#import "UILabel+TCCCategory.h"
#import <objc/runtime.h>

@implementation UILabel (TCCCategory)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method setText_originalMethod = class_getInstanceMethod(self, @selector(setText:));
        Method swizzle_setText_swizzledMethod = class_getInstanceMethod(self, @selector(swizzle_setText:));
        method_exchangeImplementations(setText_originalMethod, swizzle_setText_swizzledMethod);
        
    });
}

- (void)swizzle_setText:(NSString *)text{
    
    if (text.length > 3) {
        text = [text stringByAppendingFormat:@"_%ld",(long)text.length];
    }
    
    [self swizzle_setText:text];
    
}


@end
