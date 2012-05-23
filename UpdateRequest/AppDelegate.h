//
//  AppDelegate.h
//  UpdateRequest
//
//  Created by Mehak on 5/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASIHTTPRequest.h"
#import "CheckForUpdate.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UIWindow *window;
    CheckForUpdate *checkForUpdate;
    UIViewController *viewController;

}
@property (strong, nonatomic) UIViewController *viewController;
@property (strong, nonatomic) UIWindow *window;
@property (strong, retain) CheckForUpdate *checkForUpdate;


@end
