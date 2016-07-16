//
//  JSONProxy.h
//
//  Copyright (c) 2015 iolate. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (JSONProxy)
+ (NSDictionary *)dictionaryWithContentsOfJSONURLString:(NSString *)urlAddress;
- (NSData *)toJSON;
@end

@interface NSArray (JSONProxy)
+ (NSArray *)arrayWithContentsOfJSONURLString:(NSString *)urlAddress;
- (NSData *)toJSON;
@end

@interface NSData (JSONProxy)
- (id)parseJSON;
@end

@interface NSString (JSONProxy)
- (id)parseJSON;
@end