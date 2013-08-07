//
//  AppDelegate.m
//  NSTextViewDemo
//
//  Created by 古林 俊祐 on 2013/08/08.
//  Copyright (c) 2013年 ShunsukeFurubayashi. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{    
    //表示テキスト
    NSAttributedString* atrstr = [[NSAttributedString alloc] initWithString:@"テスト文字列"];
    //テキスト指定
    [[self.textView textStorage] setAttributedString:atrstr];
    [[self.textView textStorage] setFont:[NSFont fontWithName:@"Helvetica-Bold" size:19.0f]];
    [[self.textView textStorage] addAttribute:NSForegroundColorAttributeName value:[NSColor blackColor] range:NSMakeRange(0, [[self.textView  textStorage] length])];
    //フレーム調整
    [self.textView sizeToFit];
    
    //TextViewサイズ取得
    NSRect frame = [self.textView.layoutManager usedRectForTextContainer:self.textView.textContainer];
    
    NSLog(@"Text描画エリア == %@",NSStringFromRect(frame));
}

@end
