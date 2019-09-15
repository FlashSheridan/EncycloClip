//
//  BritanniClipAppDelegate.m
//  BritanniClip
//
//  Created by Flash Sheridan on 3/28/10.
//  Copyright Flash (K.J.) Sheridan 2010–6. All rights reserved.
//

//#import "UIPasteboard.h"
#import "BritanniClipAppDelegate.h"

@implementation BritanniClipAppDelegate

@synthesize window;

const NSUInteger maxUnescQueryLength = 255;

 - (void)applicationDidFinishLaunching:(UIApplication *)application {    
	 vc = [[UIViewController alloc]initWithNibName:nil bundle:nil];
	 self.window.rootViewController = vc; //Envoy http://stackoverflow.com/questions/30884896/application-windows-are-expected-to-have-a-root-view-controller-at-the-end-of-a
	[window makeKeyAndVisible];
}


- (void)applicationDidBecomeActive:(UIApplication *)application	{
	//exit(42);
	NSMutableString* theUrl = [NSMutableString stringWithString:@"https://www.britannica.com"];
	NSString* theQueryStr = @"/search?query=";	//search?query=

    // Override point for customization after application launch
	UIPasteboard* gpBoard = [UIPasteboard generalPasteboard];
	NSString* theClip = [gpBoard string];
	
	if (theClip)	{
		NSMutableString* theTrimmedClip = [NSMutableString stringWithString: theClip];
		CFStringTrimWhitespace((CFMutableStringRef)theTrimmedClip);
		if ([theTrimmedClip length] > maxUnescQueryLength) {
			CFStringPad ( (CFMutableStringRef)theTrimmedClip, NULL, maxUnescQueryLength, 0 );
		}
		NSString* theEscapedClip = [theTrimmedClip stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding];
		if (theEscapedClip) {
			[theUrl appendString:theQueryStr];
			[theUrl appendString:theEscapedClip];
		}
	}
		
	// UIPasteboardNameGeneral http://stackoverflow.com/questions/850793/iphone-os-3-0-access-clipboard
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:theUrl]]; //@"http://www.apple.com"
	  //Don't check status since there's nothing to do about failure
}

- (void)dealloc {
    [vc release];
    [window release];
    [super dealloc];
}


@end
