//
//  InterfaceBuiderBindingDemoAppDelegate.h
//  InterfaceBuiderBindingDemo
//
//  Created by CocoaBob on 11-3-9.
//  Copyright 2011 CocoaBob. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface InterfaceBuiderBindingDemoAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
