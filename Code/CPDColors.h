#if TARGET_OS_IPHONE

#import <UIKit/UIKit.h>

typedef UIColor CPDColor;

@interface UIColor (CocoaPods)

#else

#import <Cocoa/Cocoa.h>

typedef NSColor CPDColor;

@interface NSColor (CocoaPods)

#endif

+(CPDColor*)alloyBlue;
+(CPDColor*)andyRed;
+(CPDColor*)fabioBurgundy;
+(CPDColor*)florianWhiteish;
+(CPDColor*)keithGrey;
+(CPDColor*)kyleBrown;
+(CPDColor*)ortaOrange;

@end

