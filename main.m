//
//  main.m
//  BritanniClip
//
//  Created by Flash Sheridan on 3/28/10.
//  Copyright Flash (K.J.) Sheridan 2010–6. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
    
	//int retVal = 42;
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	int retVal = UIApplicationMain(argc, argv, nil, nil);
	[pool release];
	return retVal;
}


/*************
http://stackoverflow.com/questions/822599/launch-safari-from-iphone-app surtyaarthoughts
NSURL *url = [NSURL URLWithString:@"http://www.stackoverflow.com"];

if (![[UIApplication sharedApplication] openURL:url])

NSLog(@"%@%@",@"Failed to open url:",[url description]);

http://forums.macrumors.com/showthread.php?t=463648 iphoneGuy
Check out the launch me sample....

[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.apple.com"]];



***************/
