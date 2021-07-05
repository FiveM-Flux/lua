function FluxCoords(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextScale(scale, scale)
	SetTextColour( 0,0,0, 255 )
	SetTextOutline( 0,0,0, 255 )
    SetTextFont(4)
    SetTextEntry("string")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end
