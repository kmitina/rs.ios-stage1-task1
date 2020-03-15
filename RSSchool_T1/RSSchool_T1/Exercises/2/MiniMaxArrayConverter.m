#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    
    NSMutableArray<NSNumber*> *result = [NSMutableArray arrayWithCapacity:2];
    int sum = 0;
    for (int i = 1; i < array.count; i++)
        sum += [array[i] intValue];

    result[0] = [NSNumber numberWithInt:sum]; //minimum
    result[1] = [NSNumber numberWithInt:sum]; // maximum

    for (int passValue = 1; passValue < array.count; passValue++) {
        sum = 0; // reset sum
        for (int i = 0; i < array.count; i++)
            if (i != passValue) sum += [array[i] intValue];

        if (sum < [result[0] intValue]) result[0] = [NSNumber numberWithInt:sum];
        if (sum > [result[1] intValue]) result[1] = [NSNumber numberWithInt:sum];
    }

    return result;
}

@end
