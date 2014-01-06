// Pomodoro Desktop - Copyright (c) 2009-2011, Ugo Landini (ugol@computer.org)
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
// * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
// * Redistributions in binary form must reproduce the above copyright
// notice, this list of conditions and the following disclaimer in the
// documentation and/or other materials provided with the distribution.
// * Neither the name of the <organization> nor the
// names of its contributors may be used to endorse or promote products
// derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY COPYRIGHT HOLDERS ''AS IS'' AND ANY
// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL <copyright holder> BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#import <Cocoa/Cocoa.h>
#import "CommonController.h"

@class AboutController;
@class StatsController;
@class SplashController;
@class GrowlNotifier;
@class PTHotKey;
@class Scripter;
@class PomodoroNotifier;
@class Pomodoro;

@interface PomodoroController : CommonController {
        	
	IBOutlet NSPanel* __weak prefs;
	IBOutlet NSPanel* __weak namePanel; 
    IBOutlet NSPanel* __weak scriptPanel;
    
    IBOutlet NSTabView* __weak tabView;
    IBOutlet NSToolbar* __weak toolBar;
	IBOutlet NSMenu* __weak pomodoroMenu;
	IBOutlet NSComboBox* __weak initialTimeCombo;
	IBOutlet NSComboBox* initialTimeComboInStart;
	IBOutlet NSComboBox* __weak interruptCombo;
	IBOutlet NSComboBox* __weak breakCombo;
	IBOutlet NSComboBox* __weak longBreakCombo;
	IBOutlet NSComboBox* __weak longBreakResetComboTime;
	IBOutlet NSComboBox* __weak pomodorosForLong;
			
	IBOutlet NSMenuItem* __weak startPomodoro;
	IBOutlet NSMenuItem* __weak finishPomodoro;
	IBOutlet NSMenuItem* __weak interruptPomodoro;
	IBOutlet NSMenuItem* __weak internalInterruptPomodoro;
	IBOutlet NSMenuItem* __weak invalidatePomodoro;
	IBOutlet NSMenuItem* __weak resumePomodoro;
	IBOutlet GrowlNotifier* __weak growl;
	IBOutlet Pomodoro* __weak pomodoro;
    NSInteger longBreakCounter;
    NSTimer* __weak longBreakCheckerTimer;
    PomodoroNotifier* pomodoroNotifier;
    
    ProcessSerialNumber psn;
	AboutController* about;
	SplashController* splash;
	StatsController* stats;
	NSStatusItem* statusItem;
	
	NSImage* pomodoroImage;
	NSImage* pomodoroBreakImage;
	NSImage* pomodoroFreezeImage;
	NSImage* pomodoroNegativeImage;
	NSImage* pomodoroNegativeBreakImage;
	NSImage* pomodoroNegativeFreezeImage;
	
	NSSound* ringing;
	NSSound* ringingBreak;
	NSSound* tick;
			
}

@property (weak) IBOutlet NSPanel* prefs;
@property (weak) IBOutlet NSPanel* namePanel; 
@property (weak) IBOutlet NSPanel* scriptPanel;

@property (weak) IBOutlet NSTabView* tabView;
@property (weak) IBOutlet NSToolbar* toolBar;
@property (weak) IBOutlet NSMenu* pomodoroMenu;
@property (weak) IBOutlet NSComboBox* initialTimeCombo;
@property (weak) IBOutlet NSComboBox* interruptCombo;
@property (weak) IBOutlet NSComboBox* breakCombo;
@property (weak) IBOutlet NSComboBox* longBreakCombo;
@property (weak) IBOutlet NSComboBox* longBreakResetComboTime;
@property (weak) IBOutlet NSComboBox* pomodorosForLong;

@property (weak) IBOutlet GrowlNotifier* growl;
@property (weak) IBOutlet Pomodoro* pomodoro;
@property (nonatomic, assign) NSInteger longBreakCounter;
@property (nonatomic, weak) NSTimer* longBreakCheckerTimer;


@property (nonatomic, weak, readonly) IBOutlet NSMenuItem* startPomodoro;
@property (nonatomic, weak, readonly) IBOutlet NSMenuItem* finishPomodoro;
@property (nonatomic, weak, readonly) IBOutlet NSMenuItem* interruptPomodoro;
@property (nonatomic, weak, readonly) IBOutlet NSMenuItem* internalInterruptPomodoro;
@property (nonatomic, weak, readonly) IBOutlet NSMenuItem* invalidatePomodoro;
@property (nonatomic, weak, readonly) IBOutlet NSMenuItem* resumePomodoro;

-(void) keyMute;
-(void) keyStart;
-(void) keyReset;
-(void) keyInterrupt;
-(void) keyInternalInterrupt;
-(void) keyResume;

-(void) showTimeOnStatusBar:(NSInteger) time;

-(IBAction) about:(id)sender;
-(IBAction) help:(id)sender;
-(IBAction) quit:(id)sender;

-(IBAction) setup:(id)sender;
-(IBAction) stats:(id)sender;
-(IBAction) quickStats:(id)sender;

-(IBAction) start: (id) sender;
-(IBAction) finish: (id) sender;
-(IBAction) nameGiven:(id)sender;
-(IBAction) nameCanceled:(id)sender;
-(IBAction) reset: (id) sender;

-(IBAction) externalInterrupt: (id) sender;
-(IBAction) internalInterrupt: (id) sender;
-(IBAction) resume: (id) sender;
-(IBAction) resetDefaultValues: (id) sender;
-(IBAction) changedCanRestartInBreaks: (id) sender;

-(IBAction) toolBarIconClicked: (id) sender;

@end
