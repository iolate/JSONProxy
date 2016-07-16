//
//  JSONProxy.m
//
//  Copyright (c) 2015 iolate. All rights reserved.
//

#import "JSONProxy.h"

@implementation NSDictionary (JSONProxy)

+ (NSDictionary *)dictionaryWithContentsOfJSONURLString:(NSString *)urlAddress
{
    NSData* data = [NSData dataWithContentsOfURL:[NSURL URLWithString: urlAddress]];
    if (data == nil) return nil;
    __autoreleasing NSError* error = nil;
    id result = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    if (error != nil) return nil;
    return result;
}

- (NSData *)toJSON
{
    NSError* error = nil;
    id result = [NSJSONSerialization dataWithJSONObject:self  options:kNilOptions error:&error];
    if (error != nil) return nil;
    return result;    
}

@end

@implementation NSArray (JSONProxy)

+ (NSArray *)arrayWithContentsOfJSONURLString:(NSString *)urlAddress
{
    NSData* data = [NSData dataWithContentsOfURL:[NSURL URLWithString: urlAddress]];
    if (data == nil) return nil;
    __autoreleasing NSError* error = nil;
    id result = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    if (error != nil) return nil;
    return result;
}

- (NSData *)toJSON
{
    NSError* error = nil;
    id result = [NSJSONSerialization dataWithJSONObject:self  options:kNilOptions error:&error];
    if (error != nil) return nil;
    return result;
}

@end

@implementation NSData (JSONProxy)

- (id)parseJSON
{
    __autoreleasing NSError* error = nil;
    id result = [NSJSONSerialization JSONObjectWithData:self options:kNilOptions error:&error];
    if (error != nil) return nil;
    return result;
}

@end

@implementation NSString (JSONProxy)

- (id)parseJSON
{
    NSData* data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data parseJSON];
}

@end