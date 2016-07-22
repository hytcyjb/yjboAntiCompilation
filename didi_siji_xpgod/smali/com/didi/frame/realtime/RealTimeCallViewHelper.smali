.class public Lcom/didi/frame/realtime/RealTimeCallViewHelper;
.super Ljava/lang/Object;
.source "RealTimeCallViewHelper.java"


# static fields
.field private static realtime:Lcom/didi/frame/realtime/RealTimeCallView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBottomBarToActivity()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->changeToActivity()V

    .line 72
    :cond_0
    return-void
.end method

.method public static checkBottomBarToBeatles()V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->changeToBeatles()V

    .line 84
    :cond_0
    return-void
.end method

.method public static checkBottomBarToCar()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->changeToCar()V

    .line 60
    :cond_0
    return-void
.end method

.method public static checkBottomBarToFlier()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->changeToFlier()V

    .line 66
    :cond_0
    return-void
.end method

.method public static checkBottomBarToTaxi()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->changeToTaxi()V

    .line 54
    :cond_0
    return-void
.end method

.method public static checkBottomBarToTopic()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->changeToTopic()V

    .line 78
    :cond_0
    return-void
.end method

.method public static getBottomStyle()I
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->getBottomStyle()I

    move-result v0

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBreifDestination()Lcom/didi/frame/business/BreifDestination;
    .locals 2

    .prologue
    .line 36
    sget-object v1, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v1}, Lcom/didi/frame/realtime/RealTimeCallView;->getCallItem()I

    move-result v0

    .line 37
    .local v0, index:I
    invoke-static {v0}, Lcom/didi/frame/business/BreifDestination;->get(I)Lcom/didi/frame/business/BreifDestination;

    move-result-object v1

    return-object v1
.end method

.method public static getCallItem()I
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->getCallItem()I

    move-result v0

    return v0
.end method

.method public static getCallTime()J
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->getCallTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVoicePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->getVoicePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resetBottomStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 88
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0, p0}, Lcom/didi/frame/realtime/RealTimeCallView;->setBottomStyle(I)V

    .line 90
    :cond_0
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->checkBottomBarToTaxi()V

    .line 91
    return-void
.end method

.method public static setBottomBarRightBtnName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 19
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0, p0}, Lcom/didi/frame/realtime/RealTimeCallView;->setBottomBarRightBtnName(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static setBottomStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 100
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0, p0}, Lcom/didi/frame/realtime/RealTimeCallView;->setBottomStyle(I)V

    .line 102
    :cond_0
    return-void
.end method

.method public static setEditViewEnble()V
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->setEditViewEnble()V

    .line 107
    :cond_0
    return-void
.end method

.method public static setRealtimeCall(Lcom/didi/frame/realtime/RealTimeCallView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 15
    sput-object p0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    .line 16
    return-void
.end method

.method public static setTimerDown(JJ)V
    .locals 1
    .parameter "max"
    .parameter "unit"

    .prologue
    .line 23
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/didi/frame/realtime/RealTimeCallView;->setTimerDown(JJ)V

    .line 24
    return-void
.end method

.method public static setVoiceNoticeChangeTime(JJ)V
    .locals 1
    .parameter "finish"
    .parameter "surplus"

    .prologue
    .line 27
    sget-object v0, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->realtime:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/didi/frame/realtime/RealTimeCallView;->setVoiceNoticeChangeTime(JJ)V

    .line 28
    return-void
.end method
