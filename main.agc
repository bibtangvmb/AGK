
// Project: WarShip 
// Created: 2024-04-27

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "WarShip" )
SetWindowSize( 768, 1024, 0 )
SetWindowAllowResize( 1 ) // memungkinkan pengguna untuk mengubah ukuran jendela

// set display properties
SetVirtualResolution( 1024, 768 ) // tidak harus cocok dengan jendela
SetOrientationAllowed( 1, 1, 1, 1 ) // memungkinkan potret dan lanskap di perangkat seluler
SetSyncRate( 90, 0 ) // 30fps, bukan 60 untuk menghemat baterai
SetScissor( 0,0,0,0 ) // gunakan ruang layar maksimum yang tersedia, tanpa batas hitam
UseNewDefaultFonts( 1 ) // sejak versi 2.0.22 kita dapat menggunakan font default yang lebih bagus

LoadImage(1,"space-ship.png")//Space Ship Image
LoadImage(10,"alien-ship.png")// Alien Ship Image
LoadImage(100,"asteroid-1.png")//Asteroid Image 1
LoadImage(101,"asteroid-2.png")//Asteroid Image 2
LoadImage(200,"particels.png")//Asteroid Particles Image
LoadImage(1000,"background.png")//Background Image

LoadSound (1,"backsound.wav")
PlaySound (1,60,1)

CreateSprite(2,1000)
SetSpriteSize(2,768,1024)

CreateSprite(1,1)
SetSpriteSize(1,100,100)
SetSpritePosition(1,0,GetVirtualHeight() - GetSpriteHeight(1))

SetJoystickScreenPosition(200,800,20) //Membuat Joystick


do
		
	x = GetJoystickX() * 25 //Mengambil Nilai Joystick X
	
	SetSpritePosition(1,GetSpriteX(1) + x,GetSpriteY(1)) //Merubah posisi ID Sprite 1 ke posisi yang lain
	
	if(GetSpriteX(1)<0)
		SetSpriteX(1,0)
	endif
	
	if(GetSpriteX(1) > GetVirtualWidth() - GetSpriteWidth(1))
		SetSpriteX(1,GetVirtualWidth() - GetSpriteWidth(1))
	endif

    Print( ScreenFPS() )
    Sync()
loop
