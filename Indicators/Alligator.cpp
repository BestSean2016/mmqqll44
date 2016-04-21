//+------------------------------------------------------------------+
//|                                                    Alligator.mq4 |
//|                   Copyright 2005-2014, MetaQuotes Software Corp. |
//|                                              http://www.mql4.com |
//+------------------------------------------------------------------+
#define copyright   "2005-2014, MetaQuotes Software Corp."
#define link        "http://www.mql4.com"
#define description "Bill Williams' Aligator"
#define strict

//---- indicator settings
#define indicator_chart_window
#define indicator_buffers 3
#define indicator_color1  Blue
#define indicator_color2  Red
#define indicator_color3  Lime
//---- input parameters
static int InpJawsPeriod=13; // Jaws Period
static int InpJawsShift=8;   // Jaws Shift
static int InpTeethPeriod=8; // Teeth Period
static int InpTeethShift=5;  // Teeth Shift
static int InpLipsPeriod=5;  // Lips Period
static int InpLipsShift=3;   // Lips Shift
//---- indicator buffers
double ExtBlueBuffer[];
double ExtRedBuffer[];
double ExtLimeBuffer[];
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
void OnInit(void)
  {
   IndicatorDigits(Digits);
//---- line shifts when drawing
   SetIndexShift(0,InpJawsShift);
   SetIndexShift(1,InpTeethShift);
   SetIndexShift(2,InpLipsShift);
//---- first positions skipped when drawing
   SetIndexDrawBegin(0,InpJawsShift+InpJawsPeriod);
   SetIndexDrawBegin(1,InpTeethShift+InpTeethPeriod);
   SetIndexDrawBegin(2,InpLipsShift+InpLipsPeriod);
//---- 3 indicator buffers mapping
   SetIndexBuffer(0,ExtBlueBuffer);
   SetIndexBuffer(1,ExtRedBuffer);
   SetIndexBuffer(2,ExtLimeBuffer);
//---- drawing settings
   SetIndexStyle(0,DRAW_LINE);
   SetIndexStyle(1,DRAW_LINE);
   SetIndexStyle(2,DRAW_LINE);
//---- index labels
   SetIndexLabel(0,"Gator Jaws");
   SetIndexLabel(1,"Gator Teeth");
   SetIndexLabel(2,"Gator Lips");
  }
//+------------------------------------------------------------------+
//| Bill Williams' Alligator                                         |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
  {
   int limit=rates_total-prev_calculated;
//---- main loop
   for(int i=0; i<limit; i++)
     {
      //---- ma_shift set to 0 because SetIndexShift called abowe
      ExtBlueBuffer[i]=iMA(NULL,0,InpJawsPeriod,0,MODE_SMMA,PRICE_MEDIAN,i);
      ExtRedBuffer[i]=iMA(NULL,0,InpTeethPeriod,0,MODE_SMMA,PRICE_MEDIAN,i);
      ExtLimeBuffer[i]=iMA(NULL,0,InpLipsPeriod,0,MODE_SMMA,PRICE_MEDIAN,i);
     }
//---- done
   return(rates_total);
  }
//+------------------------------------------------------------------+
