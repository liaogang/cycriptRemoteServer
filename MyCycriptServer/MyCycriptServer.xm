#import "MDCycriptManager.h"
#import "Cycript.h"
#import <UIKit/UIKit.h>

%ctor{
	

	[[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {


        	CYListenServer(6666);


        	MDCycriptManager* manager = [MDCycriptManager sharedInstance];
        	[manager loadCycript:NO];



    }];

}