//
//  DataModel.h
//  InterfaceBuiderBindingDemo
//
//  Created by CocoaBob on 11-3-9.
//  Copyright 2011 CocoaBob. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface DataModel : NSObject {
	NSNumber *mSliderValue;
	NSMutableArray *mArrayList;
	NSIndexSet *mSelectedIndexSet;
	IBOutlet NSArrayController *arrayController;
}

@property (nonatomic,retain) NSNumber *sliderValue;
@property (nonatomic,retain) NSMutableArray *arrayList;
@property (nonatomic,retain) NSIndexSet *selectedIndexSet;

- (IBAction)add:(id)sender;
- (IBAction)remove:(id)sender;

@end
