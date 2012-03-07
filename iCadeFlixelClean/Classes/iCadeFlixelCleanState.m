//
//  ;
//  iCadeFlixelClean
//
//  Copyright Semi Secret Software 2009-2010. All rights reserved.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

#import "iCadeFlixelCleanState.h"
#import "iCadeButtonSprite.h"


@implementation iCadeFlixelCleanState



int offset;


- (id)init
{
  if ((self = [super init]))
  {
      self.bgColor = 0xff35353d;
  }
    
  return self;
}

- (void)create
{
    helloText = [FlxText textWithWidth:FlxG.width
                                  text:@"iCade For Flixel-iOS"
                                  font:nil
                                  size:8.0];
    helloText.color = 0xffffffff;
    helloText.alignment = @"center";
    helloText.x = 0;
    helloText.y = 15;
    [self add:helloText];
    
    joystickSprite = [FlxSprite spriteWithX:30
                                   y:30
                             graphic:@"red-ball.png"];
    [self add:joystickSprite];
    
    buttonA = [iCadeButtonSprite iCadeButtonSpriteWithOrigin:CGPointMake(250, 80)];
    [self add:buttonA];    
        
    buttonB = [iCadeButtonSprite iCadeButtonSpriteWithOrigin:CGPointMake(250, 180)];
    [self add:buttonB];  
    
    buttonC = [iCadeButtonSprite iCadeButtonSpriteWithOrigin:CGPointMake(300, 80)];
    [self add:buttonC];    
    
    buttonD = [iCadeButtonSprite iCadeButtonSpriteWithOrigin:CGPointMake(300, 180)];
    [self add:buttonD];
    
    buttonE = [iCadeButtonSprite iCadeButtonSpriteWithOrigin:CGPointMake(350, 80)];
    [self add:buttonE];    
    
    buttonF = [iCadeButtonSprite iCadeButtonSpriteWithOrigin:CGPointMake(350, 180)];
    [self add:buttonF];  
    
    buttonG = [iCadeButtonSprite iCadeButtonSpriteWithOrigin:CGPointMake(400, 80)];
    [self add:buttonG];    
    
    buttonH = [iCadeButtonSprite iCadeButtonSpriteWithOrigin:CGPointMake(400, 180)];
    [self add:buttonH];    
    
    
    
    [buttonA play:@"redup"];
    [buttonB play:@"redup"];
    [buttonC play:@"blackup"];
    [buttonD play:@"blackup"];    
    [buttonE play:@"blackup"];
    [buttonF play:@"blackup"];
    [buttonG play:@"whiteup"];
    [buttonH play:@"whiteup"];     

    

    offset = 15;
    
    
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];

    [super dealloc];
}

- (void)update
{
    
//    NSLog(@"%d", FlxG.touches.iCadeUp);
    
    if (FlxG.touches.iCadeUp) {
        joystickSprite.y = 115;
    }
    else if (FlxG.touches.iCadeDown) {
        joystickSprite.y = 145;
    }
    else {
        joystickSprite.y = 130;
        
    }
    
    if (FlxG.touches.iCadeLeft) {
        joystickSprite.x = 15;
    }
    
    else if (FlxG.touches.iCadeRight) {
        joystickSprite.x = 45;
    }
    else {
        joystickSprite.x = 30;
        
    }    
    
    if (FlxG.touches.iCadeA) {
        [buttonA play:@"reddown"];
    }
    else {
        [buttonA play:@"redup"];
    }

    if (FlxG.touches.iCadeB) {
        [buttonB play:@"reddown"];
    }
    else {
        [buttonB play:@"redup"];
    }
    
    if (FlxG.touches.iCadeC) {
        [buttonC play:@"blackdown"];
    }
    else {
        [buttonC play:@"blackup"];
    }
    
    if (FlxG.touches.iCadeD) {
        [buttonD play:@"blackdown"];
    }
    else {
        [buttonD play:@"blackup"];
    }  
    
    
    if (FlxG.touches.iCadeE) {
        [buttonE play:@"blackdown"];
    }
    else {
        [buttonE play:@"blackup"];
    }
    
    if (FlxG.touches.iCadeF) {
        [buttonF play:@"blackdown"];
    }
    else {
        [buttonF play:@"blackup"];
    }
    
    if (FlxG.touches.iCadeG) {
        [buttonG play:@"whitedown"];
    }
    else {
        [buttonG play:@"whiteup"];
    }
    
    if (FlxG.touches.iCadeH) {
        [buttonH play:@"whitedown"];
    }
    else {
        [buttonH play:@"whiteup"];
    }
    
    
    
    
    [super update];
}

@end
