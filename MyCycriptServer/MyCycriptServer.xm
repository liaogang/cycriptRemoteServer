#import "MDCycriptManager.h"
#import "Cycript.h"
#import <UIKit/UIKit.h>

%ctor{
	
    //先在Cydia里安装cycript

	[[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        
        NSLog(@"\n\n----cycript server started at port 6666----\n\n");
        
        CYListenServer(6666);

        MDCycriptManager* manager = [MDCycriptManager sharedInstance];
        [manager loadCycript:NO];

    }];

}
