//
//  DataModel.m
//  InterfaceBuiderBindingDemo
//
//  Created by CocoaBob on 11-3-9.
//  Copyright 2011 CocoaBob. All rights reserved.
//

#import "DataModel.h"


@implementation DataModel

@synthesize sliderValue = mSliderValue;
@synthesize arrayList = mArrayList;
@synthesize selectedIndexSet = mSelectedIndexSet;

- (void)awakeFromNib{
	self.sliderValue = [NSNumber numberWithInt:31];
	self.arrayList = [NSMutableArray arrayWithObjects:@"0",@"1",@"2",nil];
	self.selectedIndexSet = [NSIndexSet indexSetWithIndex:1];
}

- (void)dealloc{
	self.sliderValue = nil;
	self.arrayList = nil;
	self.selectedIndexSet = nil;
	[super dealloc];
}

- (IBAction)add:(id)sender{
	[arrayController willChangeValueForKey:@"arrangedObjects"];
	[self.arrayList addObject:[[NSNumber numberWithInt:([[self.arrayList lastObject] intValue]+1)] stringValue]];
	[arrayController didChangeValueForKey:@"arrangedObjects"];
}

- (IBAction)remove:(id)sender{
	if ([self.arrayList count] > 0) {
		[arrayController willChangeValueForKey:@"arrangedObjects"];
		[self.arrayList removeLastObject];
		[arrayController didChangeValueForKey:@"arrangedObjects"];
	}
}

@end
