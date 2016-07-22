.class public Lcom/didi/frame/realtime/SlideVoiceView;
.super Landroid/widget/RelativeLayout;
.source "SlideVoiceView.java"


# instance fields
.field private finishTime:J

.field private mSlideView:Lcom/didi/frame/realtime/slide/SlideCallView;

.field private mVoiceView:Lcom/didi/frame/realtime/voice/VoiceCallView;

.field private noticeView:Landroid/widget/TextView;

.field private surplusTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/didi/frame/realtime/SlideVoiceView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0}, Lcom/didi/frame/realtime/SlideVoiceView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/didi/frame/realtime/SlideVoiceView;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/didi/frame/realtime/SlideVoiceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300e8

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0804f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/realtime/voice/VoiceCallView;

    iput-object v1, p0, Lcom/didi/frame/realtime/SlideVoiceView;->mVoiceView:Lcom/didi/frame/realtime/voice/VoiceCallView;

    .line 48
    const v1, 0x7f0804f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/realtime/slide/SlideCallView;

    iput-object v1, p0, Lcom/didi/frame/realtime/SlideVoiceView;->mSlideView:Lcom/didi/frame/realtime/slide/SlideCallView;

    .line 49
    const v1, 0x7f0804f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/realtime/SlideVoiceView;->noticeView:Landroid/widget/TextView;

    .line 50
    iget-object v1, p0, Lcom/didi/frame/realtime/SlideVoiceView;->noticeView:Landroid/widget/TextView;

    const v2, 0x7f0b04a5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public getCallItem()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/didi/frame/realtime/SlideVoiceView;->mSlideView:Lcom/didi/frame/realtime/slide/SlideCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->getSelectItem()I

    move-result v0

    return v0
.end method

.method public getCancelState()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/didi/frame/realtime/SlideVoiceView;->mVoiceView:Lcom/didi/frame/realtime/voice/VoiceCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->getCancelState()Z

    move-result v0

    return v0
.end method

.method public getVoicePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/frame/realtime/SlideVoiceView;->mVoiceView:Lcom/didi/frame/realtime/voice/VoiceCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->getVoicePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/didi/frame/realtime/SlideVoiceView;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/realtime/SlideVoiceView;->mVoiceView:Lcom/didi/frame/realtime/voice/VoiceCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->stopRecord()V

    .line 81
    iget-object v0, p0, Lcom/didi/frame/realtime/SlideVoiceView;->mSlideView:Lcom/didi/frame/realtime/slide/SlideCallView;

    invoke-virtual {v0, p1}, Lcom/didi/frame/realtime/slide/SlideCallView;->onUp(Landroid/view/MotionEvent;)V

    .line 82
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/didi/frame/realtime/SlideVoiceView;->setVisibility(I)V

    goto :goto_0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/didi/frame/realtime/SlideVoiceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public move(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/didi/frame/realtime/SlideVoiceView;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/realtime/SlideVoiceView;->mSlideView:Lcom/didi/frame/realtime/slide/SlideCallView;

    invoke-virtual {v0, p1}, Lcom/didi/frame/realtime/slide/SlideCallView;->onMove(Landroid/view/MotionEvent;)V

    .line 94
    iget-object v0, p0, Lcom/didi/frame/realtime/SlideVoiceView;->mVoiceView:Lcom/didi/frame/realtime/voice/VoiceCallView;

    invoke-virtual {v0, p1}, Lcom/didi/frame/realtime/voice/VoiceCallView;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public setFinishSurTime(JJ)V
    .locals 0
    .parameter "finish"
    .parameter "surp"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/didi/frame/realtime/SlideVoiceView;->finishTime:J

    .line 66
    iput-wide p3, p0, Lcom/didi/frame/realtime/SlideVoiceView;->surplusTime:J

    .line 67
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/frame/realtime/SlideVoiceView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/didi/frame/realtime/SlideVoiceView;->noticeView:Landroid/widget/TextView;

    const v1, 0x7f0b04a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object v0, p0, Lcom/didi/frame/realtime/SlideVoiceView;->mVoiceView:Lcom/didi/frame/realtime/voice/VoiceCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->startRecord()V

    .line 74
    return-void
.end method

.method public tick(J)V
    .locals 4
    .parameter "unti"

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/didi/frame/realtime/SlideVoiceView;->surplusTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/didi/frame/realtime/SlideVoiceView;->finishTime:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/didi/frame/realtime/SlideVoiceView;->noticeView:Landroid/widget/TextView;

    const v1, 0x7f0b04a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-wide v0, p0, Lcom/didi/frame/realtime/SlideVoiceView;->surplusTime:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 57
    const-string v0, "vc_record_countdown"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/didi/frame/realtime/SlideVoiceView;->noticeView:Landroid/widget/TextView;

    const v1, 0x7f0b04a9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/realtime/SlideVoiceView;->noticeView:Landroid/widget/TextView;

    const v1, 0x7f0b04a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
