//
//  NSData+hex.h
//  as_mas
//
//  Created by liaogang on 2019/2/15.
//  Copyright © 2019 liaogang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (HexString)
-(NSString*)hexString;
@end

@interface NSString (hex)
-(NSData*)hexData;
@end

NS_ASSUME_NONNULL_END
