//
//  DataModel.m
//  InterfaceBuiderBindingDemo
//
//  Created by CocoaBob on 11-3-9.
//  Copyright 2011 CocoaBob. All rights reserved.
//

#import "DataModel.h"


@implementation DataModel

@synthesize isNotTrue;
@synthesize sliderValue = mSliderValue;
@synthesize arrayList = mArrayList;
@synthesize selectedIndexSet = mSelectedIndexSet;
@synthesize m2ndArrayList,m2ndArrayListSelection;

- (void)awakeFromNib{
	self.sliderValue = [NSNumber numberWithDouble:31.1415926f];
	
	//Popup 1
	self.arrayList = [NSMutableArray arrayWithObjects:@"0",@"1",@"2",nil];
	//Automatically use setSelectedIndexSet, so the observer can know the value is changed.
	self.selectedIndexSet = [NSIndexSet indexSetWithIndex:1];
	
	//Popup 2
	self.m2ndArrayList = [NSMutableArray arrayWithObjects:@"one",@"two",@"three",nil];
	//Manually inform the observer that value is changed.
	[self willChangeValueForKey:@"m2ndArrayListSelection"];
	m2ndArrayListSelection = 1;
	[self didChangeValueForKey:@"m2ndArrayListSelection"];
}

- (void)dealloc{
	self.sliderValue = nil;//Autoreleased
	self.arrayList = nil;//Autoreleased
	self.selectedIndexSet = nil;//Autoreleased
	self.m2ndArrayList = nil;//Autoreleased
	[super dealloc];
}

- (BOOL)isNotTrue{
	return NO;
}

- (IBAction)add:(id)sender{
	//Manually inform the observer that value is changed.
	[arrayController willChangeValueForKey:@"arrangedObjects"];
	[self.arrayList addObject:[[NSNumber numberWithInt:([[self.arrayList lastObject] intValue]+1)] stringValue]];
	[arrayController didChangeValueForKey:@"arrangedObjects"];
}

- (IBAction)remove:(id)sender{
	if ([self.arrayList count] > 0) {
		//Manually inform the observer that value is changed.
		[arrayController willChangeValueForKey:@"arrangedObjects"];
		[self.arrayList removeLastObject];
		[arrayController didChangeValueForKey:@"arrangedObjects"];
	}
}

@end
