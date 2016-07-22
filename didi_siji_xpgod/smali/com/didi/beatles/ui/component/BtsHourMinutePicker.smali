.class public Lcom/didi/beatles/ui/component/BtsHourMinutePicker;
.super Lcom/didi/common/base/BaseLayout;
.source "BtsHourMinutePicker.java"


# instance fields
.field private mAdapterHour:Lcom/example/wheel/adapter/NumberWheelAdapter;

.field private mAdapterMinute:Lcom/example/wheel/adapter/NumberWheelAdapter;

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
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method private buildAdapters()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 52
    new-instance v0, Lcom/example/wheel/adapter/NumberWheelAdapter;

    const/16 v1, 0x18

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0379

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/example/wheel/adapter/NumberWheelAdapter;-><init>(IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->mAdapterHour:Lcom/example/wheel/adapter/NumberWheelAdapter;

    .line 53
    new-instance v0, Lcom/example/wheel/adapter/NumberWheelAdapter;

    const/16 v1, 0x3c

    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0401

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/example/wheel/adapter/NumberWheelAdapter;-><init>(IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->mAdapterMinute:Lcom/example/wheel/adapter/NumberWheelAdapter;

    .line 54
    return-void
.end method

.method private createScrollListener()Lcom/example/scroll/ScrollableView$ScrollListener;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/didi/beatles/ui/component/BtsHourMinutePicker$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/component/BtsHourMinutePicker$1;-><init>(Lcom/didi/beatles/ui/component/BtsHourMinutePicker;)V

    return-object v0
.end method


# virtual methods
.method public getCurrentHour()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v0}, Lcom/example/wheel/WheelView;->getCurrentValue()I

    move-result v0

    return v0
.end method

.method public getCurrentMinute()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    invoke-virtual {v0}, Lcom/example/wheel/WheelView;->getCurrentValue()I

    move-result v0

    return v0
.end method

.method protected onInit()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->buildAdapters()V

    .line 42
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->mAdapterHour:Lcom/example/wheel/adapter/NumberWheelAdapter;

    invoke-virtual {v1, v2}, Lcom/example/wheel/WheelView;->setAdapter(Lcom/example/wheel/adapter/WheelAdapter;)V

    .line 43
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->mAdapterMinute:Lcom/example/wheel/adapter/NumberWheelAdapter;

    invoke-virtual {v1, v2}, Lcom/example/wheel/WheelView;->setAdapter(Lcom/example/wheel/adapter/WheelAdapter;)V

    .line 44
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->createScrollListener()Lcom/example/scroll/ScrollableView$ScrollListener;

    move-result-object v0

    .line 45
    .local v0, listener:Lcom/example/scroll/ScrollableView$ScrollListener;
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/example/wheel/WheelView;->setScrollListener(Lcom/example/scroll/ScrollableView$ScrollListener;)V

    .line 46
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/example/wheel/WheelView;->setScrollListener(Lcom/example/scroll/ScrollableView$ScrollListener;)V

    .line 48
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f03001f

    return v0
.end method

.method public setCurrentHour(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->mWheelHour:Lcom/example/wheel/WheelView;

    invoke-virtual {v0, p1}, Lcom/example/wheel/WheelView;->setCurrentValue(I)V

    .line 82
    return-void
.end method

.method public setCurrentMinute(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->mWheelMinute:Lcom/example/wheel/WheelView;

    invoke-virtual {v0, p1}, Lcom/example/wheel/WheelView;->setCurrentValue(I)V

    .line 86
    return-void
.end method

.method public setStartEndHour(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->mAdapterHour:Lcom/example/wheel/adapter/NumberWheelAdapter;

    invoke-virtual {v0, p1}, Lcom/example/wheel/adapter/NumberWheelAdapter;->setStartValue(I)V

    .line 69
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsHourMinutePicker;->mAdapterHour:Lcom/example/wheel/adapter/NumberWheelAdapter;

    invoke-virtual {v0, p2}, Lcom/example/wheel/adapter/NumberWheelAdapter;->setEndValue(I)V

    .line 70
    return-void
.end method
