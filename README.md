JSONProxy
====

NSDictionary and NSArray categories for JSON (ObjC)


#### NSDictionary
    + (NSDictionary *)dictionaryWithContentsOfJSONURLString:(NSString *)urlAddress;
    - (NSData *)toJSON;

#### NSArray
    + (NSArray *)arrayWithContentsOfJSONURLString:(NSString *)urlAddress;
    - (NSData *)toJSON;

