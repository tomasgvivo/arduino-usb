	.file	"Arduino-usbmidi.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.RingBuffer_Insert,"ax",@progbits
	.type	RingBuffer_Insert, @function
RingBuffer_Insert:
.LFB72:
	.file 1 "Lib/LightweightRingBuff.h"
	.loc 1 160 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 161 0
	movw r30,r24
	subi r30,-128
	sbci r31,-1
	ld r26,Z
	ldd r27,Z+1
	st X,r22
	.loc 1 163 0
	ld r26,Z
	ldd r27,Z+1
	movw r18,r26
	subi r18,-1
	sbci r19,-1
	std Z+1,r19
	st Z,r18
	cp r18,r30
	cpc r19,r31
	brne .L2
	.loc 1 164 0
	adiw r26,1+1
	st X,r25
	st -X,r24
	sbiw r26,1
.L2:
.LBB35:
	.loc 1 166 0
	in r18,__SREG__
.LVL1:
.LBB36:
.LBB37:
	.file 2 "/usr/lib/avr/include/util/atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL2:
/* #NOAPP */
.LBE37:
.LBE36:
	.loc 1 168 0
	movw r30,r24
	subi r30,124
	sbci r31,-1
	ld r24,Z
.LVL3:
	subi r24,lo8(-(1))
	st Z,r24
.LVL4:
.LBB38:
.LBB39:
	.loc 2 70 0
	out __SREG__,r18
	.loc 2 71 0
	ret
.LBE39:
.LBE38:
.LBE35:
	.cfi_endproc
.LFE72:
	.size	RingBuffer_Insert, .-RingBuffer_Insert
	.section	.text.RingBuffer_Remove,"ax",@progbits
	.type	RingBuffer_Remove, @function
RingBuffer_Remove:
.LFB73:
	.loc 1 183 0
	.cfi_startproc
.LVL5:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 184 0
	movw r26,r24
	subi r26,126
	sbci r27,-1
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ld r20,Z+
.LVL6:
	.loc 1 186 0
	adiw r26,1
	st X,r31
	st -X,r30
	movw r18,r24
	subi r18,-128
	sbci r19,-1
	cp r30,r18
	cpc r31,r19
	brne .L5
	.loc 1 187 0
	st X+,r24
	st X,r25
.L5:
.LBB40:
	.loc 1 189 0
	in r18,__SREG__
.LVL7:
.LBB41:
.LBB42:
	.loc 2 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL8:
/* #NOAPP */
.LBE42:
.LBE41:
	.loc 1 191 0
	movw r30,r24
	subi r30,124
	sbci r31,-1
	ld r25,Z
	subi r25,lo8(-(-1))
	st Z,r25
.LVL9:
.LBB43:
.LBB44:
	.loc 2 70 0
	out __SREG__,r18
	.loc 2 71 0
.LBE44:
.LBE43:
.LBE40:
	.loc 1 195 0
	mov r24,r20
.LVL10:
	ret
	.cfi_endproc
.LFE73:
	.size	RingBuffer_Remove, .-RingBuffer_Remove
	.section	.text.LEDs_SetAllLEDs,"ax",@progbits
	.type	LEDs_SetAllLEDs, @function
LEDs_SetAllLEDs:
.LFB77:
	.file 3 "./Board/LEDs.h"
	.loc 3 84 0
	.cfi_startproc
.LVL11:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 85 0
	in r25,0xb
	com r24
.LVL12:
	ori r25,lo8(48)
	and r24,r25
.LVL13:
	out 0xb,r24
	ret
	.cfi_endproc
.LFE77:
	.size	LEDs_SetAllLEDs, .-LEDs_SetAllLEDs
	.section	.text.RingBuffer_GetCount.isra.1,"ax",@progbits
	.type	RingBuffer_GetCount.isra.1, @function
RingBuffer_GetCount.isra.1:
.LFB95:
	.loc 1 107 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL14:
.LBB45:
	.loc 1 111 0
	in r18,__SREG__
.LVL15:
.LBB46:
.LBB47:
	.loc 2 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL16:
/* #NOAPP */
.LBE47:
.LBE46:
	.loc 1 113 0
	movw r30,r24
	ld r24,Z
.LVL17:
.LBB48:
.LBB49:
	.loc 2 70 0
	out __SREG__,r18
	.loc 2 71 0
.LBE49:
.LBE48:
.LBE45:
	.loc 1 117 0
	ret
	.cfi_endproc
.LFE95:
	.size	RingBuffer_GetCount.isra.1, .-RingBuffer_GetCount.isra.1
	.section	.text.SetupHardware,"ax",@progbits
.global	SetupHardware
	.type	SetupHardware, @function
SetupHardware:
.LFB88:
	.file 4 "Arduino-usbmidi.c"
	.loc 4 195 0
	.cfi_startproc
	push r11
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 11, -2
	push r12
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	.loc 4 197 0
	in r24,0x34
	andi r24,lo8(-9)
	out 0x34,r24
	.loc 4 198 0
	ldi r24,lo8(24)
/* #APP */
 ;  198 "Arduino-usbmidi.c" 1
	in __tmp_reg__, __SREG__
	cli
	sts 96, r24
	sts 96, __zero_reg__
	out __SREG__,__tmp_reg__
	
 ;  0 "" 2
.LVL18:
/* #NOAPP */
.LBB54:
.LBB55:
	.file 5 "../../LUFA/Drivers/Peripheral/Serial.h"
	.loc 5 102 0
	ldi r24,lo8(-52)
	mov r12,r24
	mov r13,__zero_reg__
	ldi r24,lo8(8)
	ldi r25,0
	movw r30,r12
	std Z+1,r25
	st Z,r24
	.loc 5 104 0
	ldi r25,lo8(-54)
	mov r14,r25
	mov r15,__zero_reg__
	ldi r18,lo8(6)
	mov r11,r18
	movw r30,r14
	st Z,r11
	.loc 5 105 0
	ldi r16,lo8(-56)
	ldi r17,0
	movw r30,r16
	st Z,__zero_reg__
	.loc 5 106 0
	ldi r28,lo8(-55)
	ldi r29,0
	ldi r24,lo8(24)
	st Y,r24
	.loc 5 108 0
	sbi 0xa,3
	.loc 5 109 0
	sbi 0xb,2
.LBE55:
.LBE54:
.LBB56:
.LBB57:
	.loc 3 69 0
	in r24,0xa
	ori r24,lo8(48)
	out 0xa,r24
	.loc 3 70 0
	in r24,0xb
	ori r24,lo8(48)
	out 0xb,r24
.LBE57:
.LBE56:
	.loc 4 203 0
	call USB_Init
.LVL19:
	.loc 4 206 0
	ldi r24,lo8(4)
	out 0x25,r24
	.loc 4 209 0
	st Y,__zero_reg__
	.loc 4 210 0
	movw r30,r16
	st Z,__zero_reg__
	.loc 4 211 0
	movw r30,r14
	st Z,__zero_reg__
	.loc 4 213 0
	ldi r24,lo8(16)
	ldi r25,0
	movw r30,r12
	std Z+1,r25
	st Z,r24
	.loc 4 215 0
	movw r30,r14
	st Z,r11
	.loc 4 216 0
	ldi r24,lo8(2)
	movw r30,r16
	st Z,r24
	.loc 4 217 0
	ldi r24,lo8(-104)
	st Y,r24
/* epilogue start */
	.loc 4 218 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	ret
	.cfi_endproc
.LFE88:
	.size	SetupHardware, .-SetupHardware
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB87:
	.loc 4 94 0
	.cfi_startproc
	push r28
.LCFI9:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI10:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI11:
	.cfi_def_cfa_register 28
	sbiw r28,8
.LCFI12:
	.cfi_def_cfa_offset 12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
.LVL20:
	.loc 4 107 0
	call SetupHardware
.LVL21:
.LBB88:
.LBB89:
	.loc 1 87 0
	in r18,__SREG__
.LVL22:
.LBB90:
.LBB91:
	.loc 2 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL23:
/* #NOAPP */
.LBE91:
.LBE90:
	.loc 1 89 0
	ldi r24,lo8(USBtoUSART_Buffer)
	ldi r25,hi8(USBtoUSART_Buffer)
	sts USBtoUSART_Buffer+128+1,r25
	sts USBtoUSART_Buffer+128,r24
	.loc 1 90 0
	sts USBtoUSART_Buffer+130+1,r25
	sts USBtoUSART_Buffer+130,r24
.LVL24:
.LBB92:
.LBB93:
	.loc 2 70 0
	out __SREG__,r18
	.loc 2 71 0
.LVL25:
.LBE93:
.LBE92:
.LBE89:
.LBE88:
.LBB94:
.LBB95:
	.loc 1 87 0
	in r18,__SREG__
.LVL26:
.LBB96:
.LBB97:
	.loc 2 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL27:
/* #NOAPP */
.LBE97:
.LBE96:
	.loc 1 89 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
	.loc 1 90 0
	sts USARTtoUSB_Buffer+130+1,r25
	sts USARTtoUSB_Buffer+130,r24
.LVL28:
.LBB98:
.LBB99:
	.loc 2 70 0
	out __SREG__,r18
.LVL29:
	.loc 2 71 0
.LBE99:
.LBE98:
.LBE95:
.LBE94:
	.loc 4 112 0
	ldi r24,lo8(32)
	call LEDs_SetAllLEDs
.LVL30:
	.loc 4 113 0
/* #APP */
 ;  113 "Arduino-usbmidi.c" 1
	sei
 ;  0 "" 2
	.loc 4 105 0
/* #NOAPP */
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	.loc 4 104 0
	ldi r16,0
	ldi r17,0
	movw r18,r28
	subi r18,-5
	sbci r19,-1
	movw r12,r18
.LBB100:
.LBB101:
	.loc 4 151 0
	ldi r20,lo8(-128)
	mov r10,r20
	mov r11,__zero_reg__
.LVL31:
.L24:
.LBE101:
	.loc 4 116 0
	ldi r24,lo8(USARTtoUSB_Buffer+132)
	ldi r25,hi8(USARTtoUSB_Buffer+132)
	call RingBuffer_GetCount.isra.1
.LVL32:
	.loc 4 119 0
	cpi r24,lo8(4)
	brlo .L10
	movw r16,r28
.LVL33:
	subi r16,-1
	sbci r17,-1
.LVL34:
.L12:
	.loc 4 122 0 discriminator 2
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	call RingBuffer_Remove
.LVL35:
	movw r30,r16
	st Z+,r24
	movw r16,r30
.LVL36:
	.loc 4 121 0 discriminator 2
	cp r30,r12
	cpc r31,r13
	brne .L12
	.loc 4 127 0
	ldd r25,Y+1
	mov r24,r25
	swap r24
	andi r24,lo8(15)
	std Y+5,r24
	.loc 4 128 0
	ldd r24,Y+2
	subi r24,lo8(-(-1))
	andi r24,lo8(15)
	andi r25,lo8(-16)
	or r24,r25
	std Y+6,r24
	.loc 4 129 0
	ldd r24,Y+3
	std Y+7,r24
	.loc 4 130 0
	ldd r24,Y+4
	std Y+8,r24
	.loc 4 132 0
	movw r22,r12
	ldi r24,lo8(Keyboard_MIDI_Interface)
	ldi r25,hi8(Keyboard_MIDI_Interface)
	call MIDI_Device_SendEventPacket
.LVL37:
	.loc 4 133 0
	ldi r24,lo8(Keyboard_MIDI_Interface)
	ldi r25,hi8(Keyboard_MIDI_Interface)
	call MIDI_Device_Flush
.LVL38:
.LBB106:
.LBB107:
	.loc 3 75 0
	cbi 0xb,5
.LVL39:
.LBE107:
.LBE106:
	.loc 4 137 0
	ldi r16,lo8(16)
	ldi r17,lo8(39)
	rjmp .L13
.LVL40:
.L10:
	.loc 4 141 0
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L14
.LVL41:
.L13:
	.loc 4 142 0
	subi r16,1
	sbc r17,__zero_reg__
.LVL42:
	.loc 4 143 0
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .L14
.LVL43:
.LBB108:
.LBB109:
	.loc 3 80 0
	sbi 0xb,5
.LVL44:
.L14:
.LBE109:
.LBE108:
	.loc 4 148 0
	movw r22,r12
	ldi r24,lo8(Keyboard_MIDI_Interface)
	ldi r25,hi8(Keyboard_MIDI_Interface)
	call MIDI_Device_ReceiveEventPacket
.LVL45:
	tst r24
	breq .L15
.LBB110:
	.loc 4 149 0
	ldi r24,lo8(USBtoUSART_Buffer+132)
	ldi r25,hi8(USBtoUSART_Buffer+132)
	call RingBuffer_GetCount.isra.1
.LVL46:
	.loc 4 151 0
	movw r18,r10
	sub r18,r24
	sbc r19,__zero_reg__
	cpi r18,4
	cpc r19,__zero_reg__
	brlo .L16
	.loc 4 152 0
	ldd r24,Y+5
.LVL47:
	swap r24
	andi r24,lo8(-16)
	std Y+1,r24
	.loc 4 153 0
	ldd r24,Y+6
	andi r24,lo8(15)
	subi r24,lo8(-(1))
	std Y+2,r24
	.loc 4 154 0
	ldd r24,Y+7
	std Y+3,r24
	.loc 4 155 0
	ldd r24,Y+8
	std Y+4,r24
.LVL48:
	movw r24,r28
	adiw r24,1
	movw r14,r24
.LVL49:
.L17:
	.loc 4 157 0 discriminator 1
	cp r14,r12
	cpc r15,r13
	breq .L37
	.loc 4 158 0 discriminator 2
	movw r30,r14
	ld r22,Z+
	movw r14,r30
	ldi r24,lo8(USBtoUSART_Buffer)
	ldi r25,hi8(USBtoUSART_Buffer)
	call RingBuffer_Insert
.LVL50:
	rjmp .L17
.L37:
.LVL51:
.LBB102:
.LBB103:
	.loc 3 75 0
	cbi 0xb,4
.LVL52:
.LBE103:
.LBE102:
	.loc 4 163 0
	ldi r19,lo8(16)
	mov r14,r19
	ldi r19,lo8(39)
	mov r15,r19
	rjmp .L19
.LVL53:
.L16:
.LBB104:
.LBB105:
	.loc 3 75 0
	cbi 0xb,4
.LVL54:
.L15:
.LBE105:
.LBE104:
.LBE110:
	.loc 4 176 0
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L20
.LVL55:
.L19:
	.loc 4 177 0
	ldi r31,1
	sub r14,r31
	sbc r15,__zero_reg__
.LVL56:
	.loc 4 178 0
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L20
.LVL57:
.LBB111:
.LBB112:
	.loc 3 80 0
	sbi 0xb,4
.LVL58:
.L20:
.LBE112:
.LBE111:
.LBB113:
.LBB114:
	.loc 1 146 0
	ldi r24,lo8(USBtoUSART_Buffer+132)
	ldi r25,hi8(USBtoUSART_Buffer+132)
	call RingBuffer_GetCount.isra.1
.LVL59:
.LBE114:
.LBE113:
	.loc 4 184 0
	tst r24
	breq .L21
	.loc 4 185 0
	ldi r24,lo8(USBtoUSART_Buffer)
	ldi r25,hi8(USBtoUSART_Buffer)
	call RingBuffer_Remove
.LVL60:
.L23:
.LBB115:
.LBB116:
	.loc 5 142 0
	lds r25,200
	sbrs r25,5
	rjmp .L23
	.loc 5 143 0
	sts 206,r24
.LVL61:
.L21:
.LBE116:
.LBE115:
	.loc 4 189 0
	call USB_USBTask
.LVL62:
.LBE100:
	.loc 4 190 0
	rjmp .L24
	.cfi_endproc
.LFE87:
	.size	main, .-main
	.section	.text.EVENT_USB_Device_Connect,"ax",@progbits
.global	EVENT_USB_Device_Connect
	.type	EVENT_USB_Device_Connect, @function
EVENT_USB_Device_Connect:
.LFB89:
	.loc 4 222 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 4 223 0
	ldi r24,lo8(16)
	jmp LEDs_SetAllLEDs
.LVL63:
	.cfi_endproc
.LFE89:
	.size	EVENT_USB_Device_Connect, .-EVENT_USB_Device_Connect
	.section	.text.EVENT_USB_Device_Disconnect,"ax",@progbits
.global	EVENT_USB_Device_Disconnect
	.type	EVENT_USB_Device_Disconnect, @function
EVENT_USB_Device_Disconnect:
.LFB90:
	.loc 4 228 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 4 229 0
	ldi r24,lo8(32)
	jmp LEDs_SetAllLEDs
.LVL64:
	.cfi_endproc
.LFE90:
	.size	EVENT_USB_Device_Disconnect, .-EVENT_USB_Device_Disconnect
	.section	.text.EVENT_USB_Device_ConfigurationChanged,"ax",@progbits
.global	EVENT_USB_Device_ConfigurationChanged
	.type	EVENT_USB_Device_ConfigurationChanged, @function
EVENT_USB_Device_ConfigurationChanged:
.LFB91:
	.loc 4 234 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 4 235 0
	ldi r24,0
	call LEDs_SetAllLEDs
.LVL65:
	.loc 4 236 0
	ldi r24,lo8(Keyboard_MIDI_Interface)
	ldi r25,hi8(Keyboard_MIDI_Interface)
	call MIDI_Device_ConfigureEndpoints
.LVL66:
	cpse r24,__zero_reg__
	rjmp .L40
	.loc 4 237 0
	ldi r24,lo8(48)
	jmp LEDs_SetAllLEDs
.LVL67:
.L40:
	ret
	.cfi_endproc
.LFE91:
	.size	EVENT_USB_Device_ConfigurationChanged, .-EVENT_USB_Device_ConfigurationChanged
	.section	.text.EVENT_USB_Device_UnhandledControlRequest,"ax",@progbits
.global	EVENT_USB_Device_UnhandledControlRequest
	.type	EVENT_USB_Device_UnhandledControlRequest, @function
EVENT_USB_Device_UnhandledControlRequest:
.LFB92:
	.loc 4 242 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL68:
	ret
	.cfi_endproc
.LFE92:
	.size	EVENT_USB_Device_UnhandledControlRequest, .-EVENT_USB_Device_UnhandledControlRequest
	.section	.text.__vector_23,"ax",@progbits
.global	__vector_23
	.type	__vector_23, @function
__vector_23:
.LFB93:
	.loc 4 250 0
	.cfi_startproc
	.loc 4 250 0
	push r1
.LCFI13:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI14:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI15:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI16:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI17:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI18:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI19:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI20:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI21:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI22:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI23:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI24:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI25:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI26:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
	push r28
.LCFI27:
	.cfi_def_cfa_offset 17
	.cfi_offset 28, -16
	push r29
.LCFI28:
	.cfi_def_cfa_offset 18
	.cfi_offset 29, -17
	push __zero_reg__
.LCFI29:
	.cfi_def_cfa_offset 19
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI30:
	.cfi_def_cfa_register 28
/* prologue: Signal */
/* frame size = 1 */
/* stack size = 18 */
.L__stack_usage = 18
	.loc 4 251 0
	lds r22,206
.LVL69:
.LBB119:
.LBB120:
	.loc 1 129 0
	ldi r24,lo8(USARTtoUSB_Buffer+132)
	ldi r25,hi8(USARTtoUSB_Buffer+132)
	std Y+1,r22
	call RingBuffer_GetCount.isra.1
.LVL70:
.LBE120:
.LBE119:
	.loc 4 253 0
	ldd r22,Y+1
	cpi r24,lo8(-128)
	breq .L43
	.loc 4 255 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	call RingBuffer_Insert
.LVL71:
.L43:
/* epilogue start */
	.loc 4 257 0
	pop __tmp_reg__
	pop r29
	pop r28
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE93:
	.size	__vector_23, .-__vector_23
	.comm	USARTtoUSB_Buffer,133,1
	.comm	USBtoUSART_Buffer,133,1
.global	Keyboard_MIDI_Interface
	.data
	.type	Keyboard_MIDI_Interface, @object
	.size	Keyboard_MIDI_Interface, 9
Keyboard_MIDI_Interface:
	.byte	1
	.byte	2
	.word	64
	.byte	0
	.byte	1
	.word	64
	.byte	0
	.text
.Letext0:
	.file 6 "/usr/lib/avr/include/stdint.h"
	.file 7 "../../LUFA/Drivers/USB/Class/Device/../Common/MIDI.h"
	.file 8 "../../LUFA/Drivers/USB/Class/Device/MIDI.h"
	.file 9 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/USBController.h"
	.file 10 "../../LUFA/Drivers/USB/HighLevel/USBTask.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb6f
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF77
	.byte	0x1
	.long	.LASF78
	.long	.LASF79
	.long	.Ldebug_ranges0+0x18
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x6
	.byte	0x7a
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x6
	.byte	0x7c
	.long	0x54
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x6
	.byte	0x7e
	.long	0x6d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.byte	0xae
	.long	0xde
	.uleb128 0x6
	.long	.LASF11
	.byte	0x7
	.byte	0xb0
	.long	0x3b
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x7
	.byte	0xb1
	.long	0x3b
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF13
	.byte	0x7
	.byte	0xb3
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.long	.LASF14
	.byte	0x7
	.byte	0xb4
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.long	.LASF15
	.byte	0x7
	.byte	0xb5
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF16
	.byte	0x7
	.byte	0xb6
	.long	0x89
	.uleb128 0x5
	.byte	0x9
	.byte	0x8
	.byte	0x52
	.long	0x154
	.uleb128 0x7
	.long	.LASF17
	.byte	0x8
	.byte	0x54
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF18
	.byte	0x8
	.byte	0x56
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.long	.LASF19
	.byte	0x8
	.byte	0x57
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.long	.LASF20
	.byte	0x8
	.byte	0x58
	.long	0x154
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.long	.LASF21
	.byte	0x8
	.byte	0x5a
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x7
	.long	.LASF22
	.byte	0x8
	.byte	0x5b
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.long	.LASF23
	.byte	0x8
	.byte	0x5c
	.long	0x154
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF24
	.uleb128 0x8
	.byte	0
	.byte	0x8
	.byte	0x60
	.uleb128 0x5
	.byte	0x9
	.byte	0x8
	.byte	0x50
	.long	0x184
	.uleb128 0x7
	.long	.LASF25
	.byte	0x8
	.byte	0x5d
	.long	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF26
	.byte	0x8
	.byte	0x63
	.long	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0
	.uleb128 0x9
	.long	0xe9
	.uleb128 0x3
	.long	.LASF27
	.byte	0x8
	.byte	0x66
	.long	0x15f
	.uleb128 0x5
	.byte	0x85
	.byte	0x1
	.byte	0x46
	.long	0x1d7
	.uleb128 0x7
	.long	.LASF28
	.byte	0x1
	.byte	0x48
	.long	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"In"
	.byte	0x1
	.byte	0x49
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.string	"Out"
	.byte	0x1
	.byte	0x4a
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x7
	.long	.LASF29
	.byte	0x1
	.byte	0x4b
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.byte	0
	.uleb128 0xb
	.long	0x30
	.long	0x1e7
	.uleb128 0xc
	.long	0x82
	.byte	0x7f
	.byte	0
	.uleb128 0xd
	.byte	0x2
	.long	0x30
	.uleb128 0x3
	.long	.LASF30
	.byte	0x1
	.byte	0x4c
	.long	0x194
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF31
	.uleb128 0xe
	.long	.LASF34
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x218
	.uleb128 0xf
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0x218
	.byte	0
	.uleb128 0xd
	.byte	0x2
	.long	0x21e
	.uleb128 0x9
	.long	0x30
	.uleb128 0x10
	.long	.LASF80
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0x11
	.long	.LASF40
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0x270
	.uleb128 0x12
	.long	.LASF28
	.byte	0x1
	.byte	0x6b
	.long	0x270
	.uleb128 0x13
	.long	.LASF29
	.byte	0x1
	.byte	0x6d
	.long	0x30
	.uleb128 0x14
	.uleb128 0x13
	.long	.LASF32
	.byte	0x1
	.byte	0x6f
	.long	0x30
	.uleb128 0x13
	.long	.LASF33
	.byte	0x1
	.byte	0x6f
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x275
	.uleb128 0xd
	.byte	0x2
	.long	0x1ed
	.uleb128 0xe
	.long	.LASF35
	.byte	0x5
	.byte	0x8c
	.byte	0x1
	.byte	0x3
	.long	0x294
	.uleb128 0x12
	.long	.LASF36
	.byte	0x5
	.byte	0x8c
	.long	0x294
	.byte	0
	.uleb128 0x9
	.long	0x1f8
	.uleb128 0xe
	.long	.LASF37
	.byte	0x8
	.byte	0xa1
	.byte	0x1
	.byte	0x3
	.long	0x2b2
	.uleb128 0x12
	.long	.LASF38
	.byte	0x8
	.byte	0xa1
	.long	0x2b2
	.byte	0
	.uleb128 0x9
	.long	0x2b7
	.uleb128 0xd
	.byte	0x2
	.long	0x189
	.uleb128 0xe
	.long	.LASF39
	.byte	0x8
	.byte	0xac
	.byte	0x1
	.byte	0x3
	.long	0x2d6
	.uleb128 0x12
	.long	.LASF38
	.byte	0x8
	.byte	0xac
	.long	0x2b2
	.byte	0
	.uleb128 0x11
	.long	.LASF41
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.long	0x154
	.byte	0x3
	.long	0x2f3
	.uleb128 0x12
	.long	.LASF28
	.byte	0x1
	.byte	0x7f
	.long	0x270
	.byte	0
	.uleb128 0x11
	.long	.LASF42
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.long	0x154
	.byte	0x3
	.long	0x310
	.uleb128 0x12
	.long	.LASF28
	.byte	0x1
	.byte	0x90
	.long	0x270
	.byte	0
	.uleb128 0xe
	.long	.LASF43
	.byte	0x5
	.byte	0x63
	.byte	0x1
	.byte	0x3
	.long	0x334
	.uleb128 0x12
	.long	.LASF44
	.byte	0x5
	.byte	0x63
	.long	0x334
	.uleb128 0x12
	.long	.LASF45
	.byte	0x5
	.byte	0x64
	.long	0x339
	.byte	0
	.uleb128 0x9
	.long	0x62
	.uleb128 0x9
	.long	0x154
	.uleb128 0x15
	.long	.LASF47
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.long	.LFB72
	.long	.LFE72
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x3c5
	.uleb128 0x16
	.long	.LASF28
	.byte	0x1
	.byte	0x9e
	.long	0x270
	.long	.LLST0
	.uleb128 0x17
	.long	.LASF46
	.byte	0x1
	.byte	0x9f
	.long	0x21e
	.byte	0x1
	.byte	0x66
	.uleb128 0x18
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x19
	.long	.LASF32
	.byte	0x1
	.byte	0xa6
	.long	0x30
	.byte	0x1
	.byte	0x62
	.uleb128 0x1a
	.long	.LASF33
	.byte	0x1
	.byte	0xa6
	.long	0x30
	.long	.LLST1
	.uleb128 0x1b
	.long	0x223
	.long	.LBB36
	.long	.LBE36
	.byte	0x1
	.byte	0xa6
	.uleb128 0x1c
	.long	0x1ff
	.long	.LBB38
	.long	.LBE38
	.byte	0x1
	.byte	0xa6
	.uleb128 0x1d
	.long	0x20c
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+892
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF81
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.long	0x30
	.long	.LFB73
	.long	.LFE73
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x450
	.uleb128 0x16
	.long	.LASF28
	.byte	0x1
	.byte	0xb6
	.long	0x270
	.long	.LLST2
	.uleb128 0x19
	.long	.LASF46
	.byte	0x1
	.byte	0xb8
	.long	0x30
	.byte	0x1
	.byte	0x64
	.uleb128 0x18
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x19
	.long	.LASF32
	.byte	0x1
	.byte	0xbd
	.long	0x30
	.byte	0x1
	.byte	0x62
	.uleb128 0x1a
	.long	.LASF33
	.byte	0x1
	.byte	0xbd
	.long	0x30
	.long	.LLST3
	.uleb128 0x1b
	.long	0x223
	.long	.LBB41
	.long	.LBE41
	.byte	0x1
	.byte	0xbd
	.uleb128 0x1c
	.long	0x1ff
	.long	.LBB43
	.long	.LBE43
	.byte	0x1
	.byte	0xbd
	.uleb128 0x1d
	.long	0x20c
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1031
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF48
	.byte	0x3
	.byte	0x53
	.byte	0x1
	.long	.LFB77
	.long	.LFE77
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x479
	.uleb128 0x16
	.long	.LASF49
	.byte	0x3
	.byte	0x53
	.long	0x21e
	.long	.LLST4
	.byte	0
	.uleb128 0x1f
	.long	0x230
	.long	.LFB95
	.long	.LFE95
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x4e8
	.uleb128 0x1d
	.long	0x241
	.byte	0x6
	.byte	0xfa
	.long	0x241
	.byte	0x9f
	.uleb128 0x20
	.long	0x24c
	.byte	0x1
	.byte	0x68
	.uleb128 0x18
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x20
	.long	0x258
	.byte	0x1
	.byte	0x62
	.uleb128 0x21
	.long	0x263
	.long	.LLST5
	.uleb128 0x1b
	.long	0x223
	.long	.LBB46
	.long	.LBE46
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1c
	.long	0x1ff
	.long	.LBB48
	.long	.LBE48
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1d
	.long	0x20c
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1195
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF82
	.byte	0x3
	.byte	0x43
	.byte	0x1
	.byte	0x3
	.uleb128 0x23
	.byte	0x1
	.long	.LASF63
	.byte	0x4
	.byte	0xc2
	.byte	0x1
	.long	.LFB88
	.long	.LFE88
	.long	.LLST6
	.byte	0x1
	.long	0x547
	.uleb128 0x24
	.long	0x310
	.long	.LBB54
	.long	.LBE54
	.byte	0x4
	.byte	0xc9
	.long	0x52e
	.uleb128 0x25
	.long	0x31d
	.long	0x1c200
	.uleb128 0x26
	.long	0x328
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x4e8
	.long	.LBB56
	.long	.LBE56
	.byte	0x4
	.byte	0xca
	.uleb128 0x27
	.long	.LVL19
	.long	0xadc
	.byte	0
	.uleb128 0xe
	.long	.LASF50
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x3
	.long	0x578
	.uleb128 0x12
	.long	.LASF28
	.byte	0x1
	.byte	0x55
	.long	0x270
	.uleb128 0x14
	.uleb128 0x13
	.long	.LASF32
	.byte	0x1
	.byte	0x57
	.long	0x30
	.uleb128 0x13
	.long	.LASF33
	.byte	0x1
	.byte	0x57
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF51
	.byte	0x3
	.byte	0x49
	.byte	0x1
	.byte	0x3
	.long	0x591
	.uleb128 0x12
	.long	.LASF49
	.byte	0x3
	.byte	0x49
	.long	0x21e
	.byte	0
	.uleb128 0xe
	.long	.LASF52
	.byte	0x3
	.byte	0x4e
	.byte	0x1
	.byte	0x3
	.long	0x5aa
	.uleb128 0x12
	.long	.LASF49
	.byte	0x3
	.byte	0x4e
	.long	0x21e
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF83
	.byte	0x4
	.byte	0x5d
	.byte	0x1
	.long	0x42
	.long	.LFB87
	.long	.LFE87
	.long	.LLST7
	.byte	0x1
	.long	0x964
	.uleb128 0x19
	.long	.LASF53
	.byte	0x4
	.byte	0x5f
	.long	0xde
	.byte	0x2
	.byte	0x8c
	.sleb128 5
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0x60
	.long	0x617
	.uleb128 0x7
	.long	.LASF54
	.byte	0x4
	.byte	0x61
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF55
	.byte	0x4
	.byte	0x62
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.long	.LASF56
	.byte	0x4
	.byte	0x63
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.long	.LASF57
	.byte	0x4
	.byte	0x64
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x19
	.long	.LASF58
	.byte	0x4
	.byte	0x65
	.long	0x5d6
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x29
	.string	"ind"
	.byte	0x4
	.byte	0x66
	.long	0x42
	.long	.LLST8
	.uleb128 0x1a
	.long	.LASF59
	.byte	0x4
	.byte	0x68
	.long	0x42
	.long	.LLST9
	.uleb128 0x1a
	.long	.LASF60
	.byte	0x4
	.byte	0x69
	.long	0x42
	.long	.LLST10
	.uleb128 0x24
	.long	0x547
	.long	.LBB88
	.long	.LBE88
	.byte	0x4
	.byte	0x6d
	.long	0x6b6
	.uleb128 0x1d
	.long	0x554
	.byte	0x6
	.byte	0x3
	.long	USBtoUSART_Buffer
	.byte	0x9f
	.uleb128 0x18
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x21
	.long	0x560
	.long	.LLST11
	.uleb128 0x21
	.long	0x56b
	.long	.LLST12
	.uleb128 0x1b
	.long	0x223
	.long	.LBB90
	.long	.LBE90
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.long	0x1ff
	.long	.LBB92
	.long	.LBE92
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.long	0x20c
	.long	.LLST13
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x547
	.long	.LBB94
	.long	.LBE94
	.byte	0x4
	.byte	0x6e
	.long	0x71d
	.uleb128 0x1d
	.long	0x554
	.byte	0x6
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0x9f
	.uleb128 0x18
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x21
	.long	0x560
	.long	.LLST14
	.uleb128 0x21
	.long	0x56b
	.long	.LLST15
	.uleb128 0x1b
	.long	0x223
	.long	.LBB96
	.long	.LBE96
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.long	0x1ff
	.long	.LBB98
	.long	.LBE98
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	0x20c
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1758
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LBB100
	.long	.LBE100
	.long	0x94a
	.uleb128 0x1a
	.long	.LASF61
	.byte	0x4
	.byte	0x74
	.long	0x30
	.long	.LLST16
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0
	.long	0x7cb
	.uleb128 0x1a
	.long	.LASF62
	.byte	0x4
	.byte	0x95
	.long	0x30
	.long	.LLST17
	.uleb128 0x24
	.long	0x578
	.long	.LBB102
	.long	.LBE102
	.byte	0x4
	.byte	0xa2
	.long	0x76e
	.uleb128 0x2a
	.long	0x585
	.long	.LLST18
	.byte	0
	.uleb128 0x24
	.long	0x578
	.long	.LBB104
	.long	.LBE104
	.byte	0x4
	.byte	0xa9
	.long	0x78b
	.uleb128 0x2a
	.long	0x585
	.long	.LLST19
	.byte	0
	.uleb128 0x2d
	.long	.LVL46
	.long	0x479
	.long	0x7b2
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	USBtoUSART_Buffer+132
	.uleb128 0x2f
	.long	0x241
	.byte	0x5
	.byte	0x3
	.long	USBtoUSART_Buffer
	.byte	0
	.uleb128 0x30
	.long	.LVL50
	.long	0x33e
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	USBtoUSART_Buffer
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x578
	.long	.LBB106
	.long	.LBE106
	.byte	0x4
	.byte	0x88
	.long	0x7e8
	.uleb128 0x2a
	.long	0x585
	.long	.LLST20
	.byte	0
	.uleb128 0x24
	.long	0x591
	.long	.LBB108
	.long	.LBE108
	.byte	0x4
	.byte	0x90
	.long	0x805
	.uleb128 0x2a
	.long	0x59e
	.long	.LLST21
	.byte	0
	.uleb128 0x24
	.long	0x591
	.long	.LBB111
	.long	.LBE111
	.byte	0x4
	.byte	0xb3
	.long	0x822
	.uleb128 0x2a
	.long	0x59e
	.long	.LLST22
	.byte	0
	.uleb128 0x24
	.long	0x2f3
	.long	.LBB113
	.long	.LBE113
	.byte	0x4
	.byte	0xb8
	.long	0x85a
	.uleb128 0x1d
	.long	0x304
	.byte	0x6
	.byte	0x3
	.long	USBtoUSART_Buffer
	.byte	0x9f
	.uleb128 0x30
	.long	.LVL59
	.long	0x479
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	USBtoUSART_Buffer+132
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x27b
	.long	.LBB115
	.long	.LBE115
	.byte	0x4
	.byte	0xb9
	.long	0x877
	.uleb128 0x2a
	.long	0x288
	.long	.LLST23
	.byte	0
	.uleb128 0x2d
	.long	.LVL32
	.long	0x479
	.long	0x89e
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer+132
	.uleb128 0x2f
	.long	0x241
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0
	.uleb128 0x2d
	.long	.LVL35
	.long	0x3c5
	.long	0x8ba
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0
	.uleb128 0x2d
	.long	.LVL37
	.long	0xae7
	.long	0x8e1
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Keyboard_MIDI_Interface
	.uleb128 0x2e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.long	.LVL38
	.long	0xb14
	.long	0x8fd
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Keyboard_MIDI_Interface
	.byte	0
	.uleb128 0x2d
	.long	.LVL45
	.long	0xb2c
	.long	0x924
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Keyboard_MIDI_Interface
	.uleb128 0x2e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.long	.LVL60
	.long	0x3c5
	.long	0x940
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	USBtoUSART_Buffer
	.byte	0
	.uleb128 0x27
	.long	.LVL62
	.long	0xb54
	.byte	0
	.uleb128 0x27
	.long	.LVL21
	.long	0x4f1
	.uleb128 0x30
	.long	.LVL30
	.long	0x450
	.uleb128 0x2e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF64
	.byte	0x4
	.byte	0xdd
	.byte	0x1
	.long	.LFB89
	.long	.LFE89
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x98f
	.uleb128 0x32
	.long	.LVL63
	.byte	0x1
	.long	0x450
	.uleb128 0x2e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF65
	.byte	0x4
	.byte	0xe3
	.byte	0x1
	.long	.LFB90
	.long	.LFE90
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x9bb
	.uleb128 0x32
	.long	.LVL64
	.byte	0x1
	.long	0x450
	.uleb128 0x2e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF66
	.byte	0x4
	.byte	0xe9
	.byte	0x1
	.long	.LFB91
	.long	.LFE91
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xa16
	.uleb128 0x2d
	.long	.LVL65
	.long	0x450
	.long	0x9e8
	.uleb128 0x2e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.long	.LVL66
	.long	0xb5e
	.long	0xa04
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Keyboard_MIDI_Interface
	.byte	0
	.uleb128 0x32
	.long	.LVL67
	.byte	0x1
	.long	0x450
	.uleb128 0x2e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.long	.LASF84
	.byte	0x4
	.byte	0xf1
	.byte	0x1
	.long	.LFB92
	.long	.LFE92
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.long	.LASF67
	.byte	0x4
	.byte	0xf9
	.byte	0x1
	.long	.LFB93
	.long	.LFE93
	.long	.LLST24
	.byte	0x1
	.long	0xaa6
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x4
	.byte	0xfb
	.long	0x30
	.long	.LLST25
	.uleb128 0x24
	.long	0x2d6
	.long	.LBB119
	.long	.LBE119
	.byte	0x4
	.byte	0xfe
	.long	0xa8d
	.uleb128 0x1d
	.long	0x2e7
	.byte	0x6
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0x9f
	.uleb128 0x30
	.long	.LVL70
	.long	0x479
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer+132
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LVL71
	.long	0x33e
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF69
	.byte	0x4
	.byte	0x44
	.long	0x189
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Keyboard_MIDI_Interface
	.uleb128 0x34
	.long	.LASF70
	.byte	0x4
	.byte	0x53
	.long	0x1ed
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USBtoUSART_Buffer
	.uleb128 0x34
	.long	.LASF71
	.byte	0x4
	.byte	0x56
	.long	0x1ed
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.uleb128 0x35
	.byte	0x1
	.long	.LASF75
	.byte	0x9
	.word	0x123
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.long	.LASF72
	.byte	0x8
	.byte	0x7f
	.byte	0x1
	.long	0x30
	.byte	0x1
	.long	0xb04
	.uleb128 0x37
	.long	0x2b2
	.uleb128 0x37
	.long	0xb04
	.byte	0
	.uleb128 0x9
	.long	0xb09
	.uleb128 0xd
	.byte	0x2
	.long	0xb0f
	.uleb128 0x9
	.long	0xde
	.uleb128 0x36
	.byte	0x1
	.long	.LASF73
	.byte	0x8
	.byte	0x8a
	.byte	0x1
	.long	0x30
	.byte	0x1
	.long	0xb2c
	.uleb128 0x37
	.long	0x2b2
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.long	.LASF74
	.byte	0x8
	.byte	0x97
	.byte	0x1
	.long	0x154
	.byte	0x1
	.long	0xb49
	.uleb128 0x37
	.long	0x2b2
	.uleb128 0x37
	.long	0xb49
	.byte	0
	.uleb128 0x9
	.long	0xb4e
	.uleb128 0xd
	.byte	0x2
	.long	0xde
	.uleb128 0x38
	.byte	0x1
	.long	.LASF76
	.byte	0xa
	.byte	0xb2
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.byte	0x1
	.long	.LASF85
	.byte	0x8
	.byte	0x71
	.byte	0x1
	.long	0x154
	.byte	0x1
	.uleb128 0x37
	.long	0x2b2
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
	.uleb128 0x3
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
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x13
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL3
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LFE72
	.word	0x4
	.byte	0x8e
	.sleb128 -132
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL4
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL4
	.long	.LFE72
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL10
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LFE73
	.word	0x4
	.byte	0x8e
	.sleb128 -132
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL8
	.long	.LVL9
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL9
	.long	.LFE73
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL11
	.long	.LVL12
	.word	0x1
	.byte	0x68
	.long	.LVL12
	.long	.LVL13
	.word	0x4
	.byte	0x88
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL13
	.long	.LFE77
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL16
	.long	.LVL17
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL17
	.long	.LFE95
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LFB88
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
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8
	.long	.LFE88
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST7:
	.long	.LFB87
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI11
	.long	.LCFI12
	.word	0x2
	.byte	0x8c
	.sleb128 4
	.long	.LCFI12
	.long	.LFE87
	.word	0x2
	.byte	0x8c
	.sleb128 12
	.long	0
	.long	0
.LLST8:
	.long	.LVL48
	.long	.LVL49
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL20
	.long	.LVL31
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL31
	.long	.LVL33
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL39
	.long	.LVL40
	.word	0x4
	.byte	0xa
	.word	0x2710
	.byte	0x9f
	.long	.LVL40
	.long	.LFE87
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST10:
	.long	.LVL20
	.long	.LVL31
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL31
	.long	.LVL49
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL52
	.long	.LVL53
	.word	0x4
	.byte	0xa
	.word	0x2710
	.byte	0x9f
	.long	.LVL53
	.long	.LFE87
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST11:
	.long	.LVL22
	.long	.LVL26
	.word	0x1
	.byte	0x62
	.long	.LVL26
	.long	.LVL29
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST12:
	.long	.LVL23
	.long	.LVL24
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL24
	.long	.LFE87
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL24
	.long	.LVL28
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1658
	.sleb128 0
	.long	.LVL28
	.long	.LFE87
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1758
	.sleb128 0
	.long	0
	.long	0
.LLST14:
	.long	.LVL26
	.long	.LVL30-1
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST15:
	.long	.LVL27
	.long	.LVL28
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL28
	.long	.LFE87
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL32
	.long	.LVL34
	.word	0x1
	.byte	0x68
	.long	.LVL40
	.long	.LVL41
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST17:
	.long	.LVL46
	.long	.LVL47
	.word	0x1
	.byte	0x68
	.long	.LVL53
	.long	.LVL54
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST18:
	.long	.LVL51
	.long	.LVL53
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL53
	.long	.LVL54
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL38
	.long	.LVL40
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL43
	.long	.LVL44
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL57
	.long	.LVL58
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL60
	.long	.LVL61
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST24:
	.long	.LFB93
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI29
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 19
	.long	.LCFI30
	.long	.LFE93
	.word	0x2
	.byte	0x8c
	.sleb128 19
	.long	0
	.long	0
.LLST25:
	.long	.LVL69
	.long	.LVL70-1
	.word	0x1
	.byte	0x66
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
	.long	.LFB72
	.long	.LFE72-.LFB72
	.long	.LFB73
	.long	.LFE73-.LFB73
	.long	.LFB77
	.long	.LFE77-.LFB77
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	.LFB88
	.long	.LFE88-.LFB88
	.long	.LFB87
	.long	.LFE87-.LFB87
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
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB101
	.long	.LBE101
	.long	.LBB110
	.long	.LBE110
	.long	0
	.long	0
	.long	.LFB72
	.long	.LFE72
	.long	.LFB73
	.long	.LFE73
	.long	.LFB77
	.long	.LFE77
	.long	.LFB95
	.long	.LFE95
	.long	.LFB88
	.long	.LFE88
	.long	.LFB87
	.long	.LFE87
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF59:
	.string	"led1_ticks"
.LASF79:
	.string	"/home/tomas/Escritorio/ArduinoFirmwares/arduino-usb-master/firmwares/arduino-usbmidi"
.LASF67:
	.string	"__vector_23"
.LASF25:
	.string	"Config"
.LASF64:
	.string	"EVENT_USB_Device_Connect"
.LASF35:
	.string	"Serial_TxByte"
.LASF53:
	.string	"midiEvent"
.LASF71:
	.string	"USARTtoUSB_Buffer"
.LASF55:
	.string	"channel"
.LASF10:
	.string	"sizetype"
.LASF18:
	.string	"DataINEndpointNumber"
.LASF44:
	.string	"BaudRate"
.LASF73:
	.string	"MIDI_Device_Flush"
.LASF83:
	.string	"main"
.LASF51:
	.string	"LEDs_TurnOnLEDs"
.LASF2:
	.string	"uint8_t"
.LASF45:
	.string	"DoubleSpeed"
.LASF78:
	.string	"Arduino-usbmidi.c"
.LASF17:
	.string	"StreamingInterfaceNumber"
.LASF22:
	.string	"DataOUTEndpointSize"
.LASF37:
	.string	"MIDI_Device_USBTask"
.LASF42:
	.string	"RingBuffer_IsEmpty"
.LASF69:
	.string	"Keyboard_MIDI_Interface"
.LASF61:
	.string	"BufferCount"
.LASF32:
	.string	"sreg_save"
.LASF65:
	.string	"EVENT_USB_Device_Disconnect"
.LASF8:
	.string	"long long int"
.LASF19:
	.string	"DataINEndpointSize"
.LASF26:
	.string	"State"
.LASF5:
	.string	"long int"
.LASF36:
	.string	"DataByte"
.LASF58:
	.string	"midiMsg"
.LASF46:
	.string	"Data"
.LASF50:
	.string	"RingBuffer_InitBuffer"
.LASF43:
	.string	"Serial_Init"
.LASF74:
	.string	"MIDI_Device_ReceiveEventPacket"
.LASF1:
	.string	"unsigned char"
.LASF33:
	.string	"__ToDo"
.LASF0:
	.string	"signed char"
.LASF41:
	.string	"RingBuffer_IsFull"
.LASF9:
	.string	"long long unsigned int"
.LASF6:
	.string	"uint32_t"
.LASF60:
	.string	"led2_ticks"
.LASF4:
	.string	"unsigned int"
.LASF3:
	.string	"uint16_t"
.LASF34:
	.string	"__iRestore"
.LASF48:
	.string	"LEDs_SetAllLEDs"
.LASF29:
	.string	"Count"
.LASF40:
	.string	"RingBuffer_GetCount"
.LASF11:
	.string	"Command"
.LASF16:
	.string	"MIDI_EventPacket_t"
.LASF31:
	.string	"char"
.LASF20:
	.string	"DataINEndpointDoubleBank"
.LASF30:
	.string	"RingBuff_t"
.LASF82:
	.string	"LEDs_Init"
.LASF76:
	.string	"USB_USBTask"
.LASF24:
	.string	"_Bool"
.LASF13:
	.string	"Data1"
.LASF14:
	.string	"Data2"
.LASF15:
	.string	"Data3"
.LASF7:
	.string	"long unsigned int"
.LASF23:
	.string	"DataOUTEndpointDoubleBank"
.LASF21:
	.string	"DataOUTEndpointNumber"
.LASF38:
	.string	"MIDIInterfaceInfo"
.LASF27:
	.string	"USB_ClassInfo_MIDI_Device_t"
.LASF80:
	.string	"__iCliRetVal"
.LASF62:
	.string	"count"
.LASF72:
	.string	"MIDI_Device_SendEventPacket"
.LASF39:
	.string	"MIDI_Device_ProcessControlRequest"
.LASF85:
	.string	"MIDI_Device_ConfigureEndpoints"
.LASF70:
	.string	"USBtoUSART_Buffer"
.LASF12:
	.string	"CableNumber"
.LASF54:
	.string	"command"
.LASF81:
	.string	"RingBuffer_Remove"
.LASF47:
	.string	"RingBuffer_Insert"
.LASF56:
	.string	"data2"
.LASF57:
	.string	"data3"
.LASF77:
	.string	"GNU C 4.8.2 -mmcu=atmega8u2 -gdwarf-2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fno-inline-small-functions -fpack-struct -fshort-enums -fno-strict-aliasing"
.LASF66:
	.string	"EVENT_USB_Device_ConfigurationChanged"
.LASF28:
	.string	"Buffer"
.LASF63:
	.string	"SetupHardware"
.LASF75:
	.string	"USB_Init"
.LASF84:
	.string	"EVENT_USB_Device_UnhandledControlRequest"
.LASF49:
	.string	"LEDMask"
.LASF52:
	.string	"LEDs_TurnOffLEDs"
.LASF68:
	.string	"ReceivedByte"
	.ident	"GCC: (GNU) 4.8.2"
.global __do_copy_data
.global __do_clear_bss
