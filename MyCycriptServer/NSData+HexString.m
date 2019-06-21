//
//  NSData+hex.m
//  as_mas
//
//  Created by liaogang on 2019/2/15.
//  Copyright © 2019 liaogang. All rights reserved.
//

#import "NSData+HexString.h"

@implementation NSData (HexString)
-(NSString*)hexString
{
    const unsigned char *buffer = (const unsigned char*)self.bytes;

    NSString *str = @"";
    
    for (int i = 0; i < self.length; i ++) {
        str = [str stringByAppendingFormat:@"%02x", buffer[i] ];
    }

    return str;
}



@end


@implementation NSString (hex)

-(NSData*)hexData
{
    const char *p = self.UTF8String;
    NSUInteger len = self.length;
    unsigned char *buf = malloc(len/2);
    NSUInteger buflen = len / 2;
    
    for ( int i = 0; i < buflen; i++) {
        unsigned int a;
        sscanf( p+i+i , "%02x", &a);
        unsigned char c = a;
        buf[i] = c;
    }
    
    NSData *data = [NSData dataWithBytesNoCopy:buf length: buflen];
    
    return data;
}
@end
