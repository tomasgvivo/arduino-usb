	.file	"Arduino-mouse.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.RingBuffer_Remove.constprop.3,"ax",@progbits
	.type	RingBuffer_Remove.constprop.3, @function
RingBuffer_Remove.constprop.3:
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
.LBB51:
	.loc 1 189 0
	in r18,__SREG__
.LVL2:
.LBB52:
.LBB53:
	.file 2 "/usr/lib/avr/include/util/atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL3:
/* #NOAPP */
.LBE53:
.LBE52:
	.loc 1 191 0
	lds r25,USARTtoUSB_Buffer+132
	subi r25,lo8(-(-1))
	sts USARTtoUSB_Buffer+132,r25
.LVL4:
.LBB54:
.LBB55:
	.loc 2 70 0
	out __SREG__,r18
	.loc 2 71 0
.LBE55:
.LBE54:
.LBE51:
	.loc 1 195 0
	ret
	.cfi_endproc
.LFE101:
	.size	RingBuffer_Remove.constprop.3, .-RingBuffer_Remove.constprop.3
	.section	.text.SetupHardware,"ax",@progbits
.global	SetupHardware
	.type	SetupHardware, @function
SetupHardware:
.LFB87:
	.file 3 "Arduino-mouse.c"
	.loc 3 129 0
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
	.loc 3 131 0
	in r24,0x34
	andi r24,lo8(-9)
	out 0x34,r24
	.loc 3 132 0
	ldi r24,lo8(24)
/* #APP */
 ;  132 "Arduino-mouse.c" 1
	in __tmp_reg__, __SREG__
	cli
	sts 96, r24
	sts 96, __zero_reg__
	out __SREG__,__tmp_reg__
	
 ;  0 "" 2
.LVL5:
/* #NOAPP */
.LBB58:
.LBB59:
	.file 4 "../../LUFA/Drivers/Peripheral/Serial.h"
	.loc 4 102 0
	ldi r24,lo8(103)
	ldi r25,0
	sts 204+1,r25
	sts 204,r24
	.loc 4 104 0
	ldi r24,lo8(6)
	sts 202,r24
	.loc 4 105 0
	sts 200,__zero_reg__
	.loc 4 106 0
	ldi r28,lo8(-55)
	ldi r29,0
	ldi r24,lo8(24)
	st Y,r24
	.loc 4 108 0
	sbi 0xa,3
	.loc 4 109 0
	sbi 0xb,2
.LBE59:
.LBE58:
	.loc 3 136 0
	call USB_Init
.LVL6:
	.loc 3 139 0
	ldi r24,lo8(4)
	out 0x25,r24
	.loc 3 141 0
	ldi r24,lo8(-104)
	st Y,r24
/* epilogue start */
	.loc 3 142 0
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
	.loc 3 97 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 101 0
	call SetupHardware
.LVL7:
.LBB75:
.LBB76:
	.loc 1 87 0
	in r18,__SREG__
.LVL8:
.LBB77:
.LBB78:
	.loc 2 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL9:
/* #NOAPP */
.LBE78:
.LBE77:
	.loc 1 89 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
	.loc 1 90 0
	sts USARTtoUSB_Buffer+130+1,r25
	sts USARTtoUSB_Buffer+130,r24
.LVL10:
.LBB79:
.LBB80:
	.loc 2 70 0
	out __SREG__,r18
	.loc 2 71 0
.LBE80:
.LBE79:
.LBE76:
.LBE75:
	.loc 3 105 0
/* #APP */
 ;  105 "Arduino-mouse.c" 1
	sei
 ;  0 "" 2
.LVL11:
/* #NOAPP */
.L7:
.LBB81:
.LBB82:
.LBB83:
.LBB84:
	.loc 1 111 0
	in r25,__SREG__
.LVL12:
.LBB85:
.LBB86:
	.loc 2 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL13:
/* #NOAPP */
.LBE86:
.LBE85:
	.loc 1 113 0
	lds r24,USARTtoUSB_Buffer+132
.LVL14:
.LBB87:
.LBB88:
	.loc 2 70 0
	out __SREG__,r25
	.loc 2 71 0
.LBE88:
.LBE87:
.LBE84:
.LBE83:
.LBE82:
	.loc 3 110 0
	cpi r24,lo8(4)
	brlo .L6
.LVL15:
	.loc 3 112 0
	call RingBuffer_Remove.constprop.3
.LVL16:
	mov r17,r24
.LVL17:
	call RingBuffer_Remove.constprop.3
.LVL18:
	mov r29,r24
.LVL19:
	call RingBuffer_Remove.constprop.3
.LVL20:
	mov r28,r24
.LVL21:
	.loc 3 115 0
	call RingBuffer_Remove.constprop.3
.LVL22:
	.loc 3 117 0
	sts mouseReport,r17
	.loc 3 118 0
	sts mouseReport+1,r29
	.loc 3 119 0
	sts mouseReport+2,r28
.LVL23:
.L6:
	.loc 3 122 0
	ldi r24,lo8(Mouse_HID_Interface)
	ldi r25,hi8(Mouse_HID_Interface)
	call HID_Device_USBTask
.LVL24:
	.loc 3 123 0
	call USB_USBTask
.LVL25:
.LBE81:
	.loc 3 124 0
	rjmp .L7
	.cfi_endproc
.LFE86:
	.size	main, .-main
	.section	.text.EVENT_USB_Device_Connect,"ax",@progbits
.global	EVENT_USB_Device_Connect
	.type	EVENT_USB_Device_Connect, @function
EVENT_USB_Device_Connect:
.LFB88:
	.loc 3 146 0
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
	.loc 3 152 0
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
	.loc 3 157 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 158 0
	ldi r24,lo8(Mouse_HID_Interface)
	ldi r25,hi8(Mouse_HID_Interface)
	call HID_Device_ConfigureEndpoints
.LVL26:
.LBB89:
.LBB90:
	.file 5 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/Device.h"
	.loc 5 150 0
	ldi r30,lo8(-30)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	ret
.LBE90:
.LBE89:
	.cfi_endproc
.LFE90:
	.size	EVENT_USB_Device_ConfigurationChanged, .-EVENT_USB_Device_ConfigurationChanged
	.section	.text.EVENT_USB_Device_UnhandledControlRequest,"ax",@progbits
.global	EVENT_USB_Device_UnhandledControlRequest
	.type	EVENT_USB_Device_UnhandledControlRequest, @function
EVENT_USB_Device_UnhandledControlRequest:
.LFB91:
	.loc 3 165 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 166 0
	ldi r24,lo8(Mouse_HID_Interface)
	ldi r25,hi8(Mouse_HID_Interface)
	jmp HID_Device_ProcessControlRequest
.LVL27:
	.cfi_endproc
.LFE91:
	.size	EVENT_USB_Device_UnhandledControlRequest, .-EVENT_USB_Device_UnhandledControlRequest
	.section	.text.EVENT_USB_Device_StartOfFrame,"ax",@progbits
.global	EVENT_USB_Device_StartOfFrame
	.type	EVENT_USB_Device_StartOfFrame, @function
EVENT_USB_Device_StartOfFrame:
.LFB92:
	.loc 3 171 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL28:
.LBB91:
.LBB92:
	.file 6 "../../LUFA/Drivers/USB/Class/Device/HID.h"
	.loc 6 201 0
	lds r24,Mouse_HID_Interface+11
	lds r25,Mouse_HID_Interface+11+1
	sbiw r24,0
	breq .L12
	.loc 6 202 0
	sbiw r24,1
	sts Mouse_HID_Interface+11+1,r25
	sts Mouse_HID_Interface+11,r24
.L12:
	ret
.LBE92:
.LBE91:
	.cfi_endproc
.LFE92:
	.size	EVENT_USB_Device_StartOfFrame, .-EVENT_USB_Device_StartOfFrame
	.section	.text.CALLBACK_HID_Device_CreateHIDReport,"ax",@progbits
.global	CALLBACK_HID_Device_CreateHIDReport
	.type	CALLBACK_HID_Device_CreateHIDReport, @function
CALLBACK_HID_Device_CreateHIDReport:
.LFB93:
	.loc 3 191 0
	.cfi_startproc
.LVL29:
	push r16
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LVL30:
	.loc 3 194 0
	lds r24,mouseReport
	lds r25,mouseReport+1
	lds r26,mouseReport+2
.LVL31:
	movw r30,r18
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	.loc 3 196 0
	ldi r24,lo8(3)
	ldi r25,0
	movw r30,r16
	std Z+1,r25
	st Z,r24
	.loc 3 198 0
	ldi r24,0
/* epilogue start */
	pop r17
	pop r16
.LVL32:
	ret
	.cfi_endproc
.LFE93:
	.size	CALLBACK_HID_Device_CreateHIDReport, .-CALLBACK_HID_Device_CreateHIDReport
	.section	.text.CALLBACK_HID_Device_ProcessHIDReport,"ax",@progbits
.global	CALLBACK_HID_Device_ProcessHIDReport
	.type	CALLBACK_HID_Device_ProcessHIDReport, @function
CALLBACK_HID_Device_ProcessHIDReport:
.LFB94:
	.loc 3 213 0
	.cfi_startproc
.LVL33:
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
	.loc 3 221 0
	.cfi_startproc
	.loc 3 221 0
	push r1
.LCFI4:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI6:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r24
.LCFI7:
	.cfi_def_cfa_offset 6
	.cfi_offset 24, -5
	push r25
.LCFI8:
	.cfi_def_cfa_offset 7
	.cfi_offset 25, -6
	push r30
.LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 30, -7
	push r31
.LCFI10:
	.cfi_def_cfa_offset 9
	.cfi_offset 31, -8
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 3 222 0
	lds r24,206
.LVL34:
	.loc 3 224 0
	in r25,0x1e
	cpi r25,lo8(4)
	brne .L19
.LVL35:
.LBB100:
.LBB101:
	.loc 1 161 0
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	st Z,r24
	.loc 1 163 0
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	movw r24,r30
.LVL36:
	adiw r24,1
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
	subi r24,lo8(USARTtoUSB_Buffer+128)
	sbci r25,hi8(USARTtoUSB_Buffer+128)
	brne .L21
	.loc 1 164 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	std Z+2,r25
	std Z+1,r24
.L21:
.LBB102:
	.loc 1 166 0
	in r25,__SREG__
.LVL37:
.LBB103:
.LBB104:
	.loc 2 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL38:
/* #NOAPP */
.LBE104:
.LBE103:
	.loc 1 168 0
	lds r24,USARTtoUSB_Buffer+132
	subi r24,lo8(-(1))
	sts USARTtoUSB_Buffer+132,r24
.LVL39:
.LBB105:
.LBB106:
	.loc 2 70 0
	out __SREG__,r25
	.loc 2 71 0
.LVL40:
.L19:
/* epilogue start */
.LBE106:
.LBE105:
.LBE102:
.LBE101:
.LBE100:
	.loc 3 226 0
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
	.comm	mouseReport,3,1
	.comm	USARTtoUSB_Buffer,133,1
.global	Mouse_HID_Interface
	.data
	.type	Mouse_HID_Interface, @object
	.size	Mouse_HID_Interface, 13
Mouse_HID_Interface:
	.byte	0
	.byte	1
	.word	8
	.byte	0
	.word	PrevMouseHIDReportBuffer
	.byte	3
	.zero	5
	.comm	PrevMouseHIDReportBuffer,3,1
	.text
.Letext0:
	.file 7 "/usr/lib/avr/include/stdint.h"
	.file 8 "../../LUFA/Drivers/USB/Class/Device/../Common/HID.h"
	.file 9 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/USBController.h"
	.file 10 "../../LUFA/Drivers/USB/HighLevel/USBTask.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x90a
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF74
	.byte	0x1
	.long	.LASF75
	.long	.LASF76
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x7
	.byte	0x79
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.long	.LASF77
	.byte	0x1
	.byte	0x5
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
	.byte	0x3
	.byte	0x8
	.byte	0xaa
	.long	0xf6
	.uleb128 0x9
	.long	.LASF18
	.byte	0x8
	.byte	0xac
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"X"
	.byte	0x8
	.byte	0xad
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.string	"Y"
	.byte	0x8
	.byte	0xae
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF19
	.byte	0x8
	.byte	0xaf
	.long	0xc7
	.uleb128 0x8
	.byte	0x8
	.byte	0x6
	.byte	0x56
	.long	0x15e
	.uleb128 0x9
	.long	.LASF20
	.byte	0x6
	.byte	0x58
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF21
	.byte	0x6
	.byte	0x5a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF22
	.byte	0x6
	.byte	0x5b
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF23
	.byte	0x6
	.byte	0x5c
	.long	0x15e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF24
	.byte	0x6
	.byte	0x5e
	.long	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF25
	.byte	0x6
	.byte	0x6a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF26
	.uleb128 0x8
	.byte	0x5
	.byte	0x6
	.byte	0x73
	.long	0x198
	.uleb128 0x9
	.long	.LASF27
	.byte	0x6
	.byte	0x75
	.long	0x15e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF28
	.byte	0x6
	.byte	0x76
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF29
	.byte	0x6
	.byte	0x77
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x8
	.byte	0xd
	.byte	0x6
	.byte	0x54
	.long	0x1bd
	.uleb128 0x9
	.long	.LASF30
	.byte	0x6
	.byte	0x70
	.long	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF31
	.byte	0x6
	.byte	0x79
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xb
	.long	0x101
	.uleb128 0x2
	.long	.LASF32
	.byte	0x6
	.byte	0x7c
	.long	0x198
	.uleb128 0x8
	.byte	0x85
	.byte	0x1
	.byte	0x46
	.long	0x210
	.uleb128 0x9
	.long	.LASF33
	.byte	0x1
	.byte	0x48
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"In"
	.byte	0x1
	.byte	0x49
	.long	0x220
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.string	"Out"
	.byte	0x1
	.byte	0x4a
	.long	0x220
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF34
	.byte	0x1
	.byte	0x4b
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.byte	0
	.uleb128 0xc
	.long	0x3b
	.long	0x220
	.uleb128 0xd
	.long	0x8d
	.byte	0x7f
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x3b
	.uleb128 0x2
	.long	.LASF35
	.byte	0x1
	.byte	0x4c
	.long	0x1cd
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF36
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
	.uleb128 0xb
	.long	0x3b
	.uleb128 0x11
	.long	.LASF78
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0x12
	.long	.LASF45
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.long	0x2a9
	.uleb128 0x13
	.long	.LASF33
	.byte	0x1
	.byte	0x6b
	.long	0x2a9
	.uleb128 0x14
	.long	.LASF34
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
	.uleb128 0xb
	.long	0x2ae
	.uleb128 0xe
	.byte	0x2
	.long	0x226
	.uleb128 0x16
	.long	.LASF79
	.byte	0x5
	.byte	0x94
	.byte	0x1
	.byte	0x3
	.uleb128 0xf
	.long	.LASF40
	.byte	0x6
	.byte	0xc7
	.byte	0x1
	.byte	0x3
	.long	0x2d6
	.uleb128 0x13
	.long	.LASF41
	.byte	0x6
	.byte	0xc7
	.long	0x2d6
	.byte	0
	.uleb128 0xb
	.long	0x2db
	.uleb128 0xe
	.byte	0x2
	.long	0x1c2
	.uleb128 0xf
	.long	.LASF42
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x3
	.long	0x312
	.uleb128 0x13
	.long	.LASF33
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
	.uleb128 0xf
	.long	.LASF43
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.byte	0x3
	.long	0x34e
	.uleb128 0x13
	.long	.LASF33
	.byte	0x1
	.byte	0x9e
	.long	0x2a9
	.uleb128 0x13
	.long	.LASF44
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
	.long	.LASF46
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.long	0x38e
	.uleb128 0x13
	.long	.LASF33
	.byte	0x1
	.byte	0xb6
	.long	0x2a9
	.uleb128 0x14
	.long	.LASF44
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
	.long	.LASF47
	.byte	0x4
	.byte	0x63
	.byte	0x1
	.byte	0x3
	.long	0x3b2
	.uleb128 0x13
	.long	.LASF48
	.byte	0x4
	.byte	0x63
	.long	0x3b2
	.uleb128 0x13
	.long	.LASF49
	.byte	0x4
	.byte	0x64
	.long	0x3b7
	.byte	0
	.uleb128 0xb
	.long	0x6d
	.uleb128 0xb
	.long	0x15e
	.uleb128 0x17
	.long	0x34e
	.long	.LFB101
	.long	.LFE101
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x42b
	.uleb128 0x18
	.long	0x36a
	.byte	0x1
	.byte	0x68
	.uleb128 0x19
	.long	0x35f
	.byte	0x6
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0x9f
	.uleb128 0x1a
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x18
	.long	0x376
	.byte	0x1
	.byte	0x62
	.uleb128 0x1b
	.long	0x381
	.long	.LLST0
	.uleb128 0x1c
	.long	0x25c
	.long	.LBB52
	.long	.LBE52
	.byte	0x1
	.byte	0xbd
	.uleb128 0x1d
	.long	0x238
	.long	.LBB54
	.long	.LBE54
	.byte	0x1
	.byte	0xbd
	.uleb128 0x19
	.long	0x245
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1006
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF54
	.byte	0x3
	.byte	0x80
	.byte	0x1
	.long	.LFB87
	.long	.LFE87
	.long	.LLST1
	.byte	0x1
	.long	0x470
	.uleb128 0x1f
	.long	0x38e
	.long	.LBB58
	.long	.LBE58
	.byte	0x3
	.byte	0x87
	.long	0x466
	.uleb128 0x20
	.long	0x39b
	.word	0x2580
	.uleb128 0x21
	.long	0x3a6
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LVL6
	.long	0x8bc
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF58
	.byte	0x3
	.byte	0x60
	.byte	0x1
	.long	0x4d
	.long	.LFB86
	.long	.LFE86
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x5f2
	.uleb128 0x14
	.long	.LASF50
	.byte	0x3
	.byte	0x62
	.long	0xf6
	.uleb128 0x24
	.string	"ind"
	.byte	0x3
	.byte	0x63
	.long	0x4d
	.long	.LLST2
	.uleb128 0x1f
	.long	0x2e1
	.long	.LBB75
	.long	.LBE75
	.byte	0x3
	.byte	0x67
	.long	0x50c
	.uleb128 0x19
	.long	0x2ee
	.byte	0x6
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0x9f
	.uleb128 0x1a
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x1b
	.long	0x2fa
	.long	.LLST3
	.uleb128 0x1b
	.long	0x305
	.long	.LLST4
	.uleb128 0x1c
	.long	0x25c
	.long	.LBB77
	.long	.LBE77
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	0x238
	.long	.LBB79
	.long	.LBE79
	.byte	0x1
	.byte	0x57
	.uleb128 0x25
	.long	0x245
	.long	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LBB81
	.long	.LBE81
	.long	0x5e8
	.uleb128 0x14
	.long	.LASF51
	.byte	0x3
	.byte	0x6c
	.long	0x3b
	.uleb128 0x1f
	.long	0x269
	.long	.LBB82
	.long	.LBE82
	.byte	0x3
	.byte	0x6c
	.long	0x59e
	.uleb128 0x19
	.long	0x27a
	.byte	0x6
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0x9f
	.uleb128 0x1a
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x1b
	.long	0x285
	.long	.LLST6
	.uleb128 0x1a
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x1b
	.long	0x291
	.long	.LLST7
	.uleb128 0x1b
	.long	0x29c
	.long	.LLST8
	.uleb128 0x1c
	.long	0x25c
	.long	.LBB85
	.long	.LBE85
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1d
	.long	0x238
	.long	.LBB87
	.long	.LBE87
	.byte	0x1
	.byte	0x6f
	.uleb128 0x19
	.long	0x245
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1374
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LVL16
	.long	0x3bc
	.uleb128 0x22
	.long	.LVL18
	.long	0x3bc
	.uleb128 0x22
	.long	.LVL20
	.long	0x3bc
	.uleb128 0x22
	.long	.LVL22
	.long	0x3bc
	.uleb128 0x27
	.long	.LVL24
	.long	0x8c7
	.long	0x5de
	.uleb128 0x28
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Mouse_HID_Interface
	.byte	0
	.uleb128 0x22
	.long	.LVL25
	.long	0x8db
	.byte	0
	.uleb128 0x22
	.long	.LVL7
	.long	0x42b
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF52
	.byte	0x3
	.byte	0x91
	.byte	0x1
	.long	.LFB88
	.long	.LFE88
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.long	.LASF53
	.byte	0x3
	.byte	0x97
	.byte	0x1
	.long	.LFB89
	.long	.LFE89
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF55
	.byte	0x3
	.byte	0x9c
	.byte	0x1
	.long	.LFB90
	.long	.LFE90
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x660
	.uleb128 0x1c
	.long	0x2b4
	.long	.LBB89
	.long	.LBE89
	.byte	0x3
	.byte	0xa0
	.uleb128 0x2b
	.long	.LVL26
	.long	0x8e5
	.uleb128 0x28
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Mouse_HID_Interface
	.byte	0
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF56
	.byte	0x3
	.byte	0xa4
	.byte	0x1
	.long	.LFB91
	.long	.LFE91
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x694
	.uleb128 0x2c
	.long	.LVL27
	.byte	0x1
	.long	0x8fd
	.uleb128 0x28
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Mouse_HID_Interface
	.byte	0
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF57
	.byte	0x3
	.byte	0xaa
	.byte	0x1
	.long	.LFB92
	.long	.LFE92
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x6cb
	.uleb128 0x1d
	.long	0x2bd
	.long	.LBB91
	.long	.LBE91
	.byte	0x3
	.byte	0xac
	.uleb128 0x19
	.long	0x2ca
	.byte	0x6
	.byte	0x3
	.long	Mouse_HID_Interface
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.long	.LASF59
	.byte	0x3
	.byte	0xb9
	.byte	0x1
	.long	0x15e
	.long	.LFB93
	.long	.LFE93
	.long	.LLST9
	.byte	0x1
	.long	0x74b
	.uleb128 0x2e
	.long	.LASF41
	.byte	0x3
	.byte	0xba
	.long	0x2d6
	.long	.LLST10
	.uleb128 0x2f
	.long	.LASF60
	.byte	0x3
	.byte	0xbb
	.long	0x74b
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2f
	.long	.LASF61
	.byte	0x3
	.byte	0xbc
	.long	0x257
	.byte	0x1
	.byte	0x64
	.uleb128 0x2f
	.long	.LASF62
	.byte	0x3
	.byte	0xbd
	.long	0xc5
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2e
	.long	.LASF63
	.byte	0x3
	.byte	0xbe
	.long	0x750
	.long	.LLST11
	.uleb128 0x30
	.long	.LASF64
	.byte	0x3
	.byte	0xc0
	.long	0x75b
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xb
	.long	0x220
	.uleb128 0xb
	.long	0x755
	.uleb128 0xe
	.byte	0x2
	.long	0x54
	.uleb128 0xe
	.byte	0x2
	.long	0xf6
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF65
	.byte	0x3
	.byte	0xd0
	.byte	0x1
	.long	.LFB94
	.long	.LFE94
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x7cc
	.uleb128 0x2f
	.long	.LASF41
	.byte	0x3
	.byte	0xd0
	.long	0x2d6
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2f
	.long	.LASF60
	.byte	0x3
	.byte	0xd1
	.long	0x257
	.byte	0x1
	.byte	0x66
	.uleb128 0x2f
	.long	.LASF61
	.byte	0x3
	.byte	0xd2
	.long	0x257
	.byte	0x1
	.byte	0x64
	.uleb128 0x2f
	.long	.LASF62
	.byte	0x3
	.byte	0xd3
	.long	0x7cc
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2f
	.long	.LASF63
	.byte	0x3
	.byte	0xd4
	.long	0x7d3
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
	.long	0x7d2
	.uleb128 0x31
	.uleb128 0xb
	.long	0x54
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF66
	.byte	0x3
	.byte	0xdc
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.long	.LLST12
	.byte	0x1
	.long	0x864
	.uleb128 0x32
	.long	.LASF67
	.byte	0x3
	.byte	0xde
	.long	0x3b
	.long	.LLST13
	.uleb128 0x1d
	.long	0x312
	.long	.LBB100
	.long	.LBE100
	.byte	0x3
	.byte	0xe1
	.uleb128 0x33
	.long	0x31f
	.uleb128 0x25
	.long	0x32a
	.long	.LLST14
	.uleb128 0x1a
	.long	.LBB102
	.long	.LBE102
	.uleb128 0x1b
	.long	0x336
	.long	.LLST15
	.uleb128 0x1b
	.long	0x341
	.long	.LLST16
	.uleb128 0x1c
	.long	0x25c
	.long	.LBB103
	.long	.LBE103
	.byte	0x1
	.byte	0xa6
	.uleb128 0x1d
	.long	0x238
	.long	.LBB105
	.long	.LBE105
	.byte	0x1
	.byte	0xa6
	.uleb128 0x25
	.long	0x245
	.long	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x3b
	.long	0x874
	.uleb128 0xd
	.long	0x8d
	.byte	0x2
	.byte	0
	.uleb128 0x34
	.long	.LASF68
	.byte	0x3
	.byte	0x41
	.long	0x864
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PrevMouseHIDReportBuffer
	.uleb128 0x34
	.long	.LASF69
	.byte	0x3
	.byte	0x47
	.long	0x1c2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Mouse_HID_Interface
	.uleb128 0x34
	.long	.LASF70
	.byte	0x3
	.byte	0x59
	.long	0x226
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.uleb128 0x34
	.long	.LASF71
	.byte	0x3
	.byte	0x5b
	.long	0xf6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	mouseReport
	.uleb128 0x35
	.byte	0x1
	.long	.LASF72
	.byte	0x9
	.word	0x123
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.long	.LASF80
	.byte	0x6
	.byte	0x95
	.byte	0x1
	.byte	0x1
	.long	0x8db
	.uleb128 0x37
	.long	0x2d6
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.long	.LASF73
	.byte	0xa
	.byte	0xb2
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.byte	0x1
	.long	.LASF81
	.byte	0x6
	.byte	0x87
	.byte	0x1
	.long	0x15e
	.byte	0x1
	.long	0x8fd
	.uleb128 0x37
	.long	0x2d6
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.long	.LASF82
	.byte	0x6
	.byte	0x8e
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.long	.LVL15
	.long	.LVL17
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL17
	.long	.LVL19
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL19
	.long	.LVL21
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL21
	.long	.LVL23
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL8
	.long	.LVL11
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST4:
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
.LLST5:
	.long	.LVL10
	.long	.LVL11
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1232
	.sleb128 0
	.long	.LVL14
	.long	.LFE86
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1374
	.sleb128 0
	.long	0
	.long	0
.LLST6:
	.long	.LVL14
	.long	.LVL16-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST7:
	.long	.LVL12
	.long	.LVL16-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST8:
	.long	.LVL13
	.long	.LVL14
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL14
	.long	.LFE86
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
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
	.long	.LFE93
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST10:
	.long	.LVL29
	.long	.LVL31
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL31
	.long	.LFE93
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL29
	.long	.LVL32
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
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
.LLST12:
	.long	.LFB95
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI10
	.long	.LFE95
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST13:
	.long	.LVL34
	.long	.LVL36
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST14:
	.long	.LVL35
	.long	.LVL36
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST15:
	.long	.LVL37
	.long	.LVL40
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST16:
	.long	.LVL38
	.long	.LVL39
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL39
	.long	.LVL40
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2087
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
.LASF76:
	.string	"/home/tomas/Escritorio/ArduinoFirmwares/arduino-usb-master/firmwares/arduino-mouse"
.LASF75:
	.string	"Arduino-mouse.c"
.LASF78:
	.string	"__iCliRetVal"
.LASF32:
	.string	"USB_ClassInfo_HID_Device_t"
.LASF66:
	.string	"__vector_23"
.LASF25:
	.string	"PrevReportINBufferSize"
.LASF10:
	.string	"long long unsigned int"
.LASF23:
	.string	"ReportINEndpointDoubleBank"
.LASF18:
	.string	"Button"
.LASF12:
	.string	"DEVICE_STATE_Unattached"
.LASF14:
	.string	"DEVICE_STATE_Default"
.LASF40:
	.string	"HID_Device_MillisecondElapsed"
.LASF46:
	.string	"RingBuffer_Remove"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF48:
	.string	"BaudRate"
.LASF69:
	.string	"Mouse_HID_Interface"
.LASF62:
	.string	"ReportData"
.LASF47:
	.string	"Serial_Init"
.LASF79:
	.string	"USB_Device_EnableSOFEvents"
.LASF6:
	.string	"long int"
.LASF56:
	.string	"EVENT_USB_Device_UnhandledControlRequest"
.LASF4:
	.string	"uint16_t"
.LASF77:
	.string	"USB_Device_States_t"
.LASF57:
	.string	"EVENT_USB_Device_StartOfFrame"
.LASF81:
	.string	"HID_Device_ConfigureEndpoints"
.LASF20:
	.string	"InterfaceNumber"
.LASF28:
	.string	"IdleCount"
.LASF38:
	.string	"__ToDo"
.LASF60:
	.string	"ReportID"
.LASF24:
	.string	"PrevReportINBuffer"
.LASF5:
	.string	"unsigned int"
.LASF70:
	.string	"USARTtoUSB_Buffer"
.LASF8:
	.string	"long unsigned int"
.LASF37:
	.string	"sreg_save"
.LASF22:
	.string	"ReportINEndpointSize"
.LASF16:
	.string	"DEVICE_STATE_Configured"
.LASF50:
	.string	"newReport"
.LASF82:
	.string	"HID_Device_ProcessControlRequest"
.LASF73:
	.string	"USB_USBTask"
.LASF43:
	.string	"RingBuffer_Insert"
.LASF53:
	.string	"EVENT_USB_Device_Disconnect"
.LASF17:
	.string	"DEVICE_STATE_Suspended"
.LASF19:
	.string	"USB_MouseReport_Data_t"
.LASF11:
	.string	"sizetype"
.LASF65:
	.string	"CALLBACK_HID_Device_ProcessHIDReport"
.LASF72:
	.string	"USB_Init"
.LASF61:
	.string	"ReportType"
.LASF15:
	.string	"DEVICE_STATE_Addressed"
.LASF13:
	.string	"DEVICE_STATE_Powered"
.LASF55:
	.string	"EVENT_USB_Device_ConfigurationChanged"
.LASF67:
	.string	"ReceivedByte"
.LASF54:
	.string	"SetupHardware"
.LASF51:
	.string	"BufferCount"
.LASF26:
	.string	"_Bool"
.LASF3:
	.string	"unsigned char"
.LASF64:
	.string	"reportp"
.LASF71:
	.string	"mouseReport"
.LASF52:
	.string	"EVENT_USB_Device_Connect"
.LASF49:
	.string	"DoubleSpeed"
.LASF21:
	.string	"ReportINEndpointNumber"
.LASF45:
	.string	"RingBuffer_GetCount"
.LASF7:
	.string	"uint32_t"
.LASF36:
	.string	"char"
.LASF31:
	.string	"State"
.LASF29:
	.string	"IdleMSRemaining"
.LASF27:
	.string	"UsingReportProtocol"
.LASF59:
	.string	"CALLBACK_HID_Device_CreateHIDReport"
.LASF39:
	.string	"__iRestore"
.LASF42:
	.string	"RingBuffer_InitBuffer"
.LASF35:
	.string	"RingBuff_t"
.LASF80:
	.string	"HID_Device_USBTask"
.LASF0:
	.string	"int8_t"
.LASF30:
	.string	"Config"
.LASF41:
	.string	"HIDInterfaceInfo"
.LASF33:
	.string	"Buffer"
.LASF63:
	.string	"ReportSize"
.LASF34:
	.string	"Count"
.LASF1:
	.string	"uint8_t"
.LASF44:
	.string	"Data"
.LASF68:
	.string	"PrevMouseHIDReportBuffer"
.LASF74:
	.string	"GNU C 4.8.2 -mmcu=atmega16u2 -gdwarf-2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fno-inline-small-functions -fpack-struct -fshort-enums -fno-strict-aliasing"
.LASF58:
	.string	"main"
	.ident	"GCC: (GNU) 4.8.2"
.global __do_copy_data
.global __do_clear_bss
