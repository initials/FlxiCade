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
                                  text:@"iCade For Flixel-iOS\nButtons have a buttonBegan icon"
                                  font:nil
                                  size:16.0];
    helloText.color = 0xffffffff;
    helloText.alignment = @"center";
    helloText.x = 0;
    helloText.y = 5;
    [self add:helloText];
    
    // add a joystick sprite
    
    joystickSprite = [FlxSprite spriteWithX:30
                                   y:30
                             graphic:@"red-ball.png"];
    [self add:joystickSprite];
    
    //add button sprites
    
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
    
    
    //just pressed icons
    
    buttonA2 = [iCadeButtonSprite iCadeButtonSpriteWithOrigin:CGPointMake(250, 40)];
    buttonA2.scale=CGPointMake(0.2, 0.2);
    buttonA2.visible=NO;
    [self add:buttonA2];    
    
    buttonB2 = [iCadeButtonSprite iCadeButtonSpriteWithOrigin:CGPointMake(250, 140)];
    buttonB2.scale=CGPointMake(0.2, 0.2);
    buttonB2.visible=NO;
    [self add:buttonB2];  
    
    buttonC2 = [iCadeButtonSprite iCadeButtonSpriteWithOrigin:CGPointMake(300, 40)];
    buttonC2.scale=CGPointMake(0.2, 0.2);
    buttonC2.visible=NO;
   [self add:buttonC2];    
    
    buttonD2 = [iCadeButtonSprite iCadeButtonSpriteWithOrigin:CGPointMake(300, 140)];
    buttonD2.scale=CGPointMake(0.2, 0.2);
    buttonD2.visible=NO;
   [self add:buttonD2];
    
    buttonE2 = [iCadeButtonSprite iCadeButtonSpriteWithOrigin:CGPointMake(350, 40)];
    buttonE2.scale=CGPointMake(0.2, 0.2);
    buttonE2.visible=NO;
    [self add:buttonE2];    
    
    buttonF2 = [iCadeButtonSprite iCadeButtonSpriteWithOrigin:CGPointMake(350, 140)];
    buttonF2.scale=CGPointMake(0.2, 0.2);
    buttonF2.visible=NO;
   [self add:buttonF2];  
    
    buttonG2 = [iCadeButtonSprite iCadeButtonSpriteWithOrigin:CGPointMake(400, 40)];
    buttonG2.scale=CGPointMake(0.2, 0.2);
    buttonG2.visible=NO;
    [self add:buttonG2];    
    
    buttonH2 = [iCadeButtonSprite iCadeButtonSpriteWithOrigin:CGPointMake(400, 140)];
    buttonH2.scale=CGPointMake(0.2, 0.2);
    buttonH2.visible=NO;
   [self add:buttonH2];  
    
    
    
    
    
    [buttonA play:@"redup"];
    [buttonB play:@"redup"];
    [buttonC play:@"blackup"];
    [buttonD play:@"blackup"];    
    [buttonE play:@"blackup"];
    [buttonF play:@"blackup"];
    [buttonG play:@"whiteup"];
    [buttonH play:@"whiteup"];     

    [buttonA2 play:@"redup"];
    [buttonB2 play:@"redup"];
    [buttonC2 play:@"blackup"];
    [buttonD2 play:@"blackup"];    
    [buttonE2 play:@"blackup"];
    [buttonF2 play:@"blackup"];
    [buttonG2 play:@"whiteup"];
    [buttonH2 play:@"whiteup"];     

    offset = 15;
    
    
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];

    [super dealloc];
}

- (void)update
{
    //joystick
    
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
    
    //buttons 
    
    
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
    
    
    // test button began state
    
    if (FlxG.touches.iCadeABegan) {
        buttonA2.visible=YES;
    }
    else {
        buttonA2.visible=NO;
    }
    
    if (FlxG.touches.iCadeBBegan) {
        buttonB2.visible=YES;
    }
    else {
        buttonB2.visible=NO;
    }
    
    if (FlxG.touches.iCadeCBegan) {
        buttonC2.visible=YES;
    }
    else {
        buttonC2.visible=NO;
    }
    
    if (FlxG.touches.iCadeDBegan) {
        buttonD2.visible=YES;
    }
    else {
        buttonD2.visible=NO;
    }  
    
    if (FlxG.touches.iCadeEBegan) {
        buttonE2.visible=YES;
    }
    else {
        buttonE2.visible=NO;
    }
    
    if (FlxG.touches.iCadeFBegan) {
        buttonF2.visible=YES;
    }
    else {
        buttonF2.visible=NO;
    }
    
    if (FlxG.touches.iCadeGBegan) {
        buttonG2.visible=YES;
    }
    else {
        buttonG2.visible=NO;
    }
    
    if (FlxG.touches.iCadeHBegan) {
        buttonH2.visible=YES;
    }
    else {
        buttonH2.visible=NO;
    }
    
    
    
    
    
    [super update];
}

@end
