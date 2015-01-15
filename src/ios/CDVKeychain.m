/*
 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at
 http://www.apache.org/licenses/LICENSE-2.0
 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
 */

#import "CDVKeychain.h"

@implementation CDVKeychain

- (void) get:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString *key  = [command.arguments objectAtIndex:0];
    NSString *service  = [command.arguments objectAtIndex:1];
    
    NSString *log = [NSString stringWithFormat: @"=== get method called with arguments: %@ %@", key, service];
    NSLog(log);
    
    //pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"win"];
    
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"reason"];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void) set:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString *key  = [command.arguments objectAtIndex:0];
    NSString *value  = [command.arguments objectAtIndex:1];
    NSString *service  = [command.arguments objectAtIndex:2];
    
    NSString *log = [NSString stringWithFormat: @"=== set method called with arguments: %@ %@ %@", key, value, service];
    NSLog(log);
    
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"win"];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void) remove:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString *key  = [command.arguments objectAtIndex:0];
    NSString *service  = [command.arguments objectAtIndex:1];
    
    NSString *log = [NSString stringWithFormat: @"=== remove method called with arguments:%@ %@", key, service];
    NSLog(log);
    
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"win"];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}
@end
