.class public Lcom/example/timepicker/TimePicker;
.super Lcom/didi/common/base/BaseLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/timepicker/TimePicker$TimePickerListener;
    }
.end annotation


# static fields
.field private static final MSG_TIME_PICKED:I


# instance fields
.field private mAdapterDate:Lcom/example/wheel/adapter/WheelAdapter;

.field private mAdapterHour:Lcom/example/wheel/adapter/NumberWheelAdapter;

.field private mAdapterMinute:Lcom/example/wheel/adapter/NumberWheelAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mTimePickerListener:Lcom/example/timepicker/TimePicker$TimePickerListener;

.field private mWheelDate:Lcom/example/wheel/WheelView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801a0
    .end annotation
.end field

.field private mWheelHour:Lcom/example/wheel/WheelView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08010f
    .end annotation
.end field

.field private mWheelMinute:Lcom/example/wheel/WheelView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080110
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Lcom/example/timepicker/TimePicker$1;

    invoke-direct {v0, p0}, Lcom/example/timepicker/TimePicker$1;-><init>(Lcom/example/timepicker/TimePicker;)V

    iput-object v0, p0, Lcom/example/timepicker/TimePicker;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/example/timepicker/TimePicker;)Lcom/example/timepicker/TimePicker$TimePickerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/example/timepicker/TimePicker;->mTimePickerListener:Lcom/example/timepicker/TimePicker$TimePickerListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/timepicker/TimePicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/example/timepicker/TimePicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private buildAdapters()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 231
    new-instance v0, Lcom/example/wheel/adapter/ArrayWheelAdapter;

    const v1, 0x7f06000b

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/example/wheel/adapter/ArrayWheelAdapter;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/timepicker/TimePicker;->mAdapterDate:Lcom/example/wheel/adapter/WheelAdapter;

    .line 232
    new-instance v0, Lcom/example/wheel/adapter/NumberWheelAdapter;

    const/16 v1, 0x18

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/example/timepicker/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0379

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/example/wheel/adapter/NumberWheelAdapter;-><init>(IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/example/timepicker/TimePicker;->mAdapterHour:Lcom/example/wheel/adapter/NumberWheelAdapter;

    .line 233
    new-instance v0, Lcom/example/wheel/adapter/NumberWheelAdapter;

    const/16 v1, 0x3c

    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/example/timepicker/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0401

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/example/wheel/adapter/NumberWheelAdapter;-><init>(IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/example/timepicker/TimePicker;->mAdapterMinute:Lcom/example/wheel/adapter/NumberWheelAdapter;

    .line 234
    return-void
.end method

.method private checkDateAvailable()V
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->isTodaySelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->isTodayAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->selectTomorrow()V

    goto :goto_0
.end method

.method private checkHourAvailable()V
    .locals 4

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->getAvailableHourInSelectedDate()I

    move-result v0

    .line 149
    .local v0, availableHourInSelectedDate:I
    invoke-virtual {p0}, Lcom/example/timepicker/TimePicker;->getDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v1

    .line 150
    .local v1, selectedDateTime:Lcom/didi/common/base/DateTime;
    invoke-virtual {v1}, Lcom/didi/common/base/DateTime;->getHour()I

    move-result v2

    .line 151
    .local v2, selectedHour:I
    iget-object v3, p0, Lcom/example/timepicker/TimePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v3, v0}, Lcom/example/wheel/WheelView;->setStartValue(I)V

    .line 152
    if-ge v2, v0, :cond_0

    .line 153
    iget-object v3, p0, Lcom/example/timepicker/TimePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v3, v0}, Lcom/example/wheel/WheelView;->setCurrentValue(I)V

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/example/timepicker/TimePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v3, v2}, Lcom/example/wheel/WheelView;->setCurrentValue(I)V

    goto :goto_0
.end method

.method private checkInvalidTime()Z
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/example/timepicker/TimePicker;->getDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v2

    .line 102
    .local v2, selectedDateTime:Lcom/didi/common/base/DateTime;
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->getAvailableDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 103
    .local v0, availableTime:Lcom/didi/common/base/DateTime;
    invoke-virtual {v2, v0}, Lcom/didi/common/base/DateTime;->isBefore(Lcom/didi/common/base/DateTime;)Z

    move-result v1

    .line 104
    .local v1, isInvalid:Z
    if-nez v1, :cond_0

    .line 107
    :goto_0
    return v1

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->selectFirstAvailableTime()V

    goto :goto_0
.end method

.method private checkMinuteAvailable()V
    .locals 4

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->getAvailableMinuteInSelectedDateHour()I

    move-result v0

    .line 138
    .local v0, availableMinuteInSelectedDateHour:I
    invoke-virtual {p0}, Lcom/example/timepicker/TimePicker;->getDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v1

    .line 139
    .local v1, selectedDateTime:Lcom/didi/common/base/DateTime;
    invoke-virtual {v1}, Lcom/didi/common/base/DateTime;->getMinute()I

    move-result v2

    .line 140
    .local v2, selectedMinute:I
    iget-object v3, p0, Lcom/example/timepicker/TimePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    invoke-virtual {v3, v0}, Lcom/example/wheel/WheelView;->setStartValue(I)V

    .line 141
    if-ge v2, v0, :cond_0

    .line 142
    iget-object v3, p0, Lcom/example/timepicker/TimePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    invoke-virtual {v3, v0}, Lcom/example/wheel/WheelView;->setCurrentValue(I)V

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v3, p0, Lcom/example/timepicker/TimePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    invoke-virtual {v3, v2}, Lcom/example/wheel/WheelView;->setCurrentValue(I)V

    goto :goto_0
.end method

.method private computeDate(Lcom/didi/common/base/DateTime;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/example/timepicker/TimePicker;->mWheelDate:Lcom/example/wheel/WheelView;

    invoke-virtual {v0}, Lcom/example/wheel/WheelView;->getCurrentValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/didi/common/base/DateTime;->addDay(I)V

    .line 256
    return-void
.end method

.method private computeHour(Lcom/didi/common/base/DateTime;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/example/timepicker/TimePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v0}, Lcom/example/wheel/WheelView;->getCurrentValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/didi/common/base/DateTime;->setHour(I)V

    .line 260
    return-void
.end method

.method private computeMinute(Lcom/didi/common/base/DateTime;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/example/timepicker/TimePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    invoke-virtual {v0}, Lcom/example/wheel/WheelView;->getCurrentValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/didi/common/base/DateTime;->setMinute(I)V

    .line 264
    return-void
.end method

.method private computeSecond(Lcom/didi/common/base/DateTime;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/didi/common/base/DateTime;->setSecond(I)V

    .line 268
    return-void
.end method

.method private createScrollListener()Lcom/example/scroll/ScrollableView$ScrollListener;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/example/timepicker/TimePicker$2;

    invoke-direct {v0, p0}, Lcom/example/timepicker/TimePicker$2;-><init>(Lcom/example/timepicker/TimePicker;)V

    return-object v0
.end method

.method private getAvailableDateTime()Lcom/didi/common/base/DateTime;
    .locals 3

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->getCurrentDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 223
    .local v0, availableTime:Lcom/didi/common/base/DateTime;
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/didi/common/base/DateTime;->addMinute(I)V

    .line 224
    invoke-virtual {v0}, Lcom/didi/common/base/DateTime;->getMinute()I

    move-result v1

    .line 225
    .local v1, minute:I
    add-int/lit8 v2, v1, 0x9

    div-int/lit8 v2, v2, 0xa

    mul-int/lit8 v1, v2, 0xa

    .line 226
    invoke-virtual {v0, v1}, Lcom/didi/common/base/DateTime;->setMinute(I)V

    .line 227
    return-object v0
.end method

.method private getAvailableHourInSelectedDate()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->getAvailableDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 166
    .local v0, availableTime:Lcom/didi/common/base/DateTime;
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->isTodaySelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    invoke-virtual {v0}, Lcom/didi/common/base/DateTime;->getHour()I

    move-result v1

    .line 174
    :cond_0
    :goto_0
    return v1

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->isTomorrowSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->isTodayAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/didi/common/base/DateTime;->getHour()I

    move-result v1

    goto :goto_0
.end method

.method private getAvailableMinuteInSelectedDateHour()I
    .locals 2

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->getAvailableDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 179
    .local v0, availableTime:Lcom/didi/common/base/DateTime;
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->isAvailableDateSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->isAvailableHourSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/didi/common/base/DateTime;->getMinute()I

    move-result v1

    .line 181
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCurrentDateTime()Lcom/didi/common/base/DateTime;
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/didi/common/base/DateTime;

    invoke-direct {v0}, Lcom/didi/common/base/DateTime;-><init>()V

    .line 218
    .local v0, time:Lcom/didi/common/base/DateTime;
    return-object v0
.end method

.method private isAvailableDateSelected()Z
    .locals 4

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->getAvailableDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 186
    .local v0, availableTime:Lcom/didi/common/base/DateTime;
    invoke-virtual {p0}, Lcom/example/timepicker/TimePicker;->getDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v1

    .line 187
    .local v1, selectedTime:Lcom/didi/common/base/DateTime;
    invoke-virtual {v0}, Lcom/didi/common/base/DateTime;->getDay()I

    move-result v2

    invoke-virtual {v1}, Lcom/didi/common/base/DateTime;->getDay()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isAvailableHourSelected()Z
    .locals 4

    .prologue
    .line 191
    iget-object v3, p0, Lcom/example/timepicker/TimePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v3}, Lcom/example/wheel/WheelView;->getCurrentValue()I

    move-result v2

    .line 192
    .local v2, selectedHour:I
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->getAvailableDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v1

    .line 193
    .local v1, availableTime:Lcom/didi/common/base/DateTime;
    invoke-virtual {v1}, Lcom/didi/common/base/DateTime;->getHour()I

    move-result v0

    .line 194
    .local v0, availableHour:I
    if-ne v2, v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isTodayAvailable()Z
    .locals 4

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->getCurrentDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v1

    .line 160
    .local v1, currentTime:Lcom/didi/common/base/DateTime;
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->getAvailableDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 161
    .local v0, availableTime:Lcom/didi/common/base/DateTime;
    invoke-virtual {v0}, Lcom/didi/common/base/DateTime;->getDay()I

    move-result v2

    invoke-virtual {v1}, Lcom/didi/common/base/DateTime;->getDay()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isTodaySelected()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/example/timepicker/TimePicker;->mWheelDate:Lcom/example/wheel/WheelView;

    invoke-virtual {v0}, Lcom/example/wheel/WheelView;->getCurrentItemIndex()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTomorrowSelected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 213
    iget-object v1, p0, Lcom/example/timepicker/TimePicker;->mWheelDate:Lcom/example/wheel/WheelView;

    invoke-virtual {v1}, Lcom/example/wheel/WheelView;->getCurrentItemIndex()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectFirstAvailableDate()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->isTodayAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->selectTomorrow()V

    goto :goto_0
.end method

.method private selectFirstAvailableHour()V
    .locals 3

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->getAvailableDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 125
    .local v0, availableTime:Lcom/didi/common/base/DateTime;
    invoke-virtual {v0}, Lcom/didi/common/base/DateTime;->getHour()I

    move-result v1

    .line 126
    .local v1, hour:I
    iget-object v2, p0, Lcom/example/timepicker/TimePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/example/wheel/WheelView;->setStartValue(I)V

    .line 127
    iget-object v2, p0, Lcom/example/timepicker/TimePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/example/wheel/WheelView;->setCurrentValue(I)V

    .line 128
    return-void
.end method

.method private selectFirstAvailableMinute()V
    .locals 3

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->getAvailableDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 118
    .local v0, availableTime:Lcom/didi/common/base/DateTime;
    invoke-virtual {v0}, Lcom/didi/common/base/DateTime;->getMinute()I

    move-result v1

    .line 119
    .local v1, minute:I
    iget-object v2, p0, Lcom/example/timepicker/TimePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/example/wheel/WheelView;->setStartValue(I)V

    .line 120
    iget-object v2, p0, Lcom/example/timepicker/TimePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/example/wheel/WheelView;->setCurrentValue(I)V

    .line 121
    return-void
.end method

.method private selectFirstAvailableTime()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->selectFirstAvailableDate()V

    .line 112
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->selectFirstAvailableHour()V

    .line 113
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->selectFirstAvailableMinute()V

    .line 114
    return-void
.end method

.method private selectTomorrow()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/example/timepicker/TimePicker;->mWheelDate:Lcom/example/wheel/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/example/wheel/WheelView;->select(I)V

    .line 206
    return-void
.end method


# virtual methods
.method public getDateTime()Lcom/didi/common/base/DateTime;
    .locals 1

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->getCurrentDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 243
    .local v0, time:Lcom/didi/common/base/DateTime;
    invoke-direct {p0, v0}, Lcom/example/timepicker/TimePicker;->computeDate(Lcom/didi/common/base/DateTime;)V

    .line 244
    invoke-direct {p0, v0}, Lcom/example/timepicker/TimePicker;->computeHour(Lcom/didi/common/base/DateTime;)V

    .line 245
    invoke-direct {p0, v0}, Lcom/example/timepicker/TimePicker;->computeMinute(Lcom/didi/common/base/DateTime;)V

    .line 246
    invoke-direct {p0, v0}, Lcom/example/timepicker/TimePicker;->computeSecond(Lcom/didi/common/base/DateTime;)V

    .line 247
    return-object v0
.end method

.method public getDayString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/example/timepicker/TimePicker;->mWheelDate:Lcom/example/wheel/WheelView;

    invoke-virtual {v0}, Lcom/example/wheel/WheelView;->getCurrentItemString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onInit()V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->buildAdapters()V

    .line 70
    iget-object v1, p0, Lcom/example/timepicker/TimePicker;->mWheelDate:Lcom/example/wheel/WheelView;

    iget-object v2, p0, Lcom/example/timepicker/TimePicker;->mAdapterDate:Lcom/example/wheel/adapter/WheelAdapter;

    invoke-virtual {v1, v2}, Lcom/example/wheel/WheelView;->setAdapter(Lcom/example/wheel/adapter/WheelAdapter;)V

    .line 71
    iget-object v1, p0, Lcom/example/timepicker/TimePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    iget-object v2, p0, Lcom/example/timepicker/TimePicker;->mAdapterHour:Lcom/example/wheel/adapter/NumberWheelAdapter;

    invoke-virtual {v1, v2}, Lcom/example/wheel/WheelView;->setAdapter(Lcom/example/wheel/adapter/WheelAdapter;)V

    .line 72
    iget-object v1, p0, Lcom/example/timepicker/TimePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    iget-object v2, p0, Lcom/example/timepicker/TimePicker;->mAdapterMinute:Lcom/example/wheel/adapter/NumberWheelAdapter;

    invoke-virtual {v1, v2}, Lcom/example/wheel/WheelView;->setAdapter(Lcom/example/wheel/adapter/WheelAdapter;)V

    .line 73
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->createScrollListener()Lcom/example/scroll/ScrollableView$ScrollListener;

    move-result-object v0

    .line 74
    .local v0, listener:Lcom/example/scroll/ScrollableView$ScrollListener;
    iget-object v1, p0, Lcom/example/timepicker/TimePicker;->mWheelDate:Lcom/example/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/example/wheel/WheelView;->setScrollListener(Lcom/example/scroll/ScrollableView$ScrollListener;)V

    .line 75
    iget-object v1, p0, Lcom/example/timepicker/TimePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/example/wheel/WheelView;->setScrollListener(Lcom/example/scroll/ScrollableView$ScrollListener;)V

    .line 76
    iget-object v1, p0, Lcom/example/timepicker/TimePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/example/wheel/WheelView;->setScrollListener(Lcom/example/scroll/ScrollableView$ScrollListener;)V

    .line 77
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/example/timepicker/TimePicker;->onSelected(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 64
    const v0, 0x7f03010a

    return v0
.end method

.method public onSelected(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->checkInvalidTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->checkDateAvailable()V

    .line 96
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->checkHourAvailable()V

    .line 97
    invoke-direct {p0}, Lcom/example/timepicker/TimePicker;->checkMinuteAvailable()V

    goto :goto_0
.end method

.method public setTimePickerListener(Lcom/example/timepicker/TimePicker$TimePickerListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/example/timepicker/TimePicker;->mTimePickerListener:Lcom/example/timepicker/TimePicker$TimePickerListener;

    .line 272
    return-void
.end method
