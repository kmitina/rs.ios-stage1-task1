#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {

    NSMutableArray *sumWithoutAnnDish = [[NSMutableArray alloc] initWithArray: bill];
    [sumWithoutAnnDish removeObjectAtIndex:index];
    int annSum = [[sumWithoutAnnDish valueForKeyPath:@"@sum.self"] intValue] / 2;

    if ([sum intValue] == annSum) {
        return  @"Bon Appetit";
    } else {
        return [NSString stringWithFormat:@"%d", [sum intValue] - annSum];
    }
}

@end
