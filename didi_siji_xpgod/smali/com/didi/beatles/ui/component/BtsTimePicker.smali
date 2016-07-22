.class public Lcom/didi/beatles/ui/component/BtsTimePicker;
.super Lcom/didi/common/base/BaseLayout;
.source "BtsTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/ui/component/BtsTimePicker$TimePickerListener;
    }
.end annotation


# static fields
.field private static final MSG_TIME_PICKED:I


# instance fields
.field private mAdapterDate:Lcom/example/wheel/adapter/WheelAdapter;

.field private mAdapterHour:Lcom/example/wheel/adapter/NumberWheelAdapter;

.field private mAdapterMinute:Lcom/example/wheel/adapter/NumberWheelAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mTimePickerListener:Lcom/didi/beatles/ui/component/BtsTimePicker$TimePickerListener;

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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lcom/didi/beatles/ui/component/BtsTimePicker$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/component/BtsTimePicker$1;-><init>(Lcom/didi/beatles/ui/component/BtsTimePicker;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Lcom/didi/beatles/ui/component/BtsTimePicker$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/component/BtsTimePicker$1;-><init>(Lcom/didi/beatles/ui/component/BtsTimePicker;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/ui/component/BtsTimePicker;)Lcom/didi/beatles/ui/component/BtsTimePicker$TimePickerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mTimePickerListener:Lcom/didi/beatles/ui/component/BtsTimePicker$TimePickerListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/ui/component/BtsTimePicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private buildAdapters()V
    .locals 6

    .prologue
    .line 233
    new-instance v0, Lcom/example/wheel/adapter/ArrayWheelAdapter;

    const v1, 0x7f060008

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/example/wheel/adapter/ArrayWheelAdapter;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mAdapterDate:Lcom/example/wheel/adapter/WheelAdapter;

    .line 234
    new-instance v0, Lcom/example/wheel/adapter/NumberWheelAdapter;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x18

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0379

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/example/wheel/adapter/NumberWheelAdapter;-><init>(IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mAdapterHour:Lcom/example/wheel/adapter/NumberWheelAdapter;

    .line 235
    new-instance v0, Lcom/example/wheel/adapter/NumberWheelAdapter;

    const/4 v1, 0x0

    const/16 v2, 0x3c

    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0401

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/example/wheel/adapter/NumberWheelAdapter;-><init>(IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mAdapterMinute:Lcom/example/wheel/adapter/NumberWheelAdapter;

    .line 236
    return-void
.end method

.method private checkDateAvailable()V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->isTodaySelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->isTodayAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->selectTomorrow()V

    goto :goto_0
.end method

.method private checkHourAvailable()V
    .locals 4

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getAvailableHourInSelectedDate()I

    move-result v0

    .line 151
    .local v0, availableHourInSelectedDate:I
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v1

    .line 152
    .local v1, selectedDateTime:Lcom/didi/common/base/DateTime;
    invoke-virtual {v1}, Lcom/didi/common/base/DateTime;->getHour()I

    move-result v2

    .line 153
    .local v2, selectedHour:I
    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v3, v0}, Lcom/example/wheel/WheelView;->setStartValue(I)V

    .line 154
    if-ge v2, v0, :cond_0

    .line 155
    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v3, v0}, Lcom/example/wheel/WheelView;->setCurrentValue(I)V

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v3, v2}, Lcom/example/wheel/WheelView;->setCurrentValue(I)V

    goto :goto_0
.end method

.method private checkInvalidTime()Z
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v2

    .line 104
    .local v2, selectedDateTime:Lcom/didi/common/base/DateTime;
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getAvailableDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 105
    .local v0, availableTime:Lcom/didi/common/base/DateTime;
    invoke-virtual {v2, v0}, Lcom/didi/common/base/DateTime;->isBefore(Lcom/didi/common/base/DateTime;)Z

    move-result v1

    .line 106
    .local v1, isInvalid:Z
    if-nez v1, :cond_0

    .line 109
    :goto_0
    return v1

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->selectFirstAvailableTime()V

    goto :goto_0
.end method

.method private checkMinuteAvailable()V
    .locals 4

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getAvailableMinuteInSelectedDateHour()I

    move-result v0

    .line 140
    .local v0, availableMinuteInSelectedDateHour:I
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v1

    .line 141
    .local v1, selectedDateTime:Lcom/didi/common/base/DateTime;
    invoke-virtual {v1}, Lcom/didi/common/base/DateTime;->getMinute()I

    move-result v2

    .line 142
    .local v2, selectedMinute:I
    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    invoke-virtual {v3, v0}, Lcom/example/wheel/WheelView;->setStartValue(I)V

    .line 143
    if-ge v2, v0, :cond_0

    .line 144
    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    invoke-virtual {v3, v0}, Lcom/example/wheel/WheelView;->setCurrentValue(I)V

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    invoke-virtual {v3, v2}, Lcom/example/wheel/WheelView;->setCurrentValue(I)V

    goto :goto_0
.end method

.method private computeDate(Lcom/didi/common/base/DateTime;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelDate:Lcom/example/wheel/WheelView;

    invoke-virtual {v0}, Lcom/example/wheel/WheelView;->getCurrentValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/didi/common/base/DateTime;->addDay(I)V

    .line 258
    return-void
.end method

.method private computeHour(Lcom/didi/common/base/DateTime;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v0}, Lcom/example/wheel/WheelView;->getCurrentValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/didi/common/base/DateTime;->setHour(I)V

    .line 262
    return-void
.end method

.method private computeMinute(Lcom/didi/common/base/DateTime;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    invoke-virtual {v0}, Lcom/example/wheel/WheelView;->getCurrentValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/didi/common/base/DateTime;->setMinute(I)V

    .line 266
    return-void
.end method

.method private computeSecond(Lcom/didi/common/base/DateTime;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/didi/common/base/DateTime;->setSecond(I)V

    .line 270
    return-void
.end method

.method private createScrollListener()Lcom/example/scroll/ScrollableView$ScrollListener;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/didi/beatles/ui/component/BtsTimePicker$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/component/BtsTimePicker$2;-><init>(Lcom/didi/beatles/ui/component/BtsTimePicker;)V

    return-object v0
.end method

.method private getAvailableDateTime()Lcom/didi/common/base/DateTime;
    .locals 3

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getCurrentDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 225
    .local v0, availableTime:Lcom/didi/common/base/DateTime;
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/didi/common/base/DateTime;->addMinute(I)V

    .line 226
    invoke-virtual {v0}, Lcom/didi/common/base/DateTime;->getMinute()I

    move-result v1

    .line 227
    .local v1, minute:I
    add-int/lit8 v2, v1, 0x9

    div-int/lit8 v2, v2, 0xa

    mul-int/lit8 v1, v2, 0xa

    .line 228
    invoke-virtual {v0, v1}, Lcom/didi/common/base/DateTime;->setMinute(I)V

    .line 229
    return-object v0
.end method

.method private getAvailableHourInSelectedDate()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getAvailableDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 168
    .local v0, availableTime:Lcom/didi/common/base/DateTime;
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->isTodaySelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    invoke-virtual {v0}, Lcom/didi/common/base/DateTime;->getHour()I

    move-result v1

    .line 176
    :cond_0
    :goto_0
    return v1

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->isTomorrowSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->isTodayAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/didi/common/base/DateTime;->getHour()I

    move-result v1

    goto :goto_0
.end method

.method private getAvailableMinuteInSelectedDateHour()I
    .locals 2

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getAvailableDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 181
    .local v0, availableTime:Lcom/didi/common/base/DateTime;
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->isAvailableDateSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->isAvailableHourSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/didi/common/base/DateTime;->getMinute()I

    move-result v1

    .line 183
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCurrentDateTime()Lcom/didi/common/base/DateTime;
    .locals 1

    .prologue
    .line 219
    new-instance v0, Lcom/didi/common/base/DateTime;

    invoke-direct {v0}, Lcom/didi/common/base/DateTime;-><init>()V

    .line 220
    .local v0, time:Lcom/didi/common/base/DateTime;
    return-object v0
.end method

.method private isAvailableDateSelected()Z
    .locals 4

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getAvailableDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 188
    .local v0, availableTime:Lcom/didi/common/base/DateTime;
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v1

    .line 189
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
    .line 193
    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v3}, Lcom/example/wheel/WheelView;->getCurrentValue()I

    move-result v2

    .line 194
    .local v2, selectedHour:I
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getAvailableDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v1

    .line 195
    .local v1, availableTime:Lcom/didi/common/base/DateTime;
    invoke-virtual {v1}, Lcom/didi/common/base/DateTime;->getHour()I

    move-result v0

    .line 196
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
    .line 161
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getCurrentDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v1

    .line 162
    .local v1, currentTime:Lcom/didi/common/base/DateTime;
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getAvailableDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 163
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
    .line 211
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelDate:Lcom/example/wheel/WheelView;

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

    .line 215
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelDate:Lcom/example/wheel/WheelView;

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
    .line 133
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->isTodayAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->selectTomorrow()V

    goto :goto_0
.end method

.method private selectFirstAvailableHour()V
    .locals 3

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getAvailableDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 127
    .local v0, availableTime:Lcom/didi/common/base/DateTime;
    invoke-virtual {v0}, Lcom/didi/common/base/DateTime;->getHour()I

    move-result v1

    .line 128
    .local v1, hour:I
    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/example/wheel/WheelView;->setStartValue(I)V

    .line 129
    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/example/wheel/WheelView;->setCurrentValue(I)V

    .line 130
    return-void
.end method

.method private selectFirstAvailableMinute()V
    .locals 3

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getAvailableDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 120
    .local v0, availableTime:Lcom/didi/common/base/DateTime;
    invoke-virtual {v0}, Lcom/didi/common/base/DateTime;->getMinute()I

    move-result v1

    .line 121
    .local v1, minute:I
    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/example/wheel/WheelView;->setStartValue(I)V

    .line 122
    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/example/wheel/WheelView;->setCurrentValue(I)V

    .line 123
    return-void
.end method

.method private selectFirstAvailableTime()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->selectFirstAvailableDate()V

    .line 114
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->selectFirstAvailableHour()V

    .line 115
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->selectFirstAvailableMinute()V

    .line 116
    return-void
.end method

.method private selectTomorrow()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelDate:Lcom/example/wheel/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/example/wheel/WheelView;->select(I)V

    .line 208
    return-void
.end method


# virtual methods
.method public getDateTime()Lcom/didi/common/base/DateTime;
    .locals 1

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->getCurrentDateTime()Lcom/didi/common/base/DateTime;

    move-result-object v0

    .line 245
    .local v0, time:Lcom/didi/common/base/DateTime;
    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->computeDate(Lcom/didi/common/base/DateTime;)V

    .line 246
    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->computeHour(Lcom/didi/common/base/DateTime;)V

    .line 247
    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->computeMinute(Lcom/didi/common/base/DateTime;)V

    .line 248
    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->computeSecond(Lcom/didi/common/base/DateTime;)V

    .line 249
    return-object v0
.end method

.method public getDayString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelDate:Lcom/example/wheel/WheelView;

    invoke-virtual {v0}, Lcom/example/wheel/WheelView;->getCurrentItemString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onInit()V
    .locals 3

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->buildAdapters()V

    .line 72
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelDate:Lcom/example/wheel/WheelView;

    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mAdapterDate:Lcom/example/wheel/adapter/WheelAdapter;

    invoke-virtual {v1, v2}, Lcom/example/wheel/WheelView;->setAdapter(Lcom/example/wheel/adapter/WheelAdapter;)V

    .line 73
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mAdapterHour:Lcom/example/wheel/adapter/NumberWheelAdapter;

    invoke-virtual {v1, v2}, Lcom/example/wheel/WheelView;->setAdapter(Lcom/example/wheel/adapter/WheelAdapter;)V

    .line 74
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mAdapterMinute:Lcom/example/wheel/adapter/NumberWheelAdapter;

    invoke-virtual {v1, v2}, Lcom/example/wheel/WheelView;->setAdapter(Lcom/example/wheel/adapter/WheelAdapter;)V

    .line 75
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->createScrollListener()Lcom/example/scroll/ScrollableView$ScrollListener;

    move-result-object v0

    .line 76
    .local v0, listener:Lcom/example/scroll/ScrollableView$ScrollListener;
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelDate:Lcom/example/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/example/wheel/WheelView;->setScrollListener(Lcom/example/scroll/ScrollableView$ScrollListener;)V

    .line 77
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/example/wheel/WheelView;->setScrollListener(Lcom/example/scroll/ScrollableView$ScrollListener;)V

    .line 78
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/example/wheel/WheelView;->setScrollListener(Lcom/example/scroll/ScrollableView$ScrollListener;)V

    .line 79
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/component/BtsTimePicker;->onSelected(Landroid/view/View;)V

    .line 80
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f030043

    return v0
.end method

.method public onSelected(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->checkInvalidTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->checkDateAvailable()V

    .line 98
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->checkHourAvailable()V

    .line 99
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsTimePicker;->checkMinuteAvailable()V

    goto :goto_0
.end method

.method public setTimePickerListener(Lcom/didi/beatles/ui/component/BtsTimePicker$TimePickerListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsTimePicker;->mTimePickerListener:Lcom/didi/beatles/ui/component/BtsTimePicker$TimePickerListener;

    .line 274
    return-void
.end method
