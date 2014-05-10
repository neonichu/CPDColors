#import "CPDColors.h"

#if TARGET_OS_IPHONE
@implementation UIColor (CocoaPods)
#else
@implementation NSColor (CocoaPods)
#endif

+(CPDColor*)alloyBlue {
  return [self colorWithRed:108.0 / 255.0
                      green:171.0 / 255.0
                       blue:229.0 / 255.0
                      alpha:1.0];
}

+(CPDColor*)andyRed {
    return [self colorWithRed:171.0 / 255.0
                        green: 46.0 / 255.0
                         blue: 42.0 / 255.0
                        alpha:1.0];
}

+(CPDColor*)fabioBurgundy {
    return [self colorWithRed:181.0 / 255.0
                        green: 65.0 / 255.0
                         blue: 88.0 / 255.0
                        alpha:1.0];
}

+(CPDColor*)florianWhiteish {
    return [self colorWithRed:246.0 / 255.0
                        green:246.0 / 255.0
                         blue:246.0 / 255.0
                        alpha:1.0];
}

+(CPDColor*)keithGrey {
    return [self colorWithRed:207.0 / 255.0
                        green:197.0 / 255.0
                         blue:194.0 / 255.0
                        alpha:1.0];
}

+(CPDColor*)kyleBrown {
    return [self colorWithRed: 50.0 / 255.0
                        green:  7.0 / 255.0
                         blue:  6.0 / 255.0
                        alpha:1.0];
}

+(CPDColor*)ortaOrange {
    return [self colorWithRed:228.0 / 255.0
                        green: 64.0 / 255.0
                         blue: 58.0 / 255.0
                        alpha:1.0];
}

@end

