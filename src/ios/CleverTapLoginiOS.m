#import "CleverTapLoginiOS.h"

@implementation CleverTapLoginiOS

- (void)profileInfo:(CDVInvokedUrlCommand*)command
{

    NSString* callbackId = [command callbackId];
    NSString* email = [[command arguments] objectAtIndex:0];
    NSString* CTid  = [[command arguments] objectAtIndex:1];
    NSString* msg = [NSString stringWithFormat: @"Hello, %@", email];

    CDVPluginResult* result = [CDVPluginResult
                               resultWithStatus:CDVCommandStatus_OK
                               messageAsString:msg];

    [self success:result callbackId:callbackId];
}

@end
