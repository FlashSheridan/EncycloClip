//
//  BritanniClipAppDelegate.h
//  BritanniClip
//
//  Created by Flash Sheridan on 3/28/10.
//  Copyright Flash (K.J.) Sheridan 2010–6. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BritanniClipAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UIViewController* vc;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

