//
//  KanjiDTO.m
//  kanjilearning
//
//  Created by Red on 2/24/13.
//  Copyright (c) 2013 reddevil. All rights reserved.
//

#import "KanjiDTO.h"

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
    
    NSArray *meaning = [[NSArray alloc] init];
//    NSArray *kanji;
    int r = rand() % count;
    [_VietnameseMeaning setStringValue:[lines objectAtIndex:r]];
}

@end
