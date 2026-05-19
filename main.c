#include <stdint.h>

// --- Регистры STC8G ---
__sfr __at (0x80) P0; __sfr __at (0x90) P1; __sfr __at (0x93) P1M1; __sfr __at (0x94) P1M0;
__sfr __at (0xA0) P2; __sfr __at (0xB0) P3; __sfr __at (0xB1) P3M1; __sfr __at (0xB2) P3M0;
__sfr __at (0xC0) P4; __sfr __at (0xC8) P5; __sfr __at (0xC9) P5M1; __sfr __at (0xCA) P5M0;
__sfr __at (0x8E) P_SW2; __sfr __at (0x9D) CLKSEL;

// Регистрация Таймера 0 и прерываний
__sfr __at (0x89) TMOD; __sfr __at (0x88) TCON; __sfr __at (0x8A) TL0; __sfr __at (0x8C) TH0; __sfr __at (0x8E) AUXR;
__sfr __at (0xA8) IE;   // Регистр разрешений прерываний
__sbit __at (0x8C) TR0; __sbit __at (0x8D) TF0;
__sbit __at (0xAF) EA;  // Глобальные прерывания
__sbit __at (0xA9) ET0; // Прерывание Таймера 0

// Измерительные пины
__sbit __at (0xB1) PIN_R1_10K; // P3.1 — Заряд через 10 кОм
__sbit __at (0xB0) PIN_BUTTON; // P3.0 — Кнопка Сон / Включение

#define MASK_DET_55  (1 << 5) // P5.5 — Измерительный вход уровня

// Глобальный счетчик кругов таймера
volatile uint16_t timer0_overflows = 0;



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

// --- АППАРАТНОЕ ПРЕРЫВАНИЕ ТАЙМЕРА 0 ---
// Вызывается автоматически каждые 65536 тиков, исключая любые пропуски
void Timer0_ISR(void) __interrupt (1) {
    timer0_overflows++;
}

// --- Функция одиночного измерения ---
uint32_t Measure_Single(void) {
    uint32_t total_ticks = 0;
    uint8_t stable_counter = 0;

    // Сброс счетчиков перед началом заряда
    TH0 = 0x00;
    TL0 = 0x00;
    TF0 = 0;
    timer0_overflows = 0;

    // Включаем прерывание Таймера 0
    ET0 = 1;

    // Переводим пин 10кОм в режим push-pull И подаем логическую 1 для начала заряда
    P3M1 &= ~0x02; P3M0 |= 0x02;
    PIN_R1_10K = 1;

    TR0 = 1; // Стартуем Таймер 0

    // --- Высокоскоростной опрос уровня с программным дебаунсом ---
    while (1) {
        if (P5 & MASK_DET_55) {
            stable_counter++;
            if (stable_counter > 10) {
                break; // Успешно зарядился
            }
        } else {
            stable_counter = 0;
        }

        // Аварийный таймаут защиты от зависания (~10 секунд)
        if (timer0_overflows > 1700) {
            break;
        }
    }
    TR0 = 0;  // Стоп Таймер 0
    ET0 = 0;  // Выключаем прерывание таймера, чтобы не мешало основной программе

    // Точный сбор данных: (круги * 65536) + остаток в регистрах
    total_ticks = ((uint32_t)timer0_overflows << 16) | ((uint16_t)TH0 << 8) | TL0;

    return total_ticks;
}

// --- Основной цикл программы ---
void main(void) {
    uint32_t raw_ticks;
    uint32_t final_calc;
    uint32_t last_display_val = 0;
    uint32_t filtered_ticks = 0;
    uint8_t mode_uf;
    uint8_t is_first_run = 1;
    uint8_t is_sleeping = 0;
    volatile uint16_t discharge;

    // Настраиваем пин P5.5 как цифровой вход с высоким импедансом (Hi-Z)
    P5M1 |= MASK_DET_55; P5M0 &= ~MASK_DET_55;

    // Настройка кнопки P3.0 на вход
    P3M1 |= (1 << 0); P3M0 &= ~(1 << 0);

    // Настройка Таймера 0 на максимальную скорость 1T в режиме 16-бит
    P_SW2 = 0x80; CLKSEL = 0x00; P_SW2 = 0x00;
    AUXR |= 0x80;
    TMOD &= 0xF0; // Режим 0 (16-битный таймер)
    TR0 = 0; TF0 = 0;

    // Разрешаем глобальные прерывания
    EA = 1;

    SCL_HIGH(); SDA_HIGH(); Delay_ms(100);
    SSD1306_Init();
    SSD1306_Clear();

    while(1) {
        // --- ОБРАБОТКА КНОПКИ СНА (Теперь работает мгновенно!) ---
        if (PIN_BUTTON == 0) {
            Delay_ms(40);
            if (PIN_BUTTON == 0) {
                while(PIN_BUTTON == 0) { Delay_ms(10); }
                Delay_ms(50);

                if (is_sleeping == 0) {
                    is_sleeping = 1;
                    SSD1306_Command(0xAE); // Выключить экран
                } else {
                    is_sleeping = 0;
                    SSD1306_Command(0xAF); // Включить экран
                    last_display_val = 0;
                    is_first_run = 1;
                }
            }
        }

        if (is_sleeping == 1) {
            // Если прибор в спячке, принудительно держим разряд и спим короткие интервалы
            P3M1 &= ~0x02; P3M0 |= 0x02; PIN_R1_10K = 0;
            Delay_ms(100);
            continue;
        }

        // --- ИЗМЕРИТЕЛЬНЫЙ БЛОК ---
        raw_ticks = Measure_Single(); // Делаем чистый замер времени заряда

        // Плавный фильтр скользящего среднего
        if (is_first_run || filtered_ticks < 100) {
            filtered_ticks = raw_ticks;
            is_first_run = 0;
        } else {
            filtered_ticks = ((filtered_ticks >> 1) + (filtered_ticks >> 2)) + (raw_ticks >> 2);
        }

          if (filtered_ticks > 43000) {
            mode_uf = 1; // Режим "мкФ"

            // --- ЕДИНАЯ ЛИНЕЙНАЯ МАТЕМАТИКА ДЛЯ ВСЕХ МКФ ---
            // Коэффициент 23 идеально подошел для 10 мкФ.
            // Чтобы он так же точно считал и 100 мкФ, мы просто делим на 100000.
            final_calc = (filtered_ticks * 23) / 100000;

            if (final_calc == 0) final_calc = 1;

            if (final_calc > last_display_val) {
                if ((final_calc - last_display_val) < 1) final_calc = last_display_val;
            } else {
                if ((last_display_val - final_calc) < 1) final_calc = last_display_val;
            }
        }
        else {
            mode_uf = 0; // Режим "нФ"
            is_first_run = 1;

            // Математика для нанофарад (оставляем проверенный вами точный коэффициент)
            final_calc = (filtered_ticks * 23) / 100;

            if (final_calc > last_display_val) {
                if ((final_calc - last_display_val) < 2) final_calc = last_display_val;
            } else {
                if ((last_display_val - final_calc) < 2) final_calc = last_display_val;
            }
        }

        // Обновление дисплея
        if (final_calc != last_display_val) {
            SSD1306_DisplayResult(3, 16, final_calc, mode_uf);
            last_display_val = final_calc;
        }

        // --- ЭТАП РАЗРЯДА И ПАУЗЫ (Перенесен сюда!) ---
        // Переводим пин в режим разряда на GND
        P3M1 &= ~0x02; P3M0 |= 0x02; PIN_R1_10K = 0;

        // Пока прибор ждет 300 мс перед следующим замером, конденсатор глубоко разряжается.
        // Мы разбиваем паузу на мелкие части, чтобы кнопка реагировала плавно.
        for(discharge = 0; discharge < 30; discharge++) {
            Delay_ms(10);
            if (PIN_BUTTON == 0) break; // Если во время паузы нажали кнопку — мгновенно прерываем её
        }
    }
}
