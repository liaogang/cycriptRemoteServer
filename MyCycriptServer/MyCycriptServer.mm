#line 1 "/Users/dafu/liaogang/MyCycriptServer/MyCycriptServer/MyCycriptServer.xm"
#import "MDCycriptManager.h"
#import "Cycript.h"
#import <UIKit/UIKit.h>

static __attribute__((constructor)) void _logosLocalCtor_2eadeef6(int __unused argc, char __unused **argv, char __unused **envp){
	
	NSLog(@"Cycript server ");

	    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {

		

        int base = 8011;
        base += rand()%400;
        
        NSLog(@"Cycript server to start ..: %u", base);
            
        CYListenServer(base);

        MDCycriptManager* manager = [MDCycriptManager sharedInstance];
        [manager loadCycript:NO];

    }];

}
