TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

INCLUDEPATH += /home/sean/projects/quants/MQL4/Include
INCLUDEPATH += /home/sean/projects/quants/MQL4/Include/Arrays
INCLUDEPATH += /home/sean/projects/quants/MQL4/Include/Canvas
INCLUDEPATH += /home/sean/projects/quants/MQL4/Include/ChartObjects
INCLUDEPATH += /home/sean/projects/quants/MQL4/Include/Charts
INCLUDEPATH += /home/sean/projects/quants/MQL4/Include/Controls
INCLUDEPATH += /home/sean/projects/quants/MQL4/Include/Controls/res
INCLUDEPATH += /home/sean/projects/quants/MQL4/Include/Files
INCLUDEPATH += /home/sean/projects/quants/MQL4/Include/Indicators
INCLUDEPATH += /home/sean/projects/quants/MQL4/Include/Strings
INCLUDEPATH += /home/sean/projects/quants/MQL4/Include/Tools

SOURCES += main.cpp \
    ../Experts/First_Stratege.cpp \
    ../Experts/MACD_Sample.cpp \
    ../Experts/Moving_Average.cpp \
    ../Indicators/Examples/SimplePanel/SimplePanel.cpp \
    ../Indicators/Accelerator.cpp \
    ../Indicators/Accumulation.cpp \
    ../Indicators/Alligator.cpp \
    ../Indicators/ATR.cpp \
    ../Indicators/Awesome.cpp \
    ../Indicators/Bands.cpp \
    ../Indicators/Bears.cpp \
    ../Indicators/Bulls.cpp \
    ../Indicators/CCI.cpp \
    ../Indicators/Custom Moving Averages.cpp \
    ../Indicators/Heiken Ashi.cpp \
    ../Indicators/Ichimoku.cpp \
    ../Indicators/iExposure.cpp \
    ../Indicators/MACD.cpp \
    ../Indicators/Momentu.cpp \
    ../Indicators/OsMA.cpp \
    ../Indicators/Parabolic.cpp \
    ../Indicators/RSI.cpp \
    ../Indicators/Stochastic.cpp \
    ../Indicators/ZigZag.cpp \
    ../Scripts/Examples/DLL/DLLSample.cpp \
    ../Scripts/Examples/DLL/DLLSampleTester.cpp \
    ../Scripts/Examples/Pipes/PipeClient.cpp \
    ../Scripts/Examples/Pipes/PipeClientPure.cpp \
    ../Scripts/PeriodConverter.cpp \
    ../Libraries/stdlib-mql4.cpp \
    ../Libraries/Math.cpp \
    ../Libraries/Conversion.cpp \
    ../Libraries/string-ops.cpp \
    ../Libraries/Trading.cpp \
    ../Libraries/Checkup.cpp \
    ../Libraries/AccountInfo.cpp \
    ../Libraries/Datetime.cpp \
    ../Libraries/TimeSeries.cpp

HEADERS += \
    ../Include/Arrays/Array.h \
    ../Include/Arrays/ArrayChar.h \
    ../Include/Arrays/ArrayDouble.h \
    ../Include/Arrays/ArrayFloat.h \
    ../Include/Arrays/ArrayInt.h \
    ../Include/Arrays/ArrayLong.h \
    ../Include/Arrays/ArrayObj.h \
    ../Include/Arrays/ArrayShort.h \
    ../Include/Arrays/ArrayString.h \
    ../Include/Arrays/List.h \
    ../Include/Arrays/Tree.h \
    ../Include/Arrays/TreeNode.h \
    ../Include/Canvas/Canvas.h \
    ../Include/ChartObjects/ChartObject.h \
    ../Include/ChartObjects/ChartObjectPanel.h \
    ../Include/ChartObjects/ChartObjectsArrows.h \
    ../Include/ChartObjects/ChartObjectsBmpControls.h \
    ../Include/ChartObjects/ChartObjectsChannels.h \
    ../Include/ChartObjects/ChartObjectsFibo.h \
    ../Include/ChartObjects/ChartObjectsGann.h \
    ../Include/ChartObjects/ChartObjectsLines.h \
    ../Include/ChartObjects/ChartObjectsShapes.h \
    ../Include/ChartObjects/ChartObjectsTxtControls.h \
    ../Include/Charts/Chart.h \
    ../Include/Controls/BmpButton.h \
    ../Include/Controls/Button.h \
    ../Include/Controls/CheckBox.h \
    ../Include/Controls/CheckGroup.h \
    ../Include/Controls/ComboBox.h \
    ../Include/Controls/DateDropList.h \
    ../Include/Controls/DatePicker.h \
    ../Include/Controls/Defines.h \
    ../Include/Controls/Dialog.h \
    ../Include/Controls/Edit.h \
    ../Include/Controls/Label.h \
    ../Include/Controls/ListView.h \
    ../Include/Controls/Panel.h \
    ../Include/Controls/Picture.h \
    ../Include/Controls/RadioButton.h \
    ../Include/Controls/RadioGroup.h \
    ../Include/Controls/Rect.h \
    ../Include/Controls/Scrolls.h \
    ../Include/Controls/SpinEdit.h \
    ../Include/Controls/TimePicker.h \
    ../Include/Controls/Wnd.h \
    ../Include/Controls/WndClient.h \
    ../Include/Controls/WndContainer.h \
    ../Include/Controls/WndObj.h \
    ../Include/Files/File.h \
    ../Include/Files/FileBin.h \
    ../Include/Files/FilePipe.h \
    ../Include/Files/FileTxt.h \
    ../Include/Indicators/BillWilliams.h \
    ../Include/Indicators/Custo.h \
    ../Include/Indicators/Indicator.h \
    ../Include/Indicators/Indicators.h \
    ../Include/Indicators/Oscilators.h \
    ../Include/Indicators/Series.h \
    ../Include/Indicators/TimeSeries.h \
    ../Include/Indicators/Trend.h \
    ../Include/Indicators/Volumes.h \
    ../Include/Strings/String.h \
    ../Include/Tools/DateTime.h \
    ../Include/MovingAverages.h \
    ../Include/Object.h \
    ../Include/StdLibErr.h \
    ../Indicators/Examples/SimplePanel/PanelDialog.h \
    ../Include/WinUser32.h \
    ../Include/stdlib-mql4.h \
    ../Include/Math.h \
    ../Include/stderror-mql4.h \
    ../Include/Conversion.h \
    ../Include/mql4-def.h \
    ../Include/string-ops.h \
    ../Include/Tradeing.h \
    ../Include/Checkup.h \
    ../Include/AccountInfo.h \
    ../Include/Datetime.h \
    ../Include/TimeSeries.h

DISTFILES += \
    ../Libraries/stdlib.ex4 \
    ../Libraries/mqlcache.dat
