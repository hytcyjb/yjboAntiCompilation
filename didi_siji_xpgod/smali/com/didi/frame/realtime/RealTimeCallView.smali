.class public Lcom/didi/frame/realtime/RealTimeCallView;
.super Landroid/widget/RelativeLayout;
.source "RealTimeCallView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;
    }
.end annotation


# static fields
.field private static final VOICE_RECORDER_PRESS_TIME:I = 0x1

.field private static final VOICE_RECORDER_SHORT_TIME:I = 0x3


# instance fields
.field private animHideListener:Landroid/view/animation/Animation$AnimationListener;

.field private callTime:J

.field private fragListener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

.field private mBottomBar:Lcom/didi/frame/realtime/BottomBar;

.field private mBottomBarListener:Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;

.field private mSlideVoice:Lcom/didi/frame/realtime/SlideVoiceView;

.field private mTimer:Landroid/os/CountDownTimer;

.field private unitTime:J

.field private voiceMaxTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Lcom/didi/frame/realtime/RealTimeCallView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/RealTimeCallView$1;-><init>(Lcom/didi/frame/realtime/RealTimeCallView;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBarListener:Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;

    .line 158
    new-instance v0, Lcom/didi/frame/realtime/RealTimeCallView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/RealTimeCallView$2;-><init>(Lcom/didi/frame/realtime/RealTimeCallView;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->animHideListener:Landroid/view/animation/Animation$AnimationListener;

    .line 52
    invoke-direct {p0}, Lcom/didi/frame/realtime/RealTimeCallView;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    new-instance v0, Lcom/didi/frame/realtime/RealTimeCallView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/RealTimeCallView$1;-><init>(Lcom/didi/frame/realtime/RealTimeCallView;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBarListener:Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;

    .line 158
    new-instance v0, Lcom/didi/frame/realtime/RealTimeCallView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/RealTimeCallView$2;-><init>(Lcom/didi/frame/realtime/RealTimeCallView;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->animHideListener:Landroid/view/animation/Animation$AnimationListener;

    .line 47
    invoke-direct {p0}, Lcom/didi/frame/realtime/RealTimeCallView;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance v0, Lcom/didi/frame/realtime/RealTimeCallView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/RealTimeCallView$1;-><init>(Lcom/didi/frame/realtime/RealTimeCallView;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBarListener:Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;

    .line 158
    new-instance v0, Lcom/didi/frame/realtime/RealTimeCallView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/RealTimeCallView$2;-><init>(Lcom/didi/frame/realtime/RealTimeCallView;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->animHideListener:Landroid/view/animation/Animation$AnimationListener;

    .line 42
    invoke-direct {p0}, Lcom/didi/frame/realtime/RealTimeCallView;->init()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/realtime/RealTimeCallView;)Lcom/didi/frame/realtime/SlideVoiceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mSlideVoice:Lcom/didi/frame/realtime/SlideVoiceView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/frame/realtime/RealTimeCallView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/didi/frame/realtime/RealTimeCallView;->startTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/frame/realtime/RealTimeCallView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/didi/frame/realtime/RealTimeCallView;->hide(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/frame/realtime/RealTimeCallView;)Lcom/didi/frame/realtime/RealtimeCallViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->fragListener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/frame/realtime/RealTimeCallView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/didi/frame/realtime/RealTimeCallView;->setBackground(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/frame/realtime/RealTimeCallView;)Lcom/didi/frame/realtime/BottomBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBar:Lcom/didi/frame/realtime/BottomBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/frame/realtime/RealTimeCallView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/didi/frame/realtime/RealTimeCallView;->checkVoiceDuration()V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/frame/realtime/RealTimeCallView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->unitTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/didi/frame/realtime/RealTimeCallView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/didi/frame/realtime/RealTimeCallView;->callTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/didi/frame/realtime/RealTimeCallView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->voiceMaxTime:J

    return-wide v0
.end method

.method private checkVoiceDuration()V
    .locals 4

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->callTime:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 188
    const v0, 0x7f0b04aa

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 195
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-wide v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->callTime:J

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 190
    const-string v0, "vc_record_short"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 191
    const v0, 0x7f0b04ab

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->fragListener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

    invoke-interface {v0}, Lcom/didi/frame/realtime/RealtimeCallViewListener;->onUp()V

    goto :goto_0
.end method

.method private hide(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mSlideVoice:Lcom/didi/frame/realtime/SlideVoiceView;

    invoke-virtual {v1}, Lcom/didi/frame/realtime/SlideVoiceView;->isShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/didi/frame/realtime/RealTimeCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040012

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 149
    .local v0, anim:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/didi/frame/realtime/RealTimeCallView;->animHideListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 150
    iget-object v1, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mSlideVoice:Lcom/didi/frame/realtime/SlideVoiceView;

    invoke-virtual {v1, v0}, Lcom/didi/frame/realtime/SlideVoiceView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 151
    iget-object v1, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mSlideVoice:Lcom/didi/frame/realtime/SlideVoiceView;

    invoke-virtual {v1, p1}, Lcom/didi/frame/realtime/SlideVoiceView;->hide(Landroid/view/MotionEvent;)V

    .line 152
    invoke-direct {p0}, Lcom/didi/frame/realtime/RealTimeCallView;->stopTimer()V

    .line 156
    .end local v0           #anim:Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/didi/frame/realtime/RealTimeCallView;->setCallEnable(Z)V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/didi/frame/realtime/RealTimeCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300e5

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0804eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/realtime/BottomBar;

    iput-object v1, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBar:Lcom/didi/frame/realtime/BottomBar;

    .line 59
    iget-object v1, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBar:Lcom/didi/frame/realtime/BottomBar;

    iget-object v2, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBarListener:Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;

    invoke-virtual {v1, v2}, Lcom/didi/frame/realtime/BottomBar;->setListener(Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;)V

    .line 60
    const v1, 0x7f0804ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/realtime/SlideVoiceView;

    iput-object v1, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mSlideVoice:Lcom/didi/frame/realtime/SlideVoiceView;

    .line 61
    invoke-static {p0}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setRealtimeCall(Lcom/didi/frame/realtime/RealTimeCallView;)V

    .line 63
    return-void
.end method

.method private setBackground(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/didi/frame/realtime/RealTimeCallView;->setBackgroundResource(I)V

    .line 143
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBar:Lcom/didi/frame/realtime/BottomBar;

    invoke-virtual {v0, p1}, Lcom/didi/frame/realtime/BottomBar;->setBackgroundResource(I)V

    .line 144
    return-void
.end method

.method private startTimer()V
    .locals 6

    .prologue
    .line 199
    new-instance v0, Lcom/didi/frame/realtime/RealTimeCallView$3;

    iget-wide v2, p0, Lcom/didi/frame/realtime/RealTimeCallView;->voiceMaxTime:J

    iget-wide v4, p0, Lcom/didi/frame/realtime/RealTimeCallView;->unitTime:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/frame/realtime/RealTimeCallView$3;-><init>(Lcom/didi/frame/realtime/RealTimeCallView;JJ)V

    iput-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mTimer:Landroid/os/CountDownTimer;

    .line 213
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 214
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mTimer:Landroid/os/CountDownTimer;

    goto :goto_0
.end method


# virtual methods
.method public changeToActivity()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBar:Lcom/didi/frame/realtime/BottomBar;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/BottomBar;->changeToActivity()V

    .line 273
    return-void
.end method

.method public changeToBeatles()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBar:Lcom/didi/frame/realtime/BottomBar;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/BottomBar;->changeToBeatles()V

    .line 281
    return-void
.end method

.method public changeToCar()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBar:Lcom/didi/frame/realtime/BottomBar;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/BottomBar;->changeToCar()V

    .line 265
    return-void
.end method

.method public changeToFlier()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBar:Lcom/didi/frame/realtime/BottomBar;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/BottomBar;->changeToFlier()V

    .line 269
    return-void
.end method

.method public changeToTaxi()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBar:Lcom/didi/frame/realtime/BottomBar;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/BottomBar;->changeToTaxi()V

    .line 261
    return-void
.end method

.method public changeToTopic()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBar:Lcom/didi/frame/realtime/BottomBar;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/BottomBar;->changeToTopic()V

    .line 277
    return-void
.end method

.method public getBottomStyle()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBar:Lcom/didi/frame/realtime/BottomBar;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/BottomBar;->getStyle()I

    move-result v0

    return v0
.end method

.method public getBottomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBar:Lcom/didi/frame/realtime/BottomBar;

    return-object v0
.end method

.method public getCallItem()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mSlideVoice:Lcom/didi/frame/realtime/SlideVoiceView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/SlideVoiceView;->getCallItem()I

    move-result v0

    return v0
.end method

.method public getCallTime()J
    .locals 2

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->callTime:J

    return-wide v0
.end method

.method public getVoicePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mSlideVoice:Lcom/didi/frame/realtime/SlideVoiceView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/SlideVoiceView;->getVoicePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBottomBarRightBtnName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBar:Lcom/didi/frame/realtime/BottomBar;

    invoke-virtual {v0, p1}, Lcom/didi/frame/realtime/BottomBar;->setRightBtnName(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public setBottomStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBar:Lcom/didi/frame/realtime/BottomBar;

    invoke-virtual {v0, p1}, Lcom/didi/frame/realtime/BottomBar;->setStyle(I)V

    .line 72
    return-void
.end method

.method public setCallEnable(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBar:Lcom/didi/frame/realtime/BottomBar;

    invoke-virtual {v0, p1}, Lcom/didi/frame/realtime/BottomBar;->setCallEnable(Z)V

    .line 88
    return-void
.end method

.method public setEditViewEnble()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBar:Lcom/didi/frame/realtime/BottomBar;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/BottomBar;->setEditViewEnble()V

    .line 92
    return-void
.end method

.method public setFragmentListener(Lcom/didi/frame/realtime/RealtimeCallViewListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/didi/frame/realtime/RealTimeCallView;->fragListener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

    .line 68
    return-void
.end method

.method public setTimerDown(JJ)V
    .locals 0
    .parameter "max"
    .parameter "unit"

    .prologue
    .line 231
    iput-wide p1, p0, Lcom/didi/frame/realtime/RealTimeCallView;->voiceMaxTime:J

    .line 232
    iput-wide p3, p0, Lcom/didi/frame/realtime/RealTimeCallView;->unitTime:J

    .line 233
    return-void
.end method

.method public setVoiceNoticeChangeTime(JJ)V
    .locals 1
    .parameter "finish"
    .parameter "surplus"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView;->mSlideVoice:Lcom/didi/frame/realtime/SlideVoiceView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/didi/frame/realtime/SlideVoiceView;->setFinishSurTime(JJ)V

    .line 238
    return-void
.end method
