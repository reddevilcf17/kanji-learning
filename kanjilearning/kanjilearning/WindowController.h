//
//  WindowController.h
//  kanjilearning
//
//  Created by Red on 2/27/13.
//  Copyright (c) 2013 reddevil. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface WindowController : NSWindowController
@property (weak) IBOutlet NSTextField *lbKanji;
@property NSString *kanjiWord;
@end
