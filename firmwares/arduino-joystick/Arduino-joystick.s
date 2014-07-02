	.file	"Arduino-joystick.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.RingBuffer_Remove.constprop.5,"ax",@progbits
	.type	RingBuffer_Remove.constprop.5, @function
RingBuffer_Remove.constprop.5:
.LFB101:
	.file 1 "Lib/LightweightRingBuff.h"
	.loc 1 182 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
	.loc 1 184 0
	lds r30,USARTtoUSB_Buffer+130
	lds r31,USARTtoUSB_Buffer+130+1
	ld r24,Z+
.LVL1:
	.loc 1 186 0
	sts USARTtoUSB_Buffer+130+1,r31
	sts USARTtoUSB_Buffer+130,r30
	subi r30,lo8(USARTtoUSB_Buffer+128)
	sbci r31,hi8(USARTtoUSB_Buffer+128)
	brne .L2
	.loc 1 187 0
	ldi r18,lo8(USARTtoUSB_Buffer)
	ldi r19,hi8(USARTtoUSB_Buffer)
	sts USARTtoUSB_Buffer+130+1,r19
	sts USARTtoUSB_Buffer+130,r18
.L2:
.LBB46:
	.loc 1 189 0
	in r18,__SREG__
.LVL2:
.LBB47:
.LBB48:
	.file 2 "/usr/lib/avr/include/util/atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL3:
/* #NOAPP */
.LBE48:
.LBE47:
	.loc 1 191 0
	lds r25,USARTtoUSB_Buffer+132
	subi r25,lo8(-(-1))
	sts USARTtoUSB_Buffer+132,r25
.LVL4:
.LBB49:
.LBB50:
	.loc 2 70 0
	out __SREG__,r18
	.loc 2 71 0
.LBE50:
.LBE49:
.LBE46:
	.loc 1 195 0
	ret
	.cfi_endproc
.LFE101:
	.size	RingBuffer_Remove.constprop.5, .-RingBuffer_Remove.constprop.5
	.section	.text.SetupHardware,"ax",@progbits
.global	SetupHardware
	.type	SetupHardware, @function
SetupHardware:
.LFB87:
	.file 3 "Arduino-joystick.c"
	.loc 3 124 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 3 126 0
	in r24,0x34
	andi r24,lo8(-9)
	out 0x34,r24
	.loc 3 127 0
	ldi r24,lo8(24)
/* #APP */
 ;  127 "Arduino-joystick.c" 1
	in __tmp_reg__, __SREG__
	cli
	sts 96, r24
	sts 96, __zero_reg__
	out __SREG__,__tmp_reg__
	
 ;  0 "" 2
.LVL5:
/* #NOAPP */
.LBB55:
.LBB56:
	.file 4 "../../LUFA/Drivers/Peripheral/Serial.h"
	.loc 4 102 0
	ldi r24,lo8(16)
	ldi r25,0
	sts 204+1,r25
	sts 204,r24
	.loc 4 104 0
	ldi r24,lo8(6)
	sts 202,r24
	.loc 4 105 0
	ldi r24,lo8(2)
	sts 200,r24
	.loc 4 106 0
	ldi r28,lo8(-55)
	ldi r29,0
	ldi r24,lo8(24)
	st Y,r24
	.loc 4 108 0
	sbi 0xa,3
	.loc 4 109 0
	sbi 0xb,2
.LBE56:
.LBE55:
.LBB57:
.LBB58:
	.file 5 "./Board/LEDs.h"
	.loc 5 69 0
	in r24,0xa
	ori r24,lo8(48)
	out 0xa,r24
	.loc 5 70 0
	in r24,0xb
	ori r24,lo8(48)
	out 0xb,r24
.LBE58:
.LBE57:
	.loc 3 132 0
	call USB_Init
.LVL6:
	.loc 3 134 0
	ldi r24,lo8(-104)
	st Y,r24
/* epilogue start */
	.loc 3 135 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE87:
	.size	SetupHardware, .-SetupHardware
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB86:
	.loc 3 101 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 102 0
	call SetupHardware
.LVL7:
.LBB68:
.LBB69:
	.loc 1 87 0
	in r18,__SREG__
.LVL8:
.LBB70:
.LBB71:
	.loc 2 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL9:
/* #NOAPP */
.LBE71:
.LBE70:
	.loc 1 89 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
	.loc 1 90 0
	sts USARTtoUSB_Buffer+130+1,r25
	sts USARTtoUSB_Buffer+130,r24
.LVL10:
.LBB72:
.LBB73:
	.loc 2 70 0
	out __SREG__,r18
	.loc 2 71 0
.LBE73:
.LBE72:
.LBE69:
.LBE68:
	.loc 3 106 0
/* #APP */
 ;  106 "Arduino-joystick.c" 1
	sei
 ;  0 "" 2
.LVL11:
/* #NOAPP */
.L7:
	.loc 3 109 0
	ldi r24,lo8(Joystick_HID_Interface)
	ldi r25,hi8(Joystick_HID_Interface)
	call HID_Device_USBTask
.LVL12:
	.loc 3 110 0
	call USB_USBTask
.LVL13:
	.loc 3 113 0
	lds r24,led1_ticks
	lds r25,led1_ticks+1
	or r24,r25
	breq .L7
	.loc 3 114 0
	lds r24,led1_ticks
	lds r25,led1_ticks+1
	sbiw r24,1
	sts led1_ticks+1,r25
	sts led1_ticks,r24
	.loc 3 115 0
	lds r24,led1_ticks
	lds r25,led1_ticks+1
	or r24,r25
	brne .L7
.LVL14:
.LBB74:
.LBB75:
	.loc 5 80 0
	sbi 0xb,5
	rjmp .L7
.LBE75:
.LBE74:
	.cfi_endproc
.LFE86:
	.size	main, .-main
	.section	.text.EVENT_USB_Device_Connect,"ax",@progbits
.global	EVENT_USB_Device_Connect
	.type	EVENT_USB_Device_Connect, @function
EVENT_USB_Device_Connect:
.LFB88:
	.loc 3 139 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE88:
	.size	EVENT_USB_Device_Connect, .-EVENT_USB_Device_Connect
	.section	.text.EVENT_USB_Device_Disconnect,"ax",@progbits
.global	EVENT_USB_Device_Disconnect
	.type	EVENT_USB_Device_Disconnect, @function
EVENT_USB_Device_Disconnect:
.LFB89:
	.loc 3 145 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE89:
	.size	EVENT_USB_Device_Disconnect, .-EVENT_USB_Device_Disconnect
	.section	.text.EVENT_USB_Device_ConfigurationChanged,"ax",@progbits
.global	EVENT_USB_Device_ConfigurationChanged
	.type	EVENT_USB_Device_ConfigurationChanged, @function
EVENT_USB_Device_ConfigurationChanged:
.LFB90:
	.loc 3 150 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 151 0
	ldi r24,lo8(Joystick_HID_Interface)
	ldi r25,hi8(Joystick_HID_Interface)
	call HID_Device_ConfigureEndpoints
.LVL15:
.LBB76:
.LBB77:
	.file 6 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/Device.h"
	.loc 6 150 0
	ldi r30,lo8(-30)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	ret
.LBE77:
.LBE76:
	.cfi_endproc
.LFE90:
	.size	EVENT_USB_Device_ConfigurationChanged, .-EVENT_USB_Device_ConfigurationChanged
	.section	.text.EVENT_USB_Device_UnhandledControlRequest,"ax",@progbits
.global	EVENT_USB_Device_UnhandledControlRequest
	.type	EVENT_USB_Device_UnhandledControlRequest, @function
EVENT_USB_Device_UnhandledControlRequest:
.LFB91:
	.loc 3 158 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 159 0
	ldi r24,lo8(Joystick_HID_Interface)
	ldi r25,hi8(Joystick_HID_Interface)
	jmp HID_Device_ProcessControlRequest
.LVL16:
	.cfi_endproc
.LFE91:
	.size	EVENT_USB_Device_UnhandledControlRequest, .-EVENT_USB_Device_UnhandledControlRequest
	.section	.text.EVENT_USB_Device_StartOfFrame,"ax",@progbits
.global	EVENT_USB_Device_StartOfFrame
	.type	EVENT_USB_Device_StartOfFrame, @function
EVENT_USB_Device_StartOfFrame:
.LFB92:
	.loc 3 164 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL17:
.LBB78:
.LBB79:
	.file 7 "../../LUFA/Drivers/USB/Class/Device/HID.h"
	.loc 7 201 0
	lds r24,Joystick_HID_Interface+11
	lds r25,Joystick_HID_Interface+11+1
	sbiw r24,0
	breq .L15
	.loc 7 202 0
	sbiw r24,1
	sts Joystick_HID_Interface+11+1,r25
	sts Joystick_HID_Interface+11,r24
.L15:
	ret
.LBE79:
.LBE78:
	.cfi_endproc
.LFE92:
	.size	EVENT_USB_Device_StartOfFrame, .-EVENT_USB_Device_StartOfFrame
	.section	.text.CALLBACK_HID_Device_CreateHIDReport,"ax",@progbits
.global	CALLBACK_HID_Device_CreateHIDReport
	.type	CALLBACK_HID_Device_CreateHIDReport, @function
CALLBACK_HID_Device_CreateHIDReport:
.LFB93:
	.loc 3 184 0
	.cfi_startproc
.LVL18:
	push r16
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI4:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI5:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r18
.LVL19:
.LBB90:
.LBB91:
.LBB92:
	.loc 1 111 0
	in r25,__SREG__
.LVL20:
.LBB93:
.LBB94:
	.loc 2 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL21:
/* #NOAPP */
.LBE94:
.LBE93:
	.loc 1 113 0
	lds r24,USARTtoUSB_Buffer+132
.LVL22:
.LBB95:
.LBB96:
	.loc 2 70 0
	out __SREG__,r25
	.loc 2 71 0
.LBE96:
.LBE95:
.LBE92:
.LBE91:
.LBE90:
	.loc 3 189 0
	cpi r24,lo8(4)
	brlo .L21
.LVL23:
.LBB97:
	.loc 3 192 0 discriminator 1
	call RingBuffer_Remove.constprop.5
.LVL24:
	sts joyReport,r24
.LVL25:
	call RingBuffer_Remove.constprop.5
.LVL26:
	sts joyReport+1,r24
.LVL27:
	call RingBuffer_Remove.constprop.5
.LVL28:
	sts joyReport+2,r24
.LVL29:
	.loc 3 196 0 discriminator 1
	call RingBuffer_Remove.constprop.5
.LVL30:
.LBB98:
.LBB99:
	.loc 5 75 0 discriminator 1
	cbi 0xb,5
.LBE99:
.LBE98:
	.loc 3 199 0 discriminator 1
	ldi r24,lo8(-48)
	ldi r25,lo8(7)
	sts led1_ticks+1,r25
	sts led1_ticks,r24
.LVL31:
.L21:
.LBE97:
	.loc 3 202 0
	lds r24,joyReport
	lds r25,joyReport+1
	lds r26,joyReport+2
	st Y,r24
	std Y+1,r25
	std Y+2,r26
	.loc 3 204 0
	ldi r24,lo8(3)
	ldi r25,0
	movw r30,r16
	std Z+1,r25
	st Z,r24
	.loc 3 206 0
	ldi r24,0
/* epilogue start */
	pop r29
	pop r28
.LVL32:
	pop r17
	pop r16
.LVL33:
	ret
	.cfi_endproc
.LFE93:
	.size	CALLBACK_HID_Device_CreateHIDReport, .-CALLBACK_HID_Device_CreateHIDReport
	.section	.text.CALLBACK_HID_Device_ProcessHIDReport,"ax",@progbits
.global	CALLBACK_HID_Device_ProcessHIDReport
	.type	CALLBACK_HID_Device_ProcessHIDReport, @function
CALLBACK_HID_Device_ProcessHIDReport:
.LFB94:
	.loc 3 221 0
	.cfi_startproc
.LVL34:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE94:
	.size	CALLBACK_HID_Device_ProcessHIDReport, .-CALLBACK_HID_Device_ProcessHIDReport
	.section	.text.__vector_23,"ax",@progbits
.global	__vector_23
	.type	__vector_23, @function
__vector_23:
.LFB95:
	.loc 3 229 0
	.cfi_startproc
	.loc 3 229 0
	push r1
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI8:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r24
.LCFI9:
	.cfi_def_cfa_offset 6
	.cfi_offset 24, -5
	push r25
.LCFI10:
	.cfi_def_cfa_offset 7
	.cfi_offset 25, -6
	push r30
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_offset 30, -7
	push r31
.LCFI12:
	.cfi_def_cfa_offset 9
	.cfi_offset 31, -8
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 3 230 0
	lds r24,206
.LVL35:
	.loc 3 232 0
	in r25,0x1e
	cpi r25,lo8(4)
	brne .L23
.LVL36:
.LBB116:
.LBB117:
.LBB118:
.LBB119:
	.loc 1 111 0
	in r18,__SREG__
.LVL37:
.LBB120:
.LBB121:
	.loc 2 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL38:
/* #NOAPP */
.LBE121:
.LBE120:
	.loc 1 113 0
	lds r25,USARTtoUSB_Buffer+132
.LVL39:
.LBB122:
.LBB123:
	.loc 2 70 0
	out __SREG__,r18
	.loc 2 71 0
.LBE123:
.LBE122:
.LBE119:
.LBE118:
.LBE117:
.LBE116:
	.loc 3 232 0
	cpi r25,lo8(-128)
	breq .L23
.LVL40:
.LBB124:
.LBB125:
	.loc 1 161 0
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	st Z,r24
	.loc 1 163 0
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	movw r24,r30
.LVL41:
	adiw r24,1
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
	subi r24,lo8(USARTtoUSB_Buffer+128)
	sbci r25,hi8(USARTtoUSB_Buffer+128)
.LVL42:
	brne .L27
	.loc 1 164 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	std Z+2,r25
	std Z+1,r24
.L27:
.LBB126:
	.loc 1 166 0
	in r25,__SREG__
.LVL43:
.LBB127:
.LBB128:
	.loc 2 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL44:
/* #NOAPP */
.LBE128:
.LBE127:
	.loc 1 168 0
	lds r24,USARTtoUSB_Buffer+132
	subi r24,lo8(-(1))
	sts USARTtoUSB_Buffer+132,r24
.LVL45:
.LBB129:
.LBB130:
	.loc 2 70 0
	out __SREG__,r25
	.loc 2 71 0
.LVL46:
.L23:
/* epilogue start */
.LBE130:
.LBE129:
.LBE126:
.LBE125:
.LBE124:
	.loc 3 236 0
	pop r31
	pop r30
	pop r25
	pop r24
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE95:
	.size	__vector_23, .-__vector_23
.global	led1_ticks
	.section .bss
	.type	led1_ticks, @object
	.size	led1_ticks, 2
led1_ticks:
	.zero	2
.global	joyReport
	.type	joyReport, @object
	.size	joyReport, 3
joyReport:
	.zero	3
	.comm	USARTtoUSB_Buffer,133,1
.global	Joystick_HID_Interface
	.data
	.type	Joystick_HID_Interface, @object
	.size	Joystick_HID_Interface, 13
Joystick_HID_Interface:
	.byte	0
	.byte	1
	.word	8
	.byte	0
	.word	PrevJoystickHIDReportBuffer
	.byte	3
	.zero	5
	.comm	PrevJoystickHIDReportBuffer,3,1
	.text
.Letext0:
	.file 8 "/usr/lib/avr/include/stdint.h"
	.file 9 "Arduino-joystick.h"
	.file 10 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/USBController.h"
	.file 11 "../../LUFA/Drivers/USB/HighLevel/USBTask.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa33
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF80
	.byte	0x1
	.long	.LASF81
	.long	.LASF82
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x8
	.byte	0x79
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x8
	.byte	0x7a
	.long	0x46
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF4
	.byte	0x8
	.byte	0x7c
	.long	0x5f
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF7
	.byte	0x8
	.byte	0x7e
	.long	0x78
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF11
	.uleb128 0x5
	.long	.LASF83
	.byte	0x1
	.byte	0x6
	.byte	0x72
	.long	0xc5
	.uleb128 0x6
	.long	.LASF12
	.sleb128 0
	.uleb128 0x6
	.long	.LASF13
	.sleb128 1
	.uleb128 0x6
	.long	.LASF14
	.sleb128 2
	.uleb128 0x6
	.long	.LASF15
	.sleb128 3
	.uleb128 0x6
	.long	.LASF16
	.sleb128 4
	.uleb128 0x6
	.long	.LASF17
	.sleb128 5
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.byte	0x56
	.long	0x124
	.uleb128 0x9
	.long	.LASF18
	.byte	0x7
	.byte	0x58
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF19
	.byte	0x7
	.byte	0x5a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF20
	.byte	0x7
	.byte	0x5b
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF21
	.byte	0x7
	.byte	0x5c
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF22
	.byte	0x7
	.byte	0x5e
	.long	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF23
	.byte	0x7
	.byte	0x6a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF24
	.uleb128 0x8
	.byte	0x5
	.byte	0x7
	.byte	0x73
	.long	0x15e
	.uleb128 0x9
	.long	.LASF25
	.byte	0x7
	.byte	0x75
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF26
	.byte	0x7
	.byte	0x76
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF27
	.byte	0x7
	.byte	0x77
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x8
	.byte	0xd
	.byte	0x7
	.byte	0x54
	.long	0x183
	.uleb128 0x9
	.long	.LASF28
	.byte	0x7
	.byte	0x70
	.long	0x183
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF29
	.byte	0x7
	.byte	0x79
	.long	0x12b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xa
	.long	0xc7
	.uleb128 0x2
	.long	.LASF30
	.byte	0x7
	.byte	0x7c
	.long	0x15e
	.uleb128 0x8
	.byte	0x85
	.byte	0x1
	.byte	0x46
	.long	0x1d6
	.uleb128 0x9
	.long	.LASF31
	.byte	0x1
	.byte	0x48
	.long	0x1d6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"In"
	.byte	0x1
	.byte	0x49
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.string	"Out"
	.byte	0x1
	.byte	0x4a
	.long	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x1
	.byte	0x4b
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.byte	0
	.uleb128 0xc
	.long	0x3b
	.long	0x1e6
	.uleb128 0xd
	.long	0x8d
	.byte	0x7f
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x3b
	.uleb128 0x2
	.long	.LASF33
	.byte	0x1
	.byte	0x4c
	.long	0x193
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF34
	.uleb128 0x8
	.byte	0x3
	.byte	0x9
	.byte	0x3a
	.long	0x22d
	.uleb128 0xb
	.string	"x"
	.byte	0x9
	.byte	0x3b
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"y"
	.byte	0x9
	.byte	0x3c
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF35
	.byte	0x9
	.byte	0x3d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF36
	.byte	0x9
	.byte	0x3e
	.long	0x1fe
	.uleb128 0xf
	.long	.LASF39
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x251
	.uleb128 0x10
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0x251
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x257
	.uleb128 0xa
	.long	0x3b
	.uleb128 0x11
	.long	.LASF84
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0x12
	.long	.LASF43
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.long	0x2a9
	.uleb128 0x13
	.long	.LASF31
	.byte	0x1
	.byte	0x6b
	.long	0x2a9
	.uleb128 0x14
	.long	.LASF32
	.byte	0x1
	.byte	0x6d
	.long	0x3b
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF37
	.byte	0x1
	.byte	0x6f
	.long	0x3b
	.uleb128 0x14
	.long	.LASF38
	.byte	0x1
	.byte	0x6f
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x2ae
	.uleb128 0xe
	.byte	0x2
	.long	0x1ec
	.uleb128 0x16
	.long	.LASF54
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x3
	.uleb128 0xf
	.long	.LASF40
	.byte	0x7
	.byte	0xc7
	.byte	0x1
	.byte	0x3
	.long	0x2d6
	.uleb128 0x13
	.long	.LASF41
	.byte	0x7
	.byte	0xc7
	.long	0x2d6
	.byte	0
	.uleb128 0xa
	.long	0x2db
	.uleb128 0xe
	.byte	0x2
	.long	0x188
	.uleb128 0xf
	.long	.LASF42
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x3
	.long	0x312
	.uleb128 0x13
	.long	.LASF31
	.byte	0x1
	.byte	0x55
	.long	0x2a9
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF37
	.byte	0x1
	.byte	0x57
	.long	0x3b
	.uleb128 0x14
	.long	.LASF38
	.byte	0x1
	.byte	0x57
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF44
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.long	0x124
	.byte	0x3
	.long	0x32f
	.uleb128 0x13
	.long	.LASF31
	.byte	0x1
	.byte	0x7f
	.long	0x2a9
	.byte	0
	.uleb128 0xf
	.long	.LASF45
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.byte	0x3
	.long	0x36b
	.uleb128 0x13
	.long	.LASF31
	.byte	0x1
	.byte	0x9e
	.long	0x2a9
	.uleb128 0x13
	.long	.LASF46
	.byte	0x1
	.byte	0x9f
	.long	0x257
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF37
	.byte	0x1
	.byte	0xa6
	.long	0x3b
	.uleb128 0x14
	.long	.LASF38
	.byte	0x1
	.byte	0xa6
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF47
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.long	0x3ab
	.uleb128 0x13
	.long	.LASF31
	.byte	0x1
	.byte	0xb6
	.long	0x2a9
	.uleb128 0x14
	.long	.LASF46
	.byte	0x1
	.byte	0xb8
	.long	0x3b
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF37
	.byte	0x1
	.byte	0xbd
	.long	0x3b
	.uleb128 0x14
	.long	.LASF38
	.byte	0x1
	.byte	0xbd
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x5
	.byte	0x49
	.byte	0x1
	.byte	0x3
	.long	0x3c4
	.uleb128 0x13
	.long	.LASF49
	.byte	0x5
	.byte	0x49
	.long	0x257
	.byte	0
	.uleb128 0xf
	.long	.LASF50
	.byte	0x5
	.byte	0x4e
	.byte	0x1
	.byte	0x3
	.long	0x3dd
	.uleb128 0x13
	.long	.LASF49
	.byte	0x5
	.byte	0x4e
	.long	0x257
	.byte	0
	.uleb128 0xf
	.long	.LASF51
	.byte	0x4
	.byte	0x63
	.byte	0x1
	.byte	0x3
	.long	0x401
	.uleb128 0x13
	.long	.LASF52
	.byte	0x4
	.byte	0x63
	.long	0x401
	.uleb128 0x13
	.long	.LASF53
	.byte	0x4
	.byte	0x64
	.long	0x406
	.byte	0
	.uleb128 0xa
	.long	0x6d
	.uleb128 0xa
	.long	0x124
	.uleb128 0x17
	.long	0x36b
	.long	.LFB101
	.long	.LFE101
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x47a
	.uleb128 0x18
	.long	0x387
	.byte	0x1
	.byte	0x68
	.uleb128 0x19
	.long	0x37c
	.byte	0x6
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0x9f
	.uleb128 0x1a
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x18
	.long	0x393
	.byte	0x1
	.byte	0x62
	.uleb128 0x1b
	.long	0x39e
	.long	.LLST0
	.uleb128 0x1c
	.long	0x25c
	.long	.LBB47
	.long	.LBE47
	.byte	0x1
	.byte	0xbd
	.uleb128 0x1d
	.long	0x238
	.long	.LBB49
	.long	.LBE49
	.byte	0x1
	.byte	0xbd
	.uleb128 0x19
	.long	0x245
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1085
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF55
	.byte	0x5
	.byte	0x43
	.byte	0x1
	.byte	0x3
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF58
	.byte	0x3
	.byte	0x7b
	.byte	0x1
	.long	.LFB87
	.long	.LFE87
	.long	.LLST1
	.byte	0x1
	.long	0x4d9
	.uleb128 0x1f
	.long	0x3dd
	.long	.LBB55
	.long	.LBE55
	.byte	0x3
	.byte	0x82
	.long	0x4c0
	.uleb128 0x20
	.long	0x3ea
	.long	0x1c200
	.uleb128 0x21
	.long	0x3f5
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.long	0x47a
	.long	.LBB57
	.long	.LBE57
	.byte	0x3
	.byte	0x83
	.uleb128 0x22
	.long	.LVL6
	.long	0x9e5
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF62
	.byte	0x3
	.byte	0x64
	.byte	0x1
	.long	0x4d
	.long	.LFB86
	.long	.LFE86
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x5a7
	.uleb128 0x1f
	.long	0x2e1
	.long	.LBB68
	.long	.LBE68
	.byte	0x3
	.byte	0x68
	.long	0x55e
	.uleb128 0x19
	.long	0x2ee
	.byte	0x6
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0x9f
	.uleb128 0x1a
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x1b
	.long	0x2fa
	.long	.LLST2
	.uleb128 0x1b
	.long	0x305
	.long	.LLST3
	.uleb128 0x1c
	.long	0x25c
	.long	.LBB70
	.long	.LBE70
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	0x238
	.long	.LBB72
	.long	.LBE72
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.long	0x245
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1311
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x3c4
	.long	.LBB74
	.long	.LBE74
	.byte	0x3
	.byte	0x74
	.long	0x578
	.uleb128 0x21
	.long	0x3d1
	.byte	0x20
	.byte	0
	.uleb128 0x22
	.long	.LVL7
	.long	0x483
	.uleb128 0x24
	.long	.LVL12
	.long	0x9f0
	.long	0x59d
	.uleb128 0x25
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Joystick_HID_Interface
	.byte	0
	.uleb128 0x22
	.long	.LVL13
	.long	0xa04
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF56
	.byte	0x3
	.byte	0x8a
	.byte	0x1
	.long	.LFB88
	.long	.LFE88
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.long	.LASF57
	.byte	0x3
	.byte	0x90
	.byte	0x1
	.long	.LFB89
	.long	.LFE89
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.long	.LASF59
	.byte	0x3
	.byte	0x95
	.byte	0x1
	.long	.LFB90
	.long	.LFE90
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x615
	.uleb128 0x1c
	.long	0x2b4
	.long	.LBB76
	.long	.LBE76
	.byte	0x3
	.byte	0x99
	.uleb128 0x28
	.long	.LVL15
	.long	0xa0e
	.uleb128 0x25
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Joystick_HID_Interface
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF60
	.byte	0x3
	.byte	0x9d
	.byte	0x1
	.long	.LFB91
	.long	.LFE91
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x649
	.uleb128 0x29
	.long	.LVL16
	.byte	0x1
	.long	0xa26
	.uleb128 0x25
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Joystick_HID_Interface
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF61
	.byte	0x3
	.byte	0xa3
	.byte	0x1
	.long	.LFB92
	.long	.LFE92
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x680
	.uleb128 0x1d
	.long	0x2bd
	.long	.LBB78
	.long	.LBE78
	.byte	0x3
	.byte	0xa5
	.uleb128 0x19
	.long	0x2ca
	.byte	0x6
	.byte	0x3
	.long	Joystick_HID_Interface
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF63
	.byte	0x3
	.byte	0xb2
	.byte	0x1
	.long	0x124
	.long	.LFB93
	.long	.LFE93
	.long	.LLST4
	.byte	0x1
	.long	0x7d8
	.uleb128 0x2b
	.long	.LASF41
	.byte	0x3
	.byte	0xb3
	.long	0x2d6
	.long	.LLST5
	.uleb128 0x2b
	.long	.LASF64
	.byte	0x3
	.byte	0xb4
	.long	0x7d8
	.long	.LLST6
	.uleb128 0x2b
	.long	.LASF65
	.byte	0x3
	.byte	0xb5
	.long	0x257
	.long	.LLST7
	.uleb128 0x2b
	.long	.LASF66
	.byte	0x3
	.byte	0xb6
	.long	0xc5
	.long	.LLST8
	.uleb128 0x2b
	.long	.LASF67
	.byte	0x3
	.byte	0xb7
	.long	0x7dd
	.long	.LLST9
	.uleb128 0x2c
	.long	.LASF69
	.byte	0x3
	.byte	0xb9
	.long	0x7e8
	.long	.LLST10
	.uleb128 0x14
	.long	.LASF68
	.byte	0x3
	.byte	0xbb
	.long	0x3b
	.uleb128 0x1f
	.long	0x269
	.long	.LBB90
	.long	.LBE90
	.byte	0x3
	.byte	0xbb
	.long	0x77d
	.uleb128 0x19
	.long	0x27a
	.byte	0x6
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0x9f
	.uleb128 0x1a
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x1b
	.long	0x285
	.long	.LLST11
	.uleb128 0x1a
	.long	.LBB92
	.long	.LBE92
	.uleb128 0x1b
	.long	0x291
	.long	.LLST12
	.uleb128 0x1b
	.long	0x29c
	.long	.LLST13
	.uleb128 0x1c
	.long	0x25c
	.long	.LBB93
	.long	.LBE93
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1d
	.long	0x238
	.long	.LBB95
	.long	.LBE95
	.byte	0x1
	.byte	0x6f
	.uleb128 0x19
	.long	0x245
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1853
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x2d
	.string	"ind"
	.byte	0x3
	.byte	0xbe
	.long	0x3b
	.long	.LLST14
	.uleb128 0x1f
	.long	0x3ab
	.long	.LBB98
	.long	.LBE98
	.byte	0x3
	.byte	0xc6
	.long	0x7b2
	.uleb128 0x2e
	.long	0x3b8
	.long	.LLST15
	.byte	0
	.uleb128 0x22
	.long	.LVL24
	.long	0x40b
	.uleb128 0x22
	.long	.LVL26
	.long	0x40b
	.uleb128 0x22
	.long	.LVL28
	.long	0x40b
	.uleb128 0x22
	.long	.LVL30
	.long	0x40b
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x1e6
	.uleb128 0xa
	.long	0x7e2
	.uleb128 0xe
	.byte	0x2
	.long	0x54
	.uleb128 0xe
	.byte	0x2
	.long	0x22d
	.uleb128 0x27
	.byte	0x1
	.long	.LASF70
	.byte	0x3
	.byte	0xd8
	.byte	0x1
	.long	.LFB94
	.long	.LFE94
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x859
	.uleb128 0x2f
	.long	.LASF41
	.byte	0x3
	.byte	0xd8
	.long	0x2d6
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2f
	.long	.LASF64
	.byte	0x3
	.byte	0xd9
	.long	0x257
	.byte	0x1
	.byte	0x66
	.uleb128 0x2f
	.long	.LASF65
	.byte	0x3
	.byte	0xda
	.long	0x257
	.byte	0x1
	.byte	0x64
	.uleb128 0x2f
	.long	.LASF66
	.byte	0x3
	.byte	0xdb
	.long	0x859
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2f
	.long	.LASF67
	.byte	0x3
	.byte	0xdc
	.long	0x860
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x85f
	.uleb128 0x30
	.uleb128 0xa
	.long	0x54
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF71
	.byte	0x3
	.byte	0xe4
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.long	.LLST16
	.byte	0x1
	.long	0x976
	.uleb128 0x2c
	.long	.LASF72
	.byte	0x3
	.byte	0xe6
	.long	0x3b
	.long	.LLST17
	.uleb128 0x1f
	.long	0x312
	.long	.LBB116
	.long	.LBE116
	.byte	0x3
	.byte	0xe9
	.long	0x913
	.uleb128 0x31
	.long	0x323
	.uleb128 0x1d
	.long	0x269
	.long	.LBB117
	.long	.LBE117
	.byte	0x1
	.byte	0x81
	.uleb128 0x31
	.long	0x27a
	.uleb128 0x1a
	.long	.LBB118
	.long	.LBE118
	.uleb128 0x1b
	.long	0x285
	.long	.LLST18
	.uleb128 0x1a
	.long	.LBB119
	.long	.LBE119
	.uleb128 0x1b
	.long	0x291
	.long	.LLST19
	.uleb128 0x1b
	.long	0x29c
	.long	.LLST20
	.uleb128 0x1c
	.long	0x25c
	.long	.LBB120
	.long	.LBE120
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1d
	.long	0x238
	.long	.LBB122
	.long	.LBE122
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2e
	.long	0x245
	.long	.LLST21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	0x32f
	.long	.LBB124
	.long	.LBE124
	.byte	0x3
	.byte	0xea
	.uleb128 0x31
	.long	0x33c
	.uleb128 0x2e
	.long	0x347
	.long	.LLST22
	.uleb128 0x1a
	.long	.LBB126
	.long	.LBE126
	.uleb128 0x1b
	.long	0x353
	.long	.LLST23
	.uleb128 0x1b
	.long	0x35e
	.long	.LLST24
	.uleb128 0x1c
	.long	0x25c
	.long	.LBB127
	.long	.LBE127
	.byte	0x1
	.byte	0xa6
	.uleb128 0x1d
	.long	0x238
	.long	.LBB129
	.long	.LBE129
	.byte	0x1
	.byte	0xa6
	.uleb128 0x2e
	.long	0x245
	.long	.LLST25
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x3b
	.long	0x986
	.uleb128 0xd
	.long	0x8d
	.byte	0x2
	.byte	0
	.uleb128 0x32
	.long	.LASF73
	.byte	0x3
	.byte	0x41
	.long	0x976
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PrevJoystickHIDReportBuffer
	.uleb128 0x32
	.long	.LASF74
	.byte	0x3
	.byte	0x47
	.long	0x188
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Joystick_HID_Interface
	.uleb128 0x32
	.long	.LASF75
	.byte	0x3
	.byte	0x5a
	.long	0x1ec
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.uleb128 0x32
	.long	.LASF76
	.byte	0x3
	.byte	0x5c
	.long	0x22d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	joyReport
	.uleb128 0x32
	.long	.LASF77
	.byte	0x3
	.byte	0x5f
	.long	0x9e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	led1_ticks
	.uleb128 0x33
	.long	0x4d
	.uleb128 0x34
	.byte	0x1
	.long	.LASF78
	.byte	0xa
	.word	0x123
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.long	.LASF85
	.byte	0x7
	.byte	0x95
	.byte	0x1
	.byte	0x1
	.long	0xa04
	.uleb128 0x36
	.long	0x2d6
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.long	.LASF79
	.byte	0xb
	.byte	0xb2
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.byte	0x1
	.long	.LASF86
	.byte	0x7
	.byte	0x87
	.byte	0x1
	.long	0x124
	.byte	0x1
	.long	0xa26
	.uleb128 0x36
	.long	0x2d6
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.long	.LASF87
	.byte	0x7
	.byte	0x8e
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	0x2d6
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL3
	.long	.LVL4
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL4
	.long	.LFE101
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LFB87
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LFE87
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST2:
	.long	.LVL8
	.long	.LVL11
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST3:
	.long	.LVL9
	.long	.LVL10
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL10
	.long	.LFE86
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LFB93
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI5
	.long	.LFE93
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST5:
	.long	.LVL18
	.long	.LVL22
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL22
	.long	.LFE93
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL18
	.long	.LVL24-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24-1
	.long	.LFE93
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL18
	.long	.LVL24-1
	.word	0x1
	.byte	0x64
	.long	.LVL24-1
	.long	.LFE93
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL18
	.long	.LVL24-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24-1
	.long	.LVL32
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LFE93
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL18
	.long	.LVL33
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL33
	.long	.LFE93
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST10:
	.long	.LVL19
	.long	.LVL24-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24-1
	.long	.LVL32
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LFE93
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL22
	.long	.LVL24-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST12:
	.long	.LVL20
	.long	.LVL24-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST13:
	.long	.LVL21
	.long	.LVL22
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL22
	.long	.LFE93
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL23
	.long	.LVL25
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL25
	.long	.LVL27
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL27
	.long	.LVL29
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL29
	.long	.LVL31
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL30
	.long	.LVL31
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LFB95
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI12
	.long	.LFE95
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST17:
	.long	.LVL35
	.long	.LVL41
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST18:
	.long	.LVL39
	.long	.LVL43
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST19:
	.long	.LVL37
	.long	.LVL42
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST20:
	.long	.LVL38
	.long	.LVL39
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL39
	.long	.LVL46
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL39
	.long	.LVL45
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2261
	.sleb128 0
	.long	.LVL45
	.long	.LVL46
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2361
	.sleb128 0
	.long	0
	.long	0
.LLST22:
	.long	.LVL40
	.long	.LVL41
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST23:
	.long	.LVL43
	.long	.LVL46
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST24:
	.long	.LVL44
	.long	.LVL45
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL45
	.long	.LVL46
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL45
	.long	.LVL46
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2361
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x6c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB101
	.long	.LFE101-.LFB101
	.long	.LFB87
	.long	.LFE87-.LFB87
	.long	.LFB86
	.long	.LFE86-.LFB86
	.long	.LFB88
	.long	.LFE88-.LFB88
	.long	.LFB89
	.long	.LFE89-.LFB89
	.long	.LFB90
	.long	.LFE90-.LFB90
	.long	.LFB91
	.long	.LFE91-.LFB91
	.long	.LFB92
	.long	.LFE92-.LFB92
	.long	.LFB93
	.long	.LFE93-.LFB93
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB101
	.long	.LFE101
	.long	.LFB87
	.long	.LFE87
	.long	.LFB86
	.long	.LFE86
	.long	.LFB88
	.long	.LFE88
	.long	.LFB89
	.long	.LFE89
	.long	.LFB90
	.long	.LFE90
	.long	.LFB91
	.long	.LFE91
	.long	.LFB92
	.long	.LFE92
	.long	.LFB93
	.long	.LFE93
	.long	.LFB94
	.long	.LFE94
	.long	.LFB95
	.long	.LFE95
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF55:
	.string	"LEDs_Init"
.LASF35:
	.string	"button"
.LASF84:
	.string	"__iCliRetVal"
.LASF30:
	.string	"USB_ClassInfo_HID_Device_t"
.LASF71:
	.string	"__vector_23"
.LASF36:
	.string	"USB_JoystickReport_Data_t"
.LASF23:
	.string	"PrevReportINBufferSize"
.LASF10:
	.string	"long long unsigned int"
.LASF21:
	.string	"ReportINEndpointDoubleBank"
.LASF12:
	.string	"DEVICE_STATE_Unattached"
.LASF14:
	.string	"DEVICE_STATE_Default"
.LASF40:
	.string	"HID_Device_MillisecondElapsed"
.LASF47:
	.string	"RingBuffer_Remove"
.LASF82:
	.string	"/home/tomas/Escritorio/ArduinoFirmwares/arduino-usb-master/firmwares/arduino-joystick"
.LASF2:
	.string	"signed char"
.LASF52:
	.string	"BaudRate"
.LASF77:
	.string	"led1_ticks"
.LASF66:
	.string	"ReportData"
.LASF51:
	.string	"Serial_Init"
.LASF54:
	.string	"USB_Device_EnableSOFEvents"
.LASF6:
	.string	"long int"
.LASF60:
	.string	"EVENT_USB_Device_UnhandledControlRequest"
.LASF9:
	.string	"long long int"
.LASF4:
	.string	"uint16_t"
.LASF83:
	.string	"USB_Device_States_t"
.LASF61:
	.string	"EVENT_USB_Device_StartOfFrame"
.LASF86:
	.string	"HID_Device_ConfigureEndpoints"
.LASF49:
	.string	"LEDMask"
.LASF18:
	.string	"InterfaceNumber"
.LASF26:
	.string	"IdleCount"
.LASF38:
	.string	"__ToDo"
.LASF64:
	.string	"ReportID"
.LASF22:
	.string	"PrevReportINBuffer"
.LASF73:
	.string	"PrevJoystickHIDReportBuffer"
.LASF5:
	.string	"unsigned int"
.LASF75:
	.string	"USARTtoUSB_Buffer"
.LASF8:
	.string	"long unsigned int"
.LASF81:
	.string	"Arduino-joystick.c"
.LASF37:
	.string	"sreg_save"
.LASF20:
	.string	"ReportINEndpointSize"
.LASF16:
	.string	"DEVICE_STATE_Configured"
.LASF87:
	.string	"HID_Device_ProcessControlRequest"
.LASF79:
	.string	"USB_USBTask"
.LASF45:
	.string	"RingBuffer_Insert"
.LASF57:
	.string	"EVENT_USB_Device_Disconnect"
.LASF17:
	.string	"DEVICE_STATE_Suspended"
.LASF44:
	.string	"RingBuffer_IsFull"
.LASF11:
	.string	"sizetype"
.LASF70:
	.string	"CALLBACK_HID_Device_ProcessHIDReport"
.LASF78:
	.string	"USB_Init"
.LASF65:
	.string	"ReportType"
.LASF15:
	.string	"DEVICE_STATE_Addressed"
.LASF13:
	.string	"DEVICE_STATE_Powered"
.LASF59:
	.string	"EVENT_USB_Device_ConfigurationChanged"
.LASF72:
	.string	"ReceivedByte"
.LASF74:
	.string	"Joystick_HID_Interface"
.LASF58:
	.string	"SetupHardware"
.LASF68:
	.string	"BufferCount"
.LASF24:
	.string	"_Bool"
.LASF3:
	.string	"unsigned char"
.LASF69:
	.string	"reportp"
.LASF56:
	.string	"EVENT_USB_Device_Connect"
.LASF53:
	.string	"DoubleSpeed"
.LASF19:
	.string	"ReportINEndpointNumber"
.LASF43:
	.string	"RingBuffer_GetCount"
.LASF50:
	.string	"LEDs_TurnOffLEDs"
.LASF7:
	.string	"uint32_t"
.LASF34:
	.string	"char"
.LASF29:
	.string	"State"
.LASF27:
	.string	"IdleMSRemaining"
.LASF25:
	.string	"UsingReportProtocol"
.LASF63:
	.string	"CALLBACK_HID_Device_CreateHIDReport"
.LASF39:
	.string	"__iRestore"
.LASF42:
	.string	"RingBuffer_InitBuffer"
.LASF33:
	.string	"RingBuff_t"
.LASF85:
	.string	"HID_Device_USBTask"
.LASF0:
	.string	"int8_t"
.LASF28:
	.string	"Config"
.LASF41:
	.string	"HIDInterfaceInfo"
.LASF31:
	.string	"Buffer"
.LASF67:
	.string	"ReportSize"
.LASF32:
	.string	"Count"
.LASF1:
	.string	"uint8_t"
.LASF46:
	.string	"Data"
.LASF80:
	.string	"GNU C 4.8.2 -mmcu=atmega16u2 -gdwarf-2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fno-inline-small-functions -fpack-struct -fshort-enums -fno-strict-aliasing"
.LASF48:
	.string	"LEDs_TurnOnLEDs"
.LASF76:
	.string	"joyReport"
.LASF62:
	.string	"main"
	.ident	"GCC: (GNU) 4.8.2"
.global __do_copy_data
.global __do_clear_bss
