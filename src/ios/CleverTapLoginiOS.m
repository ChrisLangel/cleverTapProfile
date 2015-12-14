#import "CleverTapLoginiOS.h"
#import <CleverTapSDK/CleverTap.h>

@implementation CleverTapLoginiOS

- (void)profileInfo:(CDVInvokedUrlCommand*)command
{

    NSString* name  = [[command arguments] objectAtIndex:0];
    NSString* email = [[command arguments] objectAtIndex:1];
    NSString* ctId  = [[command arguments] objectAtIndex:2];

    NSDictionary *profile = @{@"Name"     : name,
                              @"Email"    : email, // String
                              @"Identity" : ctId}; // String or number

    [[CleverTap push] profile:profile];

}

@end
