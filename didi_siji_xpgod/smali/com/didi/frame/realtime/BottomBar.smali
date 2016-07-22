.class public Lcom/didi/frame/realtime/BottomBar;
.super Landroid/widget/RelativeLayout;
.source "BottomBar.java"


# static fields
.field private static final CHANNEL_TYPE_ANIMATION_DURATION:I = 0x32

.field public static final DEFAULT_CHANNEL_TYPE:I = 0x0

.field public static final TEMPLE_CHANNEL_TYPE:I = -0x1

.field public static final TEXT_CHANNEL_TYPE:I = 0x2

.field public static final TEXT_ONLY_CHANNEL_TYPE:I = 0x1

.field private static mChannelType:I


# instance fields
.field private channelListener:Landroid/view/View$OnClickListener;

.field dialog:Lcom/didi/common/helper/DialogHelper;

.field private editListener:Landroid/view/View$OnClickListener;

.field private infoListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private mActivityLayout:Lx/RelativeLayout;

.field private mActivityView:Lx/TextView;

.field private mBookCall:Lx/Button;

.field private mCarLayout:Lx/RelativeLayout;

.field private mChannel:Lx/ImageView;

.field private mFlierLayout:Lx/RelativeLayout;

.field private mLayout:Lx/RelativeLayout;

.field private mListener:Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;

.field private mTextLayout:Lx/RelativeLayout;

.field private mTopicLayout:Lx/LinearLayout;

.field private nowCallListener:Landroid/view/View$OnTouchListener;

.field private rightBtnListener:Landroid/view/View$OnTouchListener;

.field private textListener:Landroid/view/animation/Animation$AnimationListener;

.field private voiceListener:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 165
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$1;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->nowCallListener:Landroid/view/View$OnTouchListener;

    .line 193
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$2;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->rightBtnListener:Landroid/view/View$OnTouchListener;

    .line 211
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$3;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->channelListener:Landroid/view/View$OnClickListener;

    .line 231
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$4;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->editListener:Landroid/view/View$OnClickListener;

    .line 258
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$5;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$5;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->infoListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 348
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$7;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$7;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->voiceListener:Landroid/view/animation/Animation$AnimationListener;

    .line 366
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$8;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$8;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->textListener:Landroid/view/animation/Animation$AnimationListener;

    .line 67
    invoke-direct {p0}, Lcom/didi/frame/realtime/BottomBar;->init()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 165
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$1;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->nowCallListener:Landroid/view/View$OnTouchListener;

    .line 193
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$2;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->rightBtnListener:Landroid/view/View$OnTouchListener;

    .line 211
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$3;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->channelListener:Landroid/view/View$OnClickListener;

    .line 231
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$4;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->editListener:Landroid/view/View$OnClickListener;

    .line 258
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$5;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$5;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->infoListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 348
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$7;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$7;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->voiceListener:Landroid/view/animation/Animation$AnimationListener;

    .line 366
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$8;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$8;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->textListener:Landroid/view/animation/Animation$AnimationListener;

    .line 77
    invoke-direct {p0}, Lcom/didi/frame/realtime/BottomBar;->init()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$1;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->nowCallListener:Landroid/view/View$OnTouchListener;

    .line 193
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$2;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->rightBtnListener:Landroid/view/View$OnTouchListener;

    .line 211
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$3;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->channelListener:Landroid/view/View$OnClickListener;

    .line 231
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$4;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->editListener:Landroid/view/View$OnClickListener;

    .line 258
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$5;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$5;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->infoListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 348
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$7;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$7;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->voiceListener:Landroid/view/animation/Animation$AnimationListener;

    .line 366
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$8;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$8;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->textListener:Landroid/view/animation/Animation$AnimationListener;

    .line 72
    invoke-direct {p0}, Lcom/didi/frame/realtime/BottomBar;->init()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/realtime/BottomBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/didi/frame/realtime/BottomBar;->hideViewOnTouchDown()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/frame/realtime/BottomBar;)Lx/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/frame/realtime/BottomBar;)Lx/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTextLayout:Lx/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/didi/frame/realtime/BottomBar;)Lx/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mFlierLayout:Lx/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/didi/frame/realtime/BottomBar;)Lx/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTopicLayout:Lx/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/frame/realtime/BottomBar;)Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mListener:Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/frame/realtime/BottomBar;)Lx/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/frame/realtime/BottomBar;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/didi/frame/realtime/BottomBar;->mChannelType:I

    return v0
.end method

.method static synthetic access$600(Lcom/didi/frame/realtime/BottomBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/didi/frame/realtime/BottomBar;->showInputText()V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/frame/realtime/BottomBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/didi/frame/realtime/BottomBar;->showConfimDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/frame/realtime/BottomBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/didi/frame/realtime/BottomBar;->showVoiceText()V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/frame/realtime/BottomBar;)Lx/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mCarLayout:Lx/RelativeLayout;

    return-object v0
.end method

.method private channelAnimation(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 9
    .parameter "view"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 308
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;

    invoke-virtual {v2}, Lx/RelativeLayout;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 309
    .local v0, amtion:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 310
    invoke-virtual {v0, p2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 311
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 312
    return-void
.end method

.method private hideViewOnTouchDown()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/BottomBar;->scaleToHideAnimation(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/BottomBar;->scaleToHideAnimation(Landroid/view/View;)V

    .line 131
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const v3, 0x7f020296

    .line 82
    invoke-virtual {p0}, Lcom/didi/frame/realtime/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300e4

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0804d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/RelativeLayout;

    iput-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;

    .line 84
    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;

    iget-object v2, p0, Lcom/didi/frame/realtime/BottomBar;->nowCallListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lx/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    const v1, 0x7f0804e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/Button;

    iput-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    .line 86
    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    iget-object v2, p0, Lcom/didi/frame/realtime/BottomBar;->rightBtnListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lx/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    const v1, 0x7f0804d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;

    .line 88
    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;

    iget-object v2, p0, Lcom/didi/frame/realtime/BottomBar;->channelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lx/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orderStyleReal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/didi/frame/realtime/BottomBar;->mChannelType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 91
    const v1, 0x7f0804d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/RelativeLayout;

    iput-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mTextLayout:Lx/RelativeLayout;

    .line 92
    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mTextLayout:Lx/RelativeLayout;

    invoke-virtual {v1, v3}, Lx/RelativeLayout;->setBackgroundResource(I)V

    .line 93
    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mTextLayout:Lx/RelativeLayout;

    iget-object v2, p0, Lcom/didi/frame/realtime/BottomBar;->editListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lx/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v1, 0x7f0804dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/RelativeLayout;

    iput-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mCarLayout:Lx/RelativeLayout;

    .line 95
    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mCarLayout:Lx/RelativeLayout;

    invoke-virtual {v1, v3}, Lx/RelativeLayout;->setBackgroundResource(I)V

    .line 96
    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mCarLayout:Lx/RelativeLayout;

    iget-object v2, p0, Lcom/didi/frame/realtime/BottomBar;->editListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lx/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v1, 0x7f0804df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/RelativeLayout;

    iput-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mActivityLayout:Lx/RelativeLayout;

    .line 99
    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mActivityLayout:Lx/RelativeLayout;

    iget-object v2, p0, Lcom/didi/frame/realtime/BottomBar;->editListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lx/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v1, 0x7f0804e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/TextView;

    iput-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mActivityView:Lx/TextView;

    .line 102
    const v1, 0x7f0804e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/RelativeLayout;

    iput-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mFlierLayout:Lx/RelativeLayout;

    .line 103
    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mFlierLayout:Lx/RelativeLayout;

    invoke-virtual {v1, v3}, Lx/RelativeLayout;->setBackgroundResource(I)V

    .line 104
    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mFlierLayout:Lx/RelativeLayout;

    iget-object v2, p0, Lcom/didi/frame/realtime/BottomBar;->editListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lx/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v1, 0x7f0804e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/LinearLayout;

    iput-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mTopicLayout:Lx/LinearLayout;

    .line 107
    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->mTopicLayout:Lx/LinearLayout;

    iget-object v2, p0, Lcom/didi/frame/realtime/BottomBar;->editListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lx/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method private scaleToHideAnimation(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 327
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 328
    .local v0, mAlphaAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 329
    new-instance v1, Lcom/didi/frame/realtime/BottomBar$6;

    invoke-direct {v1, p0, p1}, Lcom/didi/frame/realtime/BottomBar$6;-><init>(Lcom/didi/frame/realtime/BottomBar;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 344
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 345
    return-void
.end method

.method private scaleToShowAnimation(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 318
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 319
    .local v0, mAlphaAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 320
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 321
    return-void
.end method

.method private showConfimDialog()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 249
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/frame/realtime/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 250
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->MICRO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 251
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b049a

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0499

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b03fb

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->dialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->infoListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 254
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 255
    return-void
.end method

.method private showInputText()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 291
    sput v2, Lcom/didi/frame/realtime/BottomBar;->mChannelType:I

    .line 292
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;

    const v1, 0x7f020294

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 293
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTextLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTextLayout:Lx/RelativeLayout;

    invoke-virtual {v0}, Lx/RelativeLayout;->bringToFront()V

    .line 295
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTextLayout:Lx/RelativeLayout;

    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->voiceListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/realtime/BottomBar;->channelAnimation(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    .line 296
    return-void
.end method

.method private showVoiceText()V
    .locals 2

    .prologue
    .line 299
    const/4 v0, -0x1

    sput v0, Lcom/didi/frame/realtime/BottomBar;->mChannelType:I

    .line 300
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;

    const v1, 0x7f020291

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 301
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;

    invoke-virtual {v0}, Lx/RelativeLayout;->bringToFront()V

    .line 303
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;

    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar;->textListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/realtime/BottomBar;->channelAnimation(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    .line 304
    return-void
.end method


# virtual methods
.method public changeToActivity()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 412
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTextLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mCarLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTopicLayout:Lx/LinearLayout;

    invoke-virtual {v0, v2}, Lx/LinearLayout;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    invoke-virtual {v0, v2}, Lx/Button;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mActivityLayout:Lx/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mActivityView:Lx/TextView;

    const v1, 0x7f0b049c

    invoke-virtual {v0, v1}, Lx/TextView;->setText(I)V

    .line 420
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mFlierLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 421
    return-void
.end method

.method public changeToBeatles()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 454
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTextLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mCarLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    invoke-virtual {v0, v2}, Lx/Button;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTopicLayout:Lx/LinearLayout;

    invoke-virtual {v0, v2}, Lx/LinearLayout;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mActivityLayout:Lx/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mActivityView:Lx/TextView;

    const v1, 0x7f0b049d

    invoke-virtual {v0, v1}, Lx/TextView;->setText(I)V

    .line 462
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mFlierLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 463
    return-void
.end method

.method public changeToCar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 388
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTextLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mCarLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mActivityLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTopicLayout:Lx/LinearLayout;

    invoke-virtual {v0, v1}, Lx/LinearLayout;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mFlierLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    invoke-virtual {v0, v2}, Lx/Button;->setVisibility(I)V

    .line 396
    invoke-virtual {p0}, Lcom/didi/frame/realtime/BottomBar;->enableBookCall()V

    .line 397
    return-void
.end method

.method public changeToFlier()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 400
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTextLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mCarLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mActivityLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mFlierLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTopicLayout:Lx/LinearLayout;

    invoke-virtual {v0, v1}, Lx/LinearLayout;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    invoke-virtual {v0, v2}, Lx/Button;->setVisibility(I)V

    .line 408
    invoke-virtual {p0}, Lcom/didi/frame/realtime/BottomBar;->enableBookCall()V

    .line 409
    return-void
.end method

.method public changeToTaxi()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orderStyleTaxi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/didi/frame/realtime/BottomBar;->mChannelType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 467
    sget v0, Lcom/didi/frame/realtime/BottomBar;->mChannelType:I

    if-eqz v0, :cond_0

    sget v0, Lcom/didi/frame/realtime/BottomBar;->mChannelType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mCarLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;

    invoke-virtual {v0, v3}, Lx/ImageView;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTextLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v3}, Lx/RelativeLayout;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;

    const v1, 0x7f020294

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 485
    :goto_0
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mActivityLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mFlierLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    invoke-virtual {v0, v3}, Lx/Button;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTopicLayout:Lx/LinearLayout;

    invoke-virtual {v0, v2}, Lx/LinearLayout;->setVisibility(I)V

    .line 489
    invoke-virtual {p0}, Lcom/didi/frame/realtime/BottomBar;->enableBookCall()V

    .line 490
    return-void

    .line 473
    :cond_1
    sget v0, Lcom/didi/frame/realtime/BottomBar;->mChannelType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 474
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTextLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mCarLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v3}, Lx/RelativeLayout;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;

    const v1, 0x7f020291

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 480
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mCarLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;

    invoke-virtual {v0, v3}, Lx/ImageView;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v3}, Lx/RelativeLayout;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTextLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public changeToTopic()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 424
    iget-object v7, p0, Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;

    invoke-virtual {v7, v5}, Lx/RelativeLayout;->setVisibility(I)V

    .line 425
    iget-object v7, p0, Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;

    invoke-virtual {v7, v5}, Lx/ImageView;->setVisibility(I)V

    .line 426
    iget-object v7, p0, Lcom/didi/frame/realtime/BottomBar;->mTextLayout:Lx/RelativeLayout;

    invoke-virtual {v7, v5}, Lx/RelativeLayout;->setVisibility(I)V

    .line 427
    iget-object v7, p0, Lcom/didi/frame/realtime/BottomBar;->mCarLayout:Lx/RelativeLayout;

    invoke-virtual {v7, v5}, Lx/RelativeLayout;->setVisibility(I)V

    .line 428
    iget-object v7, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    invoke-virtual {v7, v5}, Lx/Button;->setVisibility(I)V

    .line 429
    iget-object v7, p0, Lcom/didi/frame/realtime/BottomBar;->mActivityLayout:Lx/RelativeLayout;

    invoke-virtual {v7, v5}, Lx/RelativeLayout;->setVisibility(I)V

    .line 430
    iget-object v7, p0, Lcom/didi/frame/realtime/BottomBar;->mFlierLayout:Lx/RelativeLayout;

    invoke-virtual {v7, v5}, Lx/RelativeLayout;->setVisibility(I)V

    .line 431
    iget-object v7, p0, Lcom/didi/frame/realtime/BottomBar;->mTopicLayout:Lx/LinearLayout;

    invoke-virtual {v7, v6}, Lx/LinearLayout;->setVisibility(I)V

    .line 432
    iget-object v7, p0, Lcom/didi/frame/realtime/BottomBar;->mTopicLayout:Lx/LinearLayout;

    const v8, 0x7f0804e2

    invoke-virtual {v7, v8}, Lx/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/TextView;

    .line 433
    .local v1, topic1:Lx/TextView;
    iget-object v7, p0, Lcom/didi/frame/realtime/BottomBar;->mTopicLayout:Lx/LinearLayout;

    const v8, 0x7f0804e3

    invoke-virtual {v7, v8}, Lx/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/TextView;

    .line 434
    .local v2, topic2:Lx/TextView;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getTopicButtonText1()Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, topicText1:Ljava/lang/String;
    invoke-virtual {v1, v3}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getTopicButtonText2()Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, topicText2:Ljava/lang/String;
    invoke-virtual {v2, v4}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    invoke-virtual {v2, v5}, Lx/TextView;->setVisibility(I)V

    .line 442
    new-instance v0, Lcom/didi/frame/realtime/BottomBar$9;

    invoke-direct {v0, p0}, Lcom/didi/frame/realtime/BottomBar$9;-><init>(Lcom/didi/frame/realtime/BottomBar;)V

    .line 448
    .local v0, listener:Landroid/view/View$OnClickListener;
    invoke-virtual {v1, v0}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    invoke-virtual {v2, v0}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    return-void

    .end local v0           #listener:Landroid/view/View$OnClickListener;
    :cond_0
    move v5, v6

    .line 439
    goto :goto_0
.end method

.method public disableBookCall()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/Button;->setEnabled(Z)V

    .line 500
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Lx/Button;->setBackgroundResource(I)V

    .line 501
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    const v1, 0x7f070023

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lx/Button;->setTextColor(I)V

    .line 502
    return-void
.end method

.method public enableBookCall()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lx/Button;->setEnabled(Z)V

    .line 494
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    const v1, 0x7f02028d

    invoke-virtual {v0, v1}, Lx/Button;->setBackgroundResource(I)V

    .line 495
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    const v1, 0x7f07002f

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lx/Button;->setTextColor(I)V

    .line 496
    return-void
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/didi/frame/realtime/BottomBar;->mChannelType:I

    return v0
.end method

.method public setCallEnable(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;

    invoke-virtual {v0, p1}, Lx/RelativeLayout;->setEnabled(Z)V

    .line 144
    :cond_0
    return-void
.end method

.method public setEditViewEnble()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 147
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mCarLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setEnabled(Z)V

    .line 152
    :goto_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isFlierAbility()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mFlierLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setEnabled(Z)V

    .line 157
    :goto_1
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mCarLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setClickable(Z)V

    .line 158
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTextLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setClickable(Z)V

    .line 159
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mActivityLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setClickable(Z)V

    .line 160
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mFlierLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setClickable(Z)V

    .line 161
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mTopicLayout:Lx/LinearLayout;

    invoke-virtual {v0, v1}, Lx/LinearLayout;->setClickable(Z)V

    .line 162
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mCarLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setEnabled(Z)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mFlierLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setListener(Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/didi/frame/realtime/BottomBar;->mListener:Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;

    .line 114
    return-void
.end method

.method public setRightBtnName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    invoke-virtual {v0, p1}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 385
    return-void
.end method

.method public setStyle(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orderStyleTaxi1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/didi/frame/realtime/BottomBar;->mChannelType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 119
    sput p1, Lcom/didi/frame/realtime/BottomBar;->mChannelType:I

    .line 120
    return-void
.end method

.method public showViewOnTouchUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    invoke-virtual {v0, v1}, Lx/Button;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/BottomBar;->scaleToShowAnimation(Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;

    invoke-direct {p0, v0}, Lcom/didi/frame/realtime/BottomBar;->scaleToShowAnimation(Landroid/view/View;)V

    .line 139
    return-void
.end method
