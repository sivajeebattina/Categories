//
//  NSString+RemoveCharacters.m
//  Categories
//
//  Created by SivajeeBattina on 6/4/15.
//  Copyright (c) 2015 Paradigmcreatives. All rights reserved.
//

#import "NSString+RemoveCharacters.h"
#import "objc/runtime.h"

static  NSString const* string1 = @"Hello";

@implementation NSString (RemoveCharacters)
@dynamic inputString;
-(NSString *)removeNumbersFromString{
    NSString *trimmedString = @"";
     NSArray *array1= [[NSArray alloc] init];
    NSCharacterSet *numberSet=[NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    
    array1 = [self.inputString componentsSeparatedByCharactersInSet:numberSet];
    for (NSString *string3 in array1) {
        trimmedString = [trimmedString stringByAppendingString:string3];
    }
    return trimmedString;

}
-(void)setInputString:(NSString *)aObject{
    objc_setAssociatedObject(self, &string1, aObject, OBJC_ASSOCIATION_COPY);
}
-(NSString *)inputString{
    self.inputString = @"Calculate yar";
    return objc_getAssociatedObject(self, &string1);
}
@end
