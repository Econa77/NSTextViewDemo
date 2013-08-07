//
//  AppDelegate.h
//  NSTextViewDemo
//
//  Created by 古林 俊祐 on 2013/08/08.
//  Copyright (c) 2013年 ShunsukeFurubayashi. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (unsafe_unretained) IBOutlet NSTextView *textView;



@end
