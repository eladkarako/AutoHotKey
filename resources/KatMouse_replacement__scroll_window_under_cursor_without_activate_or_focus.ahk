#MaxHotkeysPerInterval 400

CoordMode, Mouse, Screen
return

;scroll window under cursor
WheelUp::
	MouseGetPos, m_x, m_y
	;handle negative coordinates
	m_x := m_x > 0 ? m_x : m_x + 0xffffffff + 1
	m_y := m_y > 0 ? m_y : m_y + 0xffffffff + 1
	hw_m_target := DllCall( "WindowFromPoint", "int64", m_x | (m_y << 32), "Ptr")

	; WM_MOUSEWHEEL
	;	WHEEL_DELTA = 120
	DllCall("SendMessage","PTR",hw_m_target,"UInt", 0x20A, "PTR",120 << 16,"PTR", ( m_y << 16 )|m_x)
return

WheelDown::
	MouseGetPos, m_x, m_y
	;handle negative coordinates
	m_x := m_x > 0 ? m_x : m_x + 0xffffffff + 1
	m_y := m_y > 0 ? m_y : m_y + 0xffffffff + 1
	hw_m_target := DllCall( "WindowFromPoint", "int64", m_x | (m_y << 32), "Ptr")

	; WM_MOUSEWHEEL
	;	WHEEL_DELTA = 120
	DllCall("SendMessage","PTR",hw_m_target,"UInt", 0x20A, "PTR",-120 << 16,"PTR", ( m_y << 16 )|m_x)
return
