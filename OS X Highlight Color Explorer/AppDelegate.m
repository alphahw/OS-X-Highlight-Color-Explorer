//
//  AppDelegate.m
//  OS X Highlight Color Explorer
//
//  Created by Albin Halinen Wilén on 2016-08-28.
//  Copyright © 2016 alphahw. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;

@property (weak) IBOutlet NSColorWell *colorWell;
@property (weak) IBOutlet NSTextField *textField;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application

    NSColor *highlightColor = [[NSColor selectedControlColor] colorUsingColorSpace:[NSColorSpace sRGBColorSpace]];
    int rgbMax = 255;

    [_colorWell setColor:highlightColor];
    [_textField setStringValue:[NSString stringWithFormat:@"R: %.f\nG: %.f\nB: %.f\nA: %.1f",
                                highlightColor.redComponent * rgbMax,
                                highlightColor.greenComponent * rgbMax,
                                highlightColor.blueComponent * rgbMax,
                                highlightColor.alphaComponent]];

}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
