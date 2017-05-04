//
//  main.m
//  Word Effects
//
//  Created by David Guichon on 2017-05-03.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>

//WORKED ON UNTIL THE OPERATIONS SECTION

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *end = @"yes";
        while ([end isEqualToString:@"yes"]) {

            
            NSLog(@"Type in the input that you would like to edit");
            
            // 255 unit long array of characters
            char inputChars[225];
            
            printf("Input a String: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", inputChars);
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String: inputChars];
            
            NSLog(@"Input was: %@", inputString);
            
    
            
            NSLog(@"Press 1 to uppercase it \n Press 2 to lowercase it\n Press 3 to numberize it\n Press 4 to canadianize it \n Press 5 to De-Space-It");
            
            char decisionChars[1];
            printf("Input a String: ");
            fgets(decisionChars, 1, stdin);
            printf("Your string is %s\n", inputChars);
            NSString *decisionString = [NSString stringWithUTF8String: decisionChars];
            
            
            //UPPERCASE
            if ([decisionString isEqualToString: @"1"]){
                NSString *uppercaseString = [inputString uppercaseString];
                NSLog(@"%@", uppercaseString);
            }
            
            //lowercase
            if ([decisionString isEqualToString: @"2"]){
                NSString *lowercaseString = [inputString lowercaseString];
                NSLog(@"%@", lowercaseString);
            }
            
            //Numberize it
            if ([decisionString isEqualToString: @"3"]){
                NSInteger numberizeNumber = [inputString integerValue];
                NSLog(@"%ld", (long)numberizeNumber);
            }
            
            //Canadianize eh
            if ([decisionString isEqualToString: @"4"]){
                NSString *canadianString = [inputString stringByAppendingString:@"eh"];
                NSLog(@"%@", canadianString);
            }
            
            //De-Space-It
            if ([decisionString isEqualToString:@"5"]){
                NSString *deSpacedString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"%@", deSpacedString);
            }
            
            //Respond
            if ([inputString containsString:@"?"]){
                NSLog(@"I don't know");
            }
            if ([inputString containsString:@"!"]){
                NSLog(@"whoa calm down");
            }

            
            
  
            
            
        }
        
        
    }
    return 0;
}
