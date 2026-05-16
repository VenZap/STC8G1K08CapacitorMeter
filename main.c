#include <stdint.h>

// --- Регистры STC8G ---
__sfr __at (0x80) P0; __sfr __at (0x90) P1; __sfr __at (0x93) P1M1; __sfr __at (0x94) P1M0;
__sfr __at (0xA0) P2; __sfr __at (0xB0) P3; __sfr __at (0xB1) P3M1; __sfr __at (0xB2) P3M0;
__sfr __at (0xC0) P4; __sfr __at (0xC8) P5; __sfr __at (0xC9) P5M1; __sfr __at (0xCA) P5M0;
__sfr __at (0x8E) P_SW2; __sfr __at (0x9D) CLKSEL;

// Таймер 0
__sfr __at (0x89) TMOD; __sfr __at (0x88) TCON; __sfr __at (0x8A) TL0; __sfr __at (0x8C) TH0; __sfr __at (0x8E) AUXR;
__sbit __at (0x8C) TR0; __sbit __at (0x8D) TF0;

// Измерительные пины
__sbit __at (0xB1) PIN_R1_10K; // P3.1 — Точный заряд 10 кОм
__sbit __at (0xC4) PIN_R3_1K;  // P5.4 — Быстрый заряд 1 кОм
__sbit __at (0xB0) PIN_BUTTON; // P3.0 — Кнопка Сон / Пробуждение

#define MASK_R3_1K   (1 << 4)
#define MASK_DET_55  (1 << 5) // Вход компаратора P5.5

#define SCL_BIT   2
#define SDA_BIT   3
#define SSD1306_ADDR 0x78

// --- Шрифт 8x8 ---
const __code unsigned char Font_8x8[42][8] = {
    {0x3E, 0x51, 0x49, 0x45, 0x3E, 0x00, 0x00, 0x00}, // 0
    {0x00, 0x42, 0x7F, 0x40, 0x00, 0x00, 0x00, 0x00}, // 1
    {0x42, 0x61, 0x51, 0x49, 0x46, 0x00, 0x00, 0x00}, // 2
    {0x21, 0x41, 0x45, 0x4B, 0x31, 0x00, 0x00, 0x00}, // 3
    {0x18, 0x14, 0x12, 0x7F, 0x10, 0x00, 0x00, 0x00}, // 4
    {0x27, 0x45, 0x45, 0x45, 0x39, 0x00, 0x00, 0x00}, // 5
    {0x3C, 0x4A, 0x49, 0x49, 0x30, 0x00, 0x00, 0x00}, // 6
    {0x01, 0x71, 0x09, 0x05, 0x03, 0x00, 0x00, 0x00}, // 7
    {0x36, 0x49, 0x49, 0x49, 0x36, 0x00, 0x00, 0x00}, // 8
    {0x06, 0x49, 0x49, 0x29, 0x1E, 0x00, 0x00, 0x00}, // 9
    {0x08, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00, 0x00}, // -
    {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}, // [space]
    {0x00, 0x60, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00}, // .
    {0x00, 0x36, 0x36, 0x00, 0x00, 0x00, 0x00, 0x00}, // :
    {0x06, 0x09, 0x09, 0x06, 0x00, 0x00, 0x00, 0x00}, // °
    {0x14, 0x14, 0x14, 0x14, 0x14, 0x00, 0x00, 0x00}, // =
    {0x7E, 0x11, 0x11, 0x11, 0x7E, 0x00, 0x00, 0x00}, // A
    {0x7F, 0x49, 0x49, 0x49, 0x36, 0x00, 0x00, 0x00}, // B
    {0x3E, 0x41, 0x41, 0x41, 0x22, 0x00, 0x00, 0x00}, // C
    {0x7F, 0x41, 0x41, 0x22, 0x1C, 0x00, 0x00, 0x00}, // D
    {0x7F, 0x49, 0x49, 0x49, 0x41, 0x00, 0x00, 0x00}, // E
    {0x7F, 0x09, 0x09, 0x01, 0x01, 0x00, 0x00, 0x00}, // F
    {0x3E, 0x41, 0x49, 0x49, 0x7A, 0x00, 0x00, 0x00}, // G
    {0x7F, 0x08, 0x08, 0x08, 0x7F, 0x00, 0x00, 0x00}, // H
    {0x00, 0x41, 0x7F, 0x41, 0x00, 0x00, 0x00, 0x00}, // I
    {0x20, 0x40, 0x41, 0x3F, 0x01, 0x00, 0x00, 0x00}, // J
    {0x7F, 0x08, 0x14, 0x22, 0x41, 0x00, 0x00, 0x00}, // K
    {0x7F, 0x40, 0x40, 0x40, 0x40, 0x00, 0x00, 0x00}, // L
    {0x7F, 0x02, 0x0C, 0x02, 0x7F, 0x00, 0x00, 0x00}, // M
    {0x7F, 0x04, 0x08, 0x10, 0x7F, 0x00, 0x00, 0x00}, // N
    {0x3E, 0x41, 0x41, 0x41, 0x3E, 0x00, 0x00, 0x00}, // O
    {0x7F, 0x09, 0x09, 0x09, 0x06, 0x00, 0x00, 0x00}, // P
    {0x3E, 0x41, 0x51, 0x21, 0x5E, 0x00, 0x00, 0x00}, // Q
    {0x7F, 0x09, 0x19, 0x29, 0x46, 0x00, 0x00, 0x00}, // R
    {0x46, 0x49, 0x49, 0x49, 0x31, 0x00, 0x00, 0x00}, // S
    {0x01, 0x01, 0x7F, 0x01, 0x01, 0x00, 0x00, 0x00}, // T
    {0x3F, 0x40, 0x40, 0x40, 0x3F, 0x00, 0x00, 0x00}, // U
    {0x1F, 0x20, 0x40, 0x20, 0x1F, 0x00, 0x00, 0x00}, // V
    {0x7F, 0x20, 0x18, 0x20, 0x7F, 0x00, 0x00, 0x00}, // W
    {0x63, 0x14, 0x08, 0x14, 0x63, 0x00, 0x00, 0x00}, // X
    {0x07, 0x08, 0x70, 0x08, 0x07, 0x00, 0x00, 0x00}, // Y
    {0x61, 0x51, 0x49, 0x45, 0x43, 0x00, 0x00, 0x00}  // Z
};

// --- Функции задержек ---
void Delay_ms(unsigned int ms) { volatile unsigned int i; while(ms--) { i = 600; while(i--); } }
void I2C_Delay(void) { volatile unsigned char i = 25; while(i--); }

// --- Управление линиями дисплея ---
void SCL_HIGH(void) { P3M1 &= ~(1 << SCL_BIT); P3M0 &= ~(1 << SCL_BIT); P3 |= (1 << SCL_BIT); }
void SCL_LOW(void)  { P3M1 |= (1 << SCL_BIT);  P3M0 |= (1 << SCL_BIT);  P3 &= ~(1 << SCL_BIT); }
void SDA_HIGH(void) { P3M1 &= ~(1 << SDA_BIT); P3M0 &= ~(1 << SDA_BIT); P3 |= (1 << SDA_BIT); }
void SDA_LOW(void)  { P3M1 |= (1 << SDA_BIT);  P3M0 |= (1 << SDA_BIT);  P3 &= ~(1 << SDA_BIT); }

// --- Протокол I2C ---
void I2C_Start(void) { SDA_HIGH(); SCL_HIGH(); I2C_Delay(); SDA_LOW(); I2C_Delay(); SCL_LOW(); I2C_Delay(); }
void I2C_Stop(void)  { SDA_LOW(); SCL_HIGH(); I2C_Delay(); SDA_HIGH(); I2C_Delay(); }

void I2C_Write_Byte(unsigned char dat) {
    unsigned char i;
    for(i = 0; i < 8; i++) {
        if(dat & 0x80) { SDA_HIGH(); } else { SDA_LOW(); }
        I2C_Delay(); SCL_HIGH(); I2C_Delay(); SCL_LOW();
        dat <<= 1;
    }
    SDA_HIGH(); I2C_Delay(); SCL_HIGH(); I2C_Delay(); SCL_LOW(); I2C_Delay();
}

void SSD1306_Command(unsigned char cmd) { I2C_Start(); I2C_Write_Byte(SSD1306_ADDR); I2C_Write_Byte(0x00); I2C_Write_Byte(cmd); I2C_Stop(); }

void SSD1306_Init(void) {
    Delay_ms(250);
    SSD1306_Command(0xAE); SSD1306_Command(0x20); SSD1306_Command(0x02);
    SSD1306_Command(0xB0); SSD1306_Command(0x00); SSD1306_Command(0x10);
    SSD1306_Command(0x40); SSD1306_Command(0x81); SSD1306_Command(0x7F);
    SSD1306_Command(0xA1); SSD1306_Command(0xC8); SSD1306_Command(0xA6);
    SSD1306_Command(0xA8); SSD1306_Command(0x3F); SSD1306_Command(0xD3); SSD1306_Command(0x00);
    SSD1306_Command(0xD5); SSD1306_Command(0x80); SSD1306_Command(0xD9); SSD1306_Command(0x22);
    SSD1306_Command(0xDA); SSD1306_Command(0x12); SSD1306_Command(0xDB); SSD1306_Command(0x20);
    SSD1306_Command(0x8D); SSD1306_Command(0x14); SSD1306_Command(0xA4); SSD1306_Command(0xAF);
    Delay_ms(150);
}

void SSD1306_Clear(void) {
    uint8_t m, n;
    for(m = 0; m < 8; m++) {
        SSD1306_Command(0xB0 + m); SSD1306_Command(0x00); SSD1306_Command(0x10);
        I2C_Start(); I2C_Write_Byte(SSD1306_ADDR); I2C_Write_Byte(0x40);
        for(n = 0; n < 128; n++) { I2C_Write_Byte(0x00); }
        I2C_Stop();
    }
}

void SSD1306_SetCursor(uint8_t page, uint8_t x) {
    SSD1306_Command(0xB0 + page);
    SSD1306_Command(((x & 0xF0) >> 4) | 0x10);
    SSD1306_Command(x & 0x0F);
}

void SSD1306_WriteChar(uint8_t page, uint8_t x, unsigned char c) {
    uint8_t i, idx;
    if (c >= '0' && c <= '9') idx = c - '0';
    else if (c == '-') idx = 10;
    else if (c == ' ') idx = 11;
    else if (c == '.') idx = 12;
    else if (c == ':') idx = 13;
    else if (c == '*') idx = 14;
    else if (c == '=') idx = 15;
    else if (c >= 'A' && c <= 'Z') { idx = c - 'A' + 16; }
    else if (c >= 'a' && c <= 'z') { idx = c - 'a' + 16; }
    else idx = 11;

    SSD1306_SetCursor(page, x);
    I2C_Start(); I2C_Write_Byte(SSD1306_ADDR); I2C_Write_Byte(0x40);
    for(i = 0; i < 8; i++) { I2C_Write_Byte(Font_8x8[idx][i]); }
    I2C_Stop();
}

void SSD1306_PrintString(uint8_t page, uint8_t x, char *str) {
    while (*str) { SSD1306_WriteChar(page, x, (unsigned char)*str); x += 8; str++; }
}

void SSD1306_DisplayResult(uint8_t page, uint8_t x, uint32_t val, uint8_t is_microfarads) {
    SSD1306_PrintString(page, x, "CX: ");
    x += 32;

    if (!is_microfarads) {
        if (val <= 139) {
            SSD1306_PrintString(page, x, "  0.0 NF");
            return;
        }
        val -= 139;

        SSD1306_WriteChar(page, x, ((val / 1000) % 10) + '0'); x += 8;
        SSD1306_WriteChar(page, x, ((val / 100) % 10) + '0');  x += 8;
        SSD1306_WriteChar(page, x, ((val / 10) % 10) + '0');   x += 8;
        SSD1306_WriteChar(page, x, '.');                       x += 8;
        SSD1306_WriteChar(page, x, (val % 10) + '0');          x += 8;
        SSD1306_PrintString(page, x, " NF");
    }
    else {
        SSD1306_WriteChar(page, x, ((val / 1000) % 10) + '0'); x += 8;
        SSD1306_WriteChar(page, x, ((val / 100) % 10) + '0');  x += 8;
        SSD1306_WriteChar(page, x, ((val / 10) % 10) + '0');   x += 8;
        SSD1306_WriteChar(page, x, '.');                       x += 8;
        SSD1306_WriteChar(page, x, (val % 10) + '0');          x += 8;
        SSD1306_PrintString(page, x, " UF");
    }
}

uint32_t Measure_Single(uint8_t use_1k) {
    uint32_t cycles = 0;
    uint32_t max_limit = use_1k ? 80000000 : 3000000;
    volatile uint16_t discharge;

    P3M1 &= ~0x02; P3M0 |= 0x02; PIN_R1_10K = 0;
    P5M1 &= ~MASK_R3_1K; P5M0 |= MASK_R3_1K; PIN_R3_1K = 0;

    for(discharge = 0; discharge < 30000; discharge++) { __asm__("nop"); }

    TH0 = 0x00; TL0 = 0x00; TF0 = 0;

    if (use_1k) {
        P3M1 |= 0x02; P3M0 &= ~0x02;
        P5M1 &= ~MASK_R3_1K; P5M0 |= MASK_R3_1K; PIN_R3_1K = 1;
    } else {
        P5M1 |= MASK_R3_1K; P5M0 &= ~MASK_R3_1K;
        P3M1 &= ~0x02; P3M0 |= 0x02; PIN_R1_10K = 1;
    }

    TR0 = 1;
    while (!(P5 & MASK_DET_55)) {
        if (TF0) {
            TF0 = 0;
            cycles += 65536;
            if (cycles > max_limit) break;
        }
    }
    TR0 = 0;
    cycles += ((uint16_t)TH0 << 8) | TL0;

    PIN_R1_10K = 0;
    PIN_R3_1K = 0;

    return cycles;
}

// --- Основной цикл ---
void main(void) {
    uint32_t raw_ticks;
    uint32_t final_calc;
    uint32_t last_display_val = 0;
    float filtered_ticks = 0.0f;
    uint8_t mode_uf;
    uint8_t is_first_run = 1;
    uint8_t is_sleeping = 0; //программный флаг сна

    // Компаратор P5.5 на вход
    P5M1 |= MASK_DET_55; P5M0 &= ~MASK_DET_55;

    // Кнопка P3.0 на вход с подтяжкой
    P3M1 |= (1 << 0); P3M0 &= ~(1 << 0);

    P_SW2 = 0x80; CLKSEL = 0x00; P_SW2 = 0x00;
    AUXR |= 0x80; TMOD &= 0xF0; TR0 = 0; TF0 = 0;

    SCL_HIGH(); SDA_HIGH(); Delay_ms(100);
    SSD1306_Init();
    SSD1306_Clear();

    while(1) {
        // --- ПРОГРАММНЫЙ ХОД В СОН И ВЫХОД ИЗ НЕГО ---
        if (PIN_BUTTON == 0) {
            Delay_ms(50); // Надежный антидребезг нажатия
            if (PIN_BUTTON == 0) {

                // Ждем, пока кнопку полностью отпустят
                while(PIN_BUTTON == 0) {
                    Delay_ms(10);
                }
                Delay_ms(100); // Антидребезг на размыкание контактов

                // Меняем состояние: если спал — проснись, если работал — усни
                if (is_sleeping == 0) {
                    is_sleeping = 1;
                    SSD1306_Command(0xAE); // Просто выключаем экран
                } else {
                    is_sleeping = 0;
                    SSD1306_Command(0xAF); // Просто включаем экран
                    last_display_val = 0;  // Сброс, чтобы сразу обновить экран актуальным замером
                    is_first_run = 1;
                }
            }
        }

        // Если прибор в "программном сне" — пропускаем всю логику замеров и вывода
        if (is_sleeping == 1) {
            Delay_ms(100);
            continue; // Прыгаем обратно в начало while(1) только опрашивать кнопку
        }

        // --- ДАЛЕЕ ИДЕТ СТАНДАРТНАЯ РАБОТА ИЗМЕРИТЕЛЯ ---
        mode_uf = 0;
        raw_ticks = Measure_Single(0);

        if (raw_ticks > 55000) {
            mode_uf = 1;
            raw_ticks = Measure_Single(1);

            if (is_first_run || filtered_ticks < 1000.0f) {
                filtered_ticks = (float)raw_ticks;
                is_first_run = 0;
            } else {
                filtered_ticks = filtered_ticks + 0.25f * ((float)raw_ticks - filtered_ticks);
            }

            // --- ТОЧЕЧНАЯ КОРРЕКЦИЯ КОЭФФИЦИЕНТОВ  ---
            if (filtered_ticks < 650000.0f) {
                final_calc = (uint32_t)(filtered_ticks * 0.0000059f); // Скорректировано под 10 мкФ
            }
            else if (filtered_ticks >= 650000.0f && filtered_ticks < 2000000.0f) {
                final_calc = (uint32_t)(filtered_ticks * 0.0001996f);
            }
            else {
                final_calc = (uint32_t)(filtered_ticks * 0.0003050f);
            }

            if (final_calc == 0) final_calc = 1;

            if (final_calc > last_display_val) {
                if ((final_calc - last_display_val) < 2) final_calc = last_display_val;
            } else {
                if ((last_display_val - final_calc) < 2) final_calc = last_display_val;
            }
        }
        else {
            mode_uf = 0;
            is_first_run = 1;

            final_calc = (uint32_t)((float)raw_ticks * 0.18823f);

            if (final_calc > last_display_val) {
                if ((final_calc - last_display_val) < 12) final_calc = last_display_val;
            } else {
                if ((last_display_val - final_calc) < 12) final_calc = last_display_val;
            }
        }

        if (final_calc != last_display_val) {
            SSD1306_DisplayResult(3, 16, final_calc, mode_uf);
            last_display_val = final_calc;
        }

        Delay_ms(300);
    }
}
