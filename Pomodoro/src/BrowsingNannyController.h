#import "CommonController.h"
@class PomodoroController;
@class Scripter;

@interface BrowsingNannyController : CommonController {
    IBOutlet NSArrayController *__weak arrayController;
    IBOutlet Scripter *__weak scripter;
    IBOutlet PomodoroController *__weak pomodoroController;
    NSPredicate *blacklistedPredicate;
    NSUInteger tickCount;
}

@property (readonly) BOOL enabled;
@property (strong) NSPredicate *blacklistedPredicate;
@property (weak) IBOutlet PomodoroController *pomodoroController;
@property (weak) IBOutlet NSArrayController *arrayController;
@property (weak) IBOutlet Scripter *scripter;

@end
