//
//  KanjiDTO.m
//  kanjilearning
//
//  Created by Red on 2/24/13.
//  Copyright (c) 2013 reddevil. All rights reserved.
//

#import "KanjiDTO.h"
#import "WindowController.h"

@implementation KanjiDTO
- (IBAction)btGenerate:(id)sender {
//        NSString *newContents = @"abcxyz"; // New string.
//        NSError *error = nil;
//        [newContents writeToFile:@"someFile.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
//        if (error) {
//            // Some error has occurred. Handle it.
//        }
    
    //Read file
    NSString *contents = [NSString stringWithContentsOfFile:@"someFile.txt" encoding:NSUTF8StringEncoding error:NULL];
    
    //NSInteger integer = [contents integerValue];
    
    NSArray *lines = [contents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    
    NSInteger count = [lines count];
    NSMutableArray *meaning = [[NSMutableArray alloc] init];
        NSMutableArray *kanji = [[NSMutableArray alloc] init];
//    NSArray meaning = [[NSArray alloc] init];
//    NSArray kanji = [[NSArray alloc] init];
    
    for (int i = 0; i < count; i++) {
        if (i % 2 == 0) {
            [meaning addObject:[lines objectAtIndex:i]];
        }
        else{
            [kanji addObject:[lines objectAtIndex:i]];
        }
    }
    int a =(count / 2);
    int r = rand() % a;
    kanjiWord = [kanji objectAtIndex:r];
    [_KanjiWord setValue:kanji];
    [_VietnameseMeaning setStringValue:[meaning objectAtIndex:r]];
}

- (IBAction)btViewKanji:(id)sender {
    NSWindowController *window = [[NSWindowController alloc] initWithWindowNibName:@"MainMenu"];
    [window showWindow:nil];
    
    kanjiWindowController = [[WindowController alloc] initWithWindowNibName:@"KanjiWindow"];
    kanjiWindowController.kanjiWord = kanjiWord;
    [kanjiWindowController showWindow:self];
//    NSBeginAlertSheet(@"Kanji",
//                      @"OK",
//                      NULL,
//                      NULL,
//                      [[NSApp delegate] window],
//                      self,
//                      @selector(sheetDidEnd:resultCode:contextInfo:),
//                      NULL,
//                      NULL,
//                      kanjiWord);
}
//-(void)sheetDidEnd:(NSWindow *)sheet resultCode:(NSInteger)resultCode contextInfo:(void *)contextInfo{
//    {
//        if (resultCode == NSAlertDefaultReturn) {
//            NSLog(@"OK");
//        }
//    
//}
//}


@end
