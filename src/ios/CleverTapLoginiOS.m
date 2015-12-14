#import "CleverTapLoginiOS.h"
#import <CleverTapSDK/CleverTap.h>

@implementation CleverTapLoginiOS

- (void)profileInfo:(CDVInvokedUrlCommand*)command
{

    NSString* callbackId = [command callbackId];
    NSString* name  = [[command arguments] objectAtIndex:0];
    NSString* email = [[command arguments] objectAtIndex:1];
    NSString* ctId  = [[command arguments] objectAtIndex:2];
    // NSString* msg = [NSString stringWithFormat: @"Hello, %@, %@", email,ctId];

    NSDictionary *profile = @{@"Name"     : name,
                              @"Email"    : email, // String
                              @"Identity" : ctId}; // String or number

    [[CleverTap push] profile:profile];

    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    // CDVPluginResult* result = [CDVPluginResult
    //                            resultWithStatus:CDVCommandStatus_OK
    //                            messageAsString:msg];

    [self success:pluginResult callbackId:callbackId];
}

@end
