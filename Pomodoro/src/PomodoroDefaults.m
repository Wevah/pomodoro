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

#import "PomodoroDefaults.h"


@implementation PomodoroDefaults

+ (void) setDefaults {
	NSMutableDictionary *defaultValues = [NSMutableDictionary dictionary]; 
		
	defaultValues[@"initialTime"] = @25;
	defaultValues[@"interruptTime"] = @15;
	defaultValues[@"growlEveryTimeMinutes"] = @2;
	defaultValues[@"speechEveryTimeMinutes"] = @5;
	defaultValues[@"scriptEveryTimeMinutes"] = @5;
	defaultValues[@"breakTime"] = @5;
	defaultValues[@"longbreakTime"] = @10; 
	defaultValues[@"pomodorosForLong"] = @4;
	defaultValues[@"longbreakResetTime"] = @5;

	defaultValues[@"muteCode"] = @29;
	defaultValues[@"muteFlags"] = @1835008U;
	defaultValues[@"startCode"] = @126;
	defaultValues[@"startFlags"] = @10223616U;
	defaultValues[@"resetCode"] = @125;
	defaultValues[@"resetFlags"] = @10223616U;
	defaultValues[@"interruptCode"] = @123;
	defaultValues[@"interruptFlags"] = @10223616U;
	defaultValues[@"internalInterruptCode"] = @30;
	defaultValues[@"internalInterruptFlags"] = @1835008U;
	defaultValues[@"resumeCode"] = @124;
	defaultValues[@"resumeFlags"] = @10223616U;
	defaultValues[@"quickStatsCode"] = @44;
	defaultValues[@"quickStatsFlags"] = @10223616U;

	defaultValues[@"growlStart"] = NSLocalizedString(@"Have a great pomodoro! You have $duration minutes to do '$pomodoroName'.",@"Growl pomodoro start");
	defaultValues[@"speechStart"] = NSLocalizedString(@"Ready, set, go",@"Speech pomodoro start");
    NSString* script = NSLocalizedString(@"-- insert here your Applescript",@"Applescript placeholder");
	defaultValues[@"scriptStart"] = [NSData dataWithData:[script dataUsingEncoding:NSUTF8StringEncoding]];
	defaultValues[@"twitterStart"] = NSLocalizedString(@"Just started pomodoro '$pomodoroName'",@"Twitter pomodoro start");
	
	defaultValues[@"growlInterrupt"] = NSLocalizedString(@"You have $secs seconds to resume.",@"Growl pomodoro interrupt");
	defaultValues[@"speechInterrupt"] = NSLocalizedString(@"You have $secs seconds to resume",@"Speech pomodoro interrupt");
	defaultValues[@"scriptInterrupt"] = [NSData dataWithData:[script dataUsingEncoding:NSUTF8StringEncoding]];
	
	defaultValues[@"growlInterruptOver"] = NSLocalizedString(@"... interruption max time is over, sorry!",@"Growl interrupt over");
	defaultValues[@"speechInterruptOver"] = NSLocalizedString(@"interruption over, sorry",@"Speech interrupt over");
    defaultValues[@"scriptInterruptOver"] = [NSData dataWithData:[script dataUsingEncoding:NSUTF8StringEncoding]];
	
	defaultValues[@"growlReset"] = NSLocalizedString(@"Not a good one? Just try again!",@"Growl pomodoro reset");
	defaultValues[@"speechReset"] = NSLocalizedString(@"Try again",@"Speech pomodoro reset");
    defaultValues[@"scriptReset"] = [NSData dataWithData:[script dataUsingEncoding:NSUTF8StringEncoding]];
	defaultValues[@"twitterReset"] = NSLocalizedString(@"I have just reset pomodoro '$pomodoroName'",@"Twitter pomodoro reset");

	defaultValues[@"growlResume"] = NSLocalizedString(@"... and we're back!",@"Growl pomodoro resume");
	defaultValues[@"speechResume"] = NSLocalizedString(@"And we are back!",@"Speech pomodoro resume");
	defaultValues[@"scriptResume"] = [NSData dataWithData:[script dataUsingEncoding:NSUTF8StringEncoding]];
	
	defaultValues[@"growlEnd"] = NSLocalizedString(@"Great! A full pomodoro!",@"Growl pomodoro end");
	defaultValues[@"speechEnd"] = NSLocalizedString(@"Well done!",@"Speech pomodoro end");
	defaultValues[@"scriptEnd"] = [NSData dataWithData:[script dataUsingEncoding:NSUTF8StringEncoding]];
	defaultValues[@"twitterEnd"] = NSLocalizedString(@"Just finished pomodoro '$pomodoroName'",@"Twitter pomodoro end");
	
	defaultValues[@"growlEvery"] = NSLocalizedString(@"Other $mins minutes passed by. $passed total minutes spent.",@"Growl every minutes");
	defaultValues[@"speechEvery"] = NSLocalizedString(@"$time minutes to go",@"Speech every minutes");
	defaultValues[@"scriptEvery"] = [NSData dataWithData:[script dataUsingEncoding:NSUTF8StringEncoding]];
	
	defaultValues[@"growlBreakFinished"] = NSLocalizedString(@"Ready for another one?",@"Growl break finsihed");
	defaultValues[@"speechBreakFinished"] = NSLocalizedString(@"Ready for next one?",@"Speech break finished");
    defaultValues[@"scriptBreakFinished"] = [NSData dataWithData:[script dataUsingEncoding:NSUTF8StringEncoding]];
	defaultValues[@"twitterBreakFinished"] = NSLocalizedString(@"Just finished break after pomodoro '$pomodoroName'",@"Twitter break finished");
	
	defaultValues[@"defaultVoice"] = @"Alex";
	
	defaultValues[@"mute"] = @NO;
	defaultValues[@"breakEnabled"] = @YES;
	defaultValues[@"canRestartAtBreak"] = @NO;
	defaultValues[@"askBeforeStart"] = @YES;
	defaultValues[@"longbreakEnabled"] = @YES;
	defaultValues[@"longbreakResetEnabled"] = @YES;
	
	defaultValues[@"enableTwitter"] = @NO;
	defaultValues[@"twitterUser"] = @"twitterUser";
	defaultValues[@"twitterPwd"] = @"twitterPwd";
	
	defaultValues[@"growlAtStartEnabled"] = @YES;
	defaultValues[@"stickyStartEnabled"] = @NO;
	defaultValues[@"speechAtStartEnabled"] = @YES;
	defaultValues[@"scriptAtStartEnabled"] = @NO;
	defaultValues[@"twitterAtStartEnabled"] = @NO;
	
	defaultValues[@"growlAtInterruptEnabled"] = @YES;
	defaultValues[@"speechAtInterruptEnabled"] = @NO;
	defaultValues[@"scriptAtInterruptEnabled"] = @NO;
	
	defaultValues[@"growlAtInterruptOverEnabled"] = @YES;
	defaultValues[@"speechAtInterruptOverEnabled"] = @NO;
	defaultValues[@"scriptAtInterruptOverEnabled"] = @NO;
	
	defaultValues[@"growlAtResetEnabled"] = @YES;
	defaultValues[@"speechAtResetEnabled"] = @NO;
	defaultValues[@"scriptAtResetEnabled"] = @NO;
	defaultValues[@"twitterAtResetEnabled"] = @NO;
	
	defaultValues[@"growlAtResumeEnabled"] = @YES;
	defaultValues[@"speechAtResumeEnabled"] = @NO;
	defaultValues[@"scriptAtResumeEnabled"] = @NO;
	
	defaultValues[@"ringAtEndEnabled"] = @YES;
	defaultValues[@"ringAtBreakEnabled"] = @YES;
	defaultValues[@"scriptAtBreakEnabled"] = @NO;
	
	defaultValues[@"tickEnabled"] = @YES;
	defaultValues[@"tickAtBreakEnabled"] = @YES;
	
	defaultValues[@"growlAtEndEnabled"] = @YES;
	defaultValues[@"stickyEndEnabled"] = @NO;
	defaultValues[@"speechAtEndEnabled"] = @YES;
	defaultValues[@"scriptAtEndEnabled"] = @NO;
	defaultValues[@"twitterAtEndEnabled"] = @NO;

	
	defaultValues[@"growlAtEveryEnabled"] = @NO;
	defaultValues[@"speechAtEveryEnabled"] = @NO;	
	defaultValues[@"scriptAtEveryEnabled"] = @NO;
	
	defaultValues[@"growlAtBreakFinishedEnabled"] = @YES;
	defaultValues[@"stickyBreakFinishedEnabled"] = @NO;
	defaultValues[@"speechAtBreakFinishedEnabled"] = @YES;
	defaultValues[@"scriptAtBreakFinishedEnabled"] = @NO;
	defaultValues[@"twitterAtBreakFinishedEnabled"] = @NO;

	
	defaultValues[@"autoPomodoroRestart"] = @NO;
	
	defaultValues[@"ringVolume"] = @90;
	defaultValues[@"ringBreakVolume"] = @90;
	defaultValues[@"voiceVolume"] = @80;
	defaultValues[@"tickVolume"] = @20;
	
	defaultValues[@"showTimeOnStatusEnabled"] = @YES;
	
	defaultValues[@"calendarEnabled"] = @NO;
	defaultValues[@"selectedCalendar"] = @"Pomodoros";
	defaultValues[@"calendarEnd"] = NSLocalizedString(@"$duration minutes Pomodoro '$pomodoroName'", @"Calendar end text");

		
	defaultValues[@"pomodoroName"] = NSLocalizedString(@"Insert here the pomodoro name",@"Pomodoro name prompt");
	defaultValues[@"startOnLoginEnabled"] = @NO;
	defaultValues[@"showSplashScreenAtStartup"] = @YES;
 	defaultValues[@"preventSleepDuringPomodoro"] = @YES;
	defaultValues[@"preventSleepDuringPomodoroBreak"] = @NO;   
	
	defaultValues[@"thingsEnabled"] = @NO;
	defaultValues[@"thingsAddingEnabled"] = @NO;
	defaultValues[@"omniFocusEnabled"] = @NO;
	defaultValues[@"omniFocusAddingEnabled"] = @NO;
	defaultValues[@"remindersEnabled"] = @NO;
	defaultValues[@"remindersAddingEnabled"] = @NO;
	defaultValues[@"ichatEnabled"] = @NO;
	defaultValues[@"skypeEnabled"] = @NO;
	defaultValues[@"adiumEnabled"] = @NO;
    defaultValues[@"moodMessageInPomodoro"] = NSLocalizedString(@"Pomodoro '$pomodoroName'. Back at $dueTime", @"Mood Message");
    defaultValues[@"moodMessageInPomodoroBreak"] = NSLocalizedString(@"Resting after Pomodoro '$pomodoroName'", @"Mood Message Break");


	[[NSUserDefaults standardUserDefaults] registerDefaults:defaultValues];		

}

+(void)removeDefaults {
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"mute"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"initialTime"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"interruptTime"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"growlEveryTimeMinutes"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"speechEveryTimeMinutes"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"scriptEveryTimeMinutes"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"breakTime"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"longbreakTime"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"pomodorosForLong"]; 
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"longbreakReset"]; 
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"longbreakResetTime"]; 

	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"enableTwitter"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"muteCode"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"muteFlags"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"startCode"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"startFlags"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"resetCode"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"resetFlags"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"interruptCode"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"interruptFlags"];	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"internalInterruptCode"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"internalInterruptFlags"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"resumeCode"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"resumeFlags"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"quickStatsCode"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"quickStatsFlags"];

	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"growlStart"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"speechStart"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"scriptStart"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"twitterStart"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"growlInterrupt"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"speechInterrupt"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"scriptInterrupt"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"growlInterruptOver"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"speechInterruptOver"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"scriptInterruptOver"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"growlReset"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"speechReset"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"scriptReset"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"twitterReset"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"growlResume"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"speechResume"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"scriptResume"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"growlEnd"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"speechEnd"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"scriptEnd"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"twitterEnd"];

	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"growlEvery"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"speechEvery"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"scriptEvery"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"growlBreakFinished"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"speechBreakFinished"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"scriptBreakFinished"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"twitterBreakFinished"];
	
	[[NSUserDefaults standardUserDefaults] setObject:@"Alex" forKey:@"defaultVoice"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"breakEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"canRestartAtBreak"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"askBeforeStart"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"longbreakEnabled"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"growlAtStartEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"stickyStartEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"speechAtStartEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"scriptAtStartEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"twitterAtStartEnabled"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"growlAtInterruptEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"speechAtInterruptEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"scriptAtInterruptEnabled"];	
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"growlAtInterruptOverEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"speechAtInterruptOverEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"scriptAtInterruptOverEnabled"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"growlAtResetEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"speechAtResetEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"scriptAtResetEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"twitterAtResetEnabled"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"growlAtResumeEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"speechAtResumeEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"scriptAtResumeEnabled"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"ringAtEndEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"ringAtBreakEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"scriptAtBreakEnabled"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"tickEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"tickAtBreakEnabled"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"growlAtEndEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"stickyEndEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"speechAtEndEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"scriptAtEndEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"twitterAtEndEnabled"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"growlAtEveryEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"speechAtEveryEnabled"];	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"scriptAtEveryEnabled"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"growlAtBreakFinishedEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"stickyBreakFinishedEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"speechAtBreakFinishedEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"scriptAtBreakFinishedEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"twitterAtBreakFinishedEnabled"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"ringVolume"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"ringBreakVolume"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"voiceVolume"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"tickVolume"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"showTimeOnStatusEnabled"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"calendarEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"selectedCalendar"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"calendarEnd"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"autoPomodoroRestart"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"startOnLoginEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"showSplashScreenAtStartup"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"preventSleepDuringPomodoro"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"preventSleepDuringPomodoroBreak"];
	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"thingsEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"thingsAddingEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"omniFocusEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"omniFocusAddingEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"remindersEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"remindersAddingEnabled"];
    
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"ichatEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"skypeEnabled"];
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"adiumEnabled"];	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"moodMessageInPomodoro"];	
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"moodMessageInPomodoroBreak"];	

}

@end
