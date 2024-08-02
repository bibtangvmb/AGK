
// Project: Latihan 1 
// Created: 2024-04-26

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Latihan 1" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 120, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

LoadImage(1,"gg-removebg-preview.png")

CreateSprite(1,1)
SetSpriteScale(1,0.2,0.2)
SetSpriteSize(1, (1024/2) - (GetSpriteWidth(1) / 2),(768/2)- (GetSpriteHeight(1)/2))

SetJoystickScreenPosition(200,800,20)


do
    
	x = GetJoystickX() * 20
	y = GetJoystickY() * 20
	
	SetSpritePosition(1,GetSpriteX(1) + x, GetSpriteY(1) + y)
    Print( ScreenFPS() )
    Sync()
loop
