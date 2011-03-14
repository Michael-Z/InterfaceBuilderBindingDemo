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
	BOOL isNotTrue;
	
	NSMutableArray *m2ndArrayList;
	NSInteger m2ndArrayListSelection;
}

@property (readonly, getter = isNotTrue) BOOL isNotTrue;
@property (retain) NSNumber *sliderValue;//Will be auto retained and auto released
@property (retain) NSMutableArray *arrayList;//Will be auto retained and auto released
@property (retain) NSIndexSet *selectedIndexSet;//Will be auto retained and auto released
@property (retain) NSMutableArray *m2ndArrayList;//Will be auto retained and auto released
@property (assign) NSInteger m2ndArrayListSelection;

- (IBAction)add:(id)sender;
- (IBAction)remove:(id)sender;

@end
