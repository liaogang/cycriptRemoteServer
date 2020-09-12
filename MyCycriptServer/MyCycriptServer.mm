#line 1 "/Users/minisj.net/MyCycriptServer/MyCycriptServer/MyCycriptServer.xm"
#import "MDCycriptManager.h"
#import "Cycript.h"
#import <UIKit/UIKit.h>

static __attribute__((constructor)) void _logosLocalCtor_2eadeef6(int __unused argc, char __unused **argv, char __unused **envp){
	

	[[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        
        NSLog(@"\n\n----cycript server started at port 6666----\n\n");
        
        CYListenServer(6666);

        MDCycriptManager* manager = [MDCycriptManager sharedInstance];
        [manager loadCycript:NO];

    }];

}
