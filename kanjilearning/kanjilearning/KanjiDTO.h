//
//  KanjiDTO.h
//  kanjilearning
//
//  Created by Red on 2/24/13.
//  Copyright (c) 2013 reddevil. All rights reserved.
//

#import <Foundation/Foundation.h>
@class WindowController;

@interface KanjiDTO : NSObject{
    @private
    WindowController *kanjiWindowController;
    NSString *kanjiWord;
}
@property NSString *KanjiWord;
@property (weak) IBOutlet NSTextField *VietnameseMeaning;
 
@end
