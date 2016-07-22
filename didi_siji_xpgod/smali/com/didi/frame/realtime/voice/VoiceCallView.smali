.class public Lcom/didi/frame/realtime/voice/VoiceCallView;
.super Landroid/widget/RelativeLayout;
.source "VoiceCallView.java"


# static fields
.field private static final RECORD_START:I = 0x0

.field private static final RECORD_STOP:I = 0x1

.field private static final SCALE_MAX:F = 2.5f

.field public static final VOICE_PATH:Ljava/lang/String; = "record.amr"

.field private static final VOICE_RECEIVED_DURATION:I = 0x78


# instance fields
.field private audioRe:Lcom/didi/frame/realtime/voice/AudioRecorder;

.field private cancelVoice:Landroid/widget/TextView;

.field private imgHandler:Landroid/os/Handler;

.field private isCancel:Z

.field private mCancelLayout:Lx/RelativeLayout;

.field private mReleaseLayout:Lx/RelativeLayout;

.field private path:Ljava/lang/String;

.field private receView:Lx/ImageView;

.field private recordState:I

.field private speakerView:Lx/ImageView;

.field private unSpeakerView:Lx/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 160
    new-instance v0, Lcom/didi/frame/realtime/voice/VoiceCallView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/voice/VoiceCallView$2;-><init>(Lcom/didi/frame/realtime/voice/VoiceCallView;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->imgHandler:Landroid/os/Handler;

    .line 58
    invoke-direct {p0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 160
    new-instance v0, Lcom/didi/frame/realtime/voice/VoiceCallView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/voice/VoiceCallView$2;-><init>(Lcom/didi/frame/realtime/voice/VoiceCallView;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->imgHandler:Landroid/os/Handler;

    .line 68
    invoke-direct {p0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 160
    new-instance v0, Lcom/didi/frame/realtime/voice/VoiceCallView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/voice/VoiceCallView$2;-><init>(Lcom/didi/frame/realtime/voice/VoiceCallView;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->imgHandler:Landroid/os/Handler;

    .line 63
    invoke-direct {p0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->init()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/realtime/voice/VoiceCallView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->recordState:I

    return v0
.end method

.method static synthetic access$100(Lcom/didi/frame/realtime/voice/VoiceCallView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->imgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private animateThread()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/didi/frame/realtime/voice/VoiceCallView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/voice/VoiceCallView$1;-><init>(Lcom/didi/frame/realtime/voice/VoiceCallView;)V

    .line 157
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 158
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300e9

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0804f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->speakerView:Lx/ImageView;

    .line 75
    const v1, 0x7f0804f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->unSpeakerView:Lx/ImageView;

    .line 76
    const v1, 0x7f0804f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->receView:Lx/ImageView;

    .line 77
    const v1, 0x7f0804f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->cancelVoice:Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->cancelVoice:Landroid/widget/TextView;

    const v2, 0x7f0b04a7

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->cancelVoice:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    const v1, 0x7f0804f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/RelativeLayout;

    iput-object v1, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->mCancelLayout:Lx/RelativeLayout;

    .line 81
    const v1, 0x7f0804fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/RelativeLayout;

    iput-object v1, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->mReleaseLayout:Lx/RelativeLayout;

    .line 82
    return-void
.end method

.method private recevieAnimate()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/high16 v2, 0x4020

    const/high16 v1, 0x3f80

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    .line 105
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 107
    .local v0, mScaleAnimation:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 108
    invoke-virtual {v0, v11}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 109
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 110
    invoke-virtual {p0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040012

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    .line 111
    .local v9, alphaAnimation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 112
    invoke-virtual {v9, v11}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 113
    invoke-virtual {v9, v5}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 114
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 115
    .local v10, set:Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 116
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 117
    iget-object v1, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->receView:Lx/ImageView;

    invoke-virtual {v1, v10}, Lx/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    return-void
.end method

.method private releaseCancelView()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->mCancelLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->mReleaseLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->unSpeakerView:Lx/ImageView;

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->speakerView:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setVisibility(I)V

    .line 219
    return-void
.end method

.method private resetView()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->unCancelView()V

    .line 100
    return-void
.end method

.method private scanOldFile(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 173
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 177
    :cond_0
    return-void
.end method

.method private startAudioRecorder()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->audioRe:Lcom/didi/frame/realtime/voice/AudioRecorder;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->audioRe:Lcom/didi/frame/realtime/voice/AudioRecorder;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/voice/AudioRecorder;->stop()V

    .line 129
    :cond_0
    new-instance v0, Lcom/didi/frame/realtime/voice/AudioRecorder;

    iget-object v1, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/didi/frame/realtime/voice/AudioRecorder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->audioRe:Lcom/didi/frame/realtime/voice/AudioRecorder;

    .line 130
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->audioRe:Lcom/didi/frame/realtime/voice/AudioRecorder;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/voice/AudioRecorder;->start()V

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->recordState:I

    .line 133
    return-void
.end method

.method private stopAnimate()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->receView:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->clearAnimation()V

    .line 123
    invoke-direct {p0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->stopAudioRecorder()V

    .line 124
    return-void
.end method

.method private stopAudioRecorder()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->recordState:I

    .line 137
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->audioRe:Lcom/didi/frame/realtime/voice/AudioRecorder;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/voice/AudioRecorder;->stop()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->audioRe:Lcom/didi/frame/realtime/voice/AudioRecorder;

    .line 139
    return-void
.end method

.method private unCancel()V
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->isCancel:Z

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->isCancel:Z

    .line 202
    invoke-direct {p0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->unCancelView()V

    goto :goto_0
.end method

.method private unCancelView()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->mCancelLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->mReleaseLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->unSpeakerView:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->speakerView:Lx/ImageView;

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 211
    return-void
.end method


# virtual methods
.method public getCancelState()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->isCancel:Z

    return v0
.end method

.method public getVoicePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->path:Ljava/lang/String;

    return-object v0
.end method

.method public onMove(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 182
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 183
    .local v1, y:F
    invoke-virtual {p0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    .line 184
    const-string v2, "VoiceCallView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCancel1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->isCancel:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v2, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->receView:Lx/ImageView;

    invoke-virtual {v2}, Lx/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->receView:Lx/ImageView;

    invoke-virtual {v2}, Lx/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    .line 186
    iget-boolean v2, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->isCancel:Z

    if-eqz v2, :cond_0

    .line 196
    :goto_0
    return-void

    .line 188
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->isCancel:Z

    .line 189
    invoke-direct {p0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->releaseCancelView()V

    goto :goto_0

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->unCancel()V

    goto :goto_0

    .line 194
    :cond_2
    invoke-direct {p0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->unCancel()V

    goto :goto_0
.end method

.method public startRecord()V
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->setVisibility(I)V

    .line 86
    invoke-direct {p0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->resetView()V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "record.amr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->path:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->scanOldFile(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->recevieAnimate()V

    .line 90
    invoke-direct {p0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->startAudioRecorder()V

    .line 91
    return-void
.end method

.method public stopRecord()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->stopAnimate()V

    .line 95
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->setVisibility(I)V

    .line 96
    return-void
.end method
