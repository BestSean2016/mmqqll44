#include "Datetime.h"

namespace MQL4 {

datetime TimeCurrent()
{
    return time(0);
}

datetime TimeCurrent( MqlDateTime& dt_struct )
{
    time_t t = time(0);
    struct tm* lt = localtime(&t);
    dt_struct.day = lt->tm_mday,
        dt_struct.day_of_week = lt->tm_wday,
        dt_struct.day_of_year = lt->tm_yday,
        dt_struct.hour = lt->tm_hour,
        dt_struct.min = lt->tm_min,
        dt_struct.mon = lt->tm_mon + 1,
        dt_struct.sec = lt->tm_sec,
        dt_struct.year = lt->tm_year + 1900;

    return t;
}

} //namespace MQL4
