//
//  WindowController.m
//  kanjilearning
//
//  Created by Red on 2/27/13.
//  Copyright (c) 2013 reddevil. All rights reserved.
//

#import "WindowController.h"
@class KanjiDTO;
@interface WindowController ()

@end

@implementation WindowController

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)windowDidLoad
{
    [_lbKanji setStringValue:_kanjiWord];
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

@end
