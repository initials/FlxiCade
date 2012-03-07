#import "iCadeButtonSprite.h"

static NSString * ImgButton = @"buttons.png";

@implementation iCadeButtonSprite


+ (id) iCadeButtonSpriteWithOrigin:(CGPoint)Origin
{
	return [[[self alloc] initWithOrigin:Origin] autorelease];
}

- (id) initWithOrigin:(CGPoint)Origin
{
	if ((self = [super initWithX:Origin.x y:Origin.y graphic:nil])) {
		
		[self loadGraphicWithParam1:ImgButton param2:YES param3:NO param4:50 param5:50];
        [self addAnimationWithParam1:@"redup" param2:[NSMutableArray intArrayWithSize:1 ints:0] param3:0];
        [self addAnimationWithParam1:@"reddown" param2:[NSMutableArray intArrayWithSize:1 ints:1] param3:0];
        [self addAnimationWithParam1:@"whiteup" param2:[NSMutableArray intArrayWithSize:1 ints:2] param3:0];
        [self addAnimationWithParam1:@"whitedown" param2:[NSMutableArray intArrayWithSize:1 ints:3] param3:0];
        [self addAnimationWithParam1:@"blackup" param2:[NSMutableArray intArrayWithSize:1 ints:4] param3:0];
        [self addAnimationWithParam1:@"blackdown" param2:[NSMutableArray intArrayWithSize:1 ints:5] param3:0];
        [self play:@"redup"];
	}
	
	return self;	
}


- (void) dealloc
{
    
	[super dealloc];
}


- (void) update
{   

    
    
	
	[super update];
	
}


@end
