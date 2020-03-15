#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
     if (sadArray.count == 0) {
           return sadArray;
       }

       NSMutableArray* result = [[NSMutableArray alloc] initWithArray:sadArray];
           for (int i = 1; i < result.count - 1; i++) {
               int currentIndexValue = [result[i] intValue];
               int sum = [result[i-1] intValue] + [result[i+1] intValue];

               if (currentIndexValue > sum) {
                   [result removeObjectAtIndex: i];
                   i--;

                   if (i > 1) {
                       i--;
                   }
               }
           }
           return (NSArray*)result;
    
}

@end
