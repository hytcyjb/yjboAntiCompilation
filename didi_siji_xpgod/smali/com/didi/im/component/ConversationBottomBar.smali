.class public Lcom/didi/im/component/ConversationBottomBar;
.super Landroid/widget/RelativeLayout;
.source "ConversationBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;
    }
.end annotation


# static fields
.field private static final TEXT_CHANNEL:I = 0x1

.field private static final VOICE_CHANNEL:I


# instance fields
.field private commonMsgListener:Landroid/view/View$OnClickListener;

.field private etInput:Lx/EditText;

.field private mListener:Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;

.field onTouchListener:Landroid/view/View$OnTouchListener;

.field private textMegListener:Landroid/view/View$OnClickListener;

.field private textSwitchListener:Landroid/view/View$OnClickListener;

.field private textWatcher:Landroid/text/TextWatcher;

.field private tvCommonMsg:Lx/TextView;

.field private tvSendTextMsg:Lx/TextView;

.field private tvTextSwitch:Lx/TextView;

.field private tvVoiceRecord:Lx/TextView;

.field private tvVoiceSwitch:Lx/TextView;

.field private viewType:I

.field private voiceRecordClickListener:Landroid/view/View$OnClickListener;

.field private voiceSwitchListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/im/component/ConversationBottomBar;->viewType:I

    .line 101
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$1;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$1;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->voiceRecordClickListener:Landroid/view/View$OnClickListener;

    .line 112
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$2;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$2;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->textWatcher:Landroid/text/TextWatcher;

    .line 144
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$3;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$3;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 188
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$4;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$4;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->textSwitchListener:Landroid/view/View$OnClickListener;

    .line 207
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$5;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$5;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->voiceSwitchListener:Landroid/view/View$OnClickListener;

    .line 216
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$6;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$6;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->commonMsgListener:Landroid/view/View$OnClickListener;

    .line 224
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$7;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$7;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->textMegListener:Landroid/view/View$OnClickListener;

    .line 49
    invoke-direct {p0}, Lcom/didi/im/component/ConversationBottomBar;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/im/component/ConversationBottomBar;->viewType:I

    .line 101
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$1;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$1;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->voiceRecordClickListener:Landroid/view/View$OnClickListener;

    .line 112
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$2;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$2;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->textWatcher:Landroid/text/TextWatcher;

    .line 144
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$3;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$3;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 188
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$4;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$4;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->textSwitchListener:Landroid/view/View$OnClickListener;

    .line 207
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$5;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$5;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->voiceSwitchListener:Landroid/view/View$OnClickListener;

    .line 216
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$6;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$6;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->commonMsgListener:Landroid/view/View$OnClickListener;

    .line 224
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$7;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$7;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->textMegListener:Landroid/view/View$OnClickListener;

    .line 54
    invoke-direct {p0}, Lcom/didi/im/component/ConversationBottomBar;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/im/component/ConversationBottomBar;->viewType:I

    .line 101
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$1;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$1;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->voiceRecordClickListener:Landroid/view/View$OnClickListener;

    .line 112
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$2;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$2;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->textWatcher:Landroid/text/TextWatcher;

    .line 144
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$3;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$3;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 188
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$4;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$4;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->textSwitchListener:Landroid/view/View$OnClickListener;

    .line 207
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$5;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$5;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->voiceSwitchListener:Landroid/view/View$OnClickListener;

    .line 216
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$6;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$6;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->commonMsgListener:Landroid/view/View$OnClickListener;

    .line 224
    new-instance v0, Lcom/didi/im/component/ConversationBottomBar$7;

    invoke-direct {v0, p0}, Lcom/didi/im/component/ConversationBottomBar$7;-><init>(Lcom/didi/im/component/ConversationBottomBar;)V

    iput-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->textMegListener:Landroid/view/View$OnClickListener;

    .line 59
    invoke-direct {p0}, Lcom/didi/im/component/ConversationBottomBar;->init()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/didi/im/component/ConversationBottomBar;)Lx/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvVoiceRecord:Lx/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/im/component/ConversationBottomBar;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/didi/im/component/ConversationBottomBar;->setBottomBarRightButton(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/im/component/ConversationBottomBar;)Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->mListener:Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/im/component/ConversationBottomBar;)Lx/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->etInput:Lx/EditText;

    return-object v0
.end method

.method private hideInputLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 284
    invoke-virtual {p0}, Lcom/didi/im/component/ConversationBottomBar;->hideSoftKeyBoard()V

    .line 285
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvVoiceSwitch:Lx/TextView;

    invoke-virtual {v0, v1}, Lx/TextView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->etInput:Lx/EditText;

    invoke-virtual {v0, v1}, Lx/EditText;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvSendTextMsg:Lx/TextView;

    invoke-virtual {v0, v1}, Lx/TextView;->setVisibility(I)V

    .line 288
    return-void
.end method

.method private hideVoiceLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 257
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvTextSwitch:Lx/TextView;

    invoke-virtual {v0, v1}, Lx/TextView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvVoiceRecord:Lx/TextView;

    invoke-virtual {v0, v1}, Lx/TextView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvCommonMsg:Lx/TextView;

    invoke-virtual {v0, v1}, Lx/TextView;->setVisibility(I)V

    .line 260
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/didi/im/component/ConversationBottomBar;->initViews()V

    .line 64
    invoke-direct {p0}, Lcom/didi/im/component/ConversationBottomBar;->initInputState()V

    .line 65
    invoke-direct {p0}, Lcom/didi/im/component/ConversationBottomBar;->setListeners()V

    .line 66
    return-void
.end method

.method private initInputState()V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getIMInputState()I

    move-result v0

    .line 70
    .local v0, state:I
    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/didi/im/component/ConversationBottomBar;->switchToVoiceInput()V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/didi/im/component/ConversationBottomBar;->switchToTextInput(Z)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/didi/im/component/ConversationBottomBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300b4

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0803c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/TextView;

    iput-object v1, p0, Lcom/didi/im/component/ConversationBottomBar;->tvTextSwitch:Lx/TextView;

    .line 84
    const v1, 0x7f0803c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/TextView;

    iput-object v1, p0, Lcom/didi/im/component/ConversationBottomBar;->tvVoiceRecord:Lx/TextView;

    .line 85
    const v1, 0x7f0803c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/TextView;

    iput-object v1, p0, Lcom/didi/im/component/ConversationBottomBar;->tvCommonMsg:Lx/TextView;

    .line 86
    const v1, 0x7f0803c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/TextView;

    iput-object v1, p0, Lcom/didi/im/component/ConversationBottomBar;->tvVoiceSwitch:Lx/TextView;

    .line 87
    const v1, 0x7f0803c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/EditText;

    iput-object v1, p0, Lcom/didi/im/component/ConversationBottomBar;->etInput:Lx/EditText;

    .line 88
    const v1, 0x7f0803c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/TextView;

    iput-object v1, p0, Lcom/didi/im/component/ConversationBottomBar;->tvSendTextMsg:Lx/TextView;

    .line 89
    return-void
.end method

.method private setBottomBarRightButton(Ljava/lang/String;)V
    .locals 4
    .parameter "content"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 135
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/didi/im/component/ConversationBottomBar;->viewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvSendTextMsg:Lx/TextView;

    invoke-virtual {v0, v2}, Lx/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvCommonMsg:Lx/TextView;

    invoke-virtual {v0, v3}, Lx/TextView;->setVisibility(I)V

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvCommonMsg:Lx/TextView;

    invoke-virtual {v0, v2}, Lx/TextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvSendTextMsg:Lx/TextView;

    invoke-virtual {v0, v3}, Lx/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvTextSwitch:Lx/TextView;

    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar;->textSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvVoiceSwitch:Lx/TextView;

    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar;->voiceSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvCommonMsg:Lx/TextView;

    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar;->commonMsgListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvVoiceRecord:Lx/TextView;

    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar;->voiceRecordClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvSendTextMsg:Lx/TextView;

    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar;->textMegListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvVoiceRecord:Lx/TextView;

    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lx/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->etInput:Lx/EditText;

    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lx/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    return-void
.end method

.method private setRightButton()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->etInput:Lx/EditText;

    invoke-virtual {v0}, Lx/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/didi/im/component/ConversationBottomBar;->viewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvSendTextMsg:Lx/TextView;

    invoke-virtual {v0, v2}, Lx/TextView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvCommonMsg:Lx/TextView;

    invoke-virtual {v0, v3}, Lx/TextView;->setVisibility(I)V

    .line 281
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvCommonMsg:Lx/TextView;

    invoke-virtual {v0, v2}, Lx/TextView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvSendTextMsg:Lx/TextView;

    invoke-virtual {v0, v3}, Lx/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showInputLayout(Z)V
    .locals 2
    .parameter "first"

    .prologue
    const/4 v1, 0x0

    .line 263
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/im/component/ConversationBottomBar;->viewType:I

    .line 264
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvVoiceSwitch:Lx/TextView;

    invoke-virtual {v0, v1}, Lx/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->etInput:Lx/EditText;

    invoke-virtual {v0, v1}, Lx/EditText;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvSendTextMsg:Lx/TextView;

    invoke-virtual {v0, v1}, Lx/TextView;->setVisibility(I)V

    .line 267
    if-nez p1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/didi/im/component/ConversationBottomBar;->showSoftKeyBoard()V

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/didi/im/component/ConversationBottomBar;->setRightButton()V

    .line 271
    return-void
.end method

.method private showVoiceLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    iput v1, p0, Lcom/didi/im/component/ConversationBottomBar;->viewType:I

    .line 250
    invoke-virtual {p0}, Lcom/didi/im/component/ConversationBottomBar;->hideSoftKeyBoard()V

    .line 251
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvTextSwitch:Lx/TextView;

    invoke-virtual {v0, v1}, Lx/TextView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvVoiceRecord:Lx/TextView;

    invoke-virtual {v0, v1}, Lx/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvCommonMsg:Lx/TextView;

    invoke-virtual {v0, v1}, Lx/TextView;->setVisibility(I)V

    .line 254
    return-void
.end method


# virtual methods
.method public getInput()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar;->etInput:Lx/EditText;

    invoke-virtual {v1}, Lx/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 292
    .local v0, text:Landroid/text/Editable;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hideSoftKeyBoard()V
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/didi/im/component/ConversationBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar;->etInput:Lx/EditText;

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 246
    return-void
.end method

.method public saveInPutState()V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget v1, p0, Lcom/didi/im/component/ConversationBottomBar;->viewType:I

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setIMInputState(I)V

    .line 79
    return-void
.end method

.method public setConversationBottomBarListener(Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/didi/im/component/ConversationBottomBar;->mListener:Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;

    .line 307
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 1
    .parameter "draft"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->etInput:Lx/EditText;

    invoke-virtual {v0, p1}, Lx/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 297
    return-void
.end method

.method public showSoftKeyBoard()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->etInput:Lx/EditText;

    invoke-virtual {v0}, Lx/EditText;->requestFocus()Z

    .line 241
    invoke-virtual {p0}, Lcom/didi/im/component/ConversationBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar;->etInput:Lx/EditText;

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->showInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 242
    return-void
.end method

.method public switchToSessionOut()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvVoiceRecord:Lx/TextView;

    invoke-virtual {v0, v1}, Lx/TextView;->setEnabled(Z)V

    .line 301
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvCommonMsg:Lx/TextView;

    invoke-virtual {v0, v1}, Lx/TextView;->setEnabled(Z)V

    .line 302
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar;->tvSendTextMsg:Lx/TextView;

    invoke-virtual {v0, v1}, Lx/TextView;->setEnabled(Z)V

    .line 303
    return-void
.end method

.method public switchToTextInput(Z)V
    .locals 0
    .parameter "first"

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/didi/im/component/ConversationBottomBar;->hideVoiceLayout()V

    .line 199
    invoke-direct {p0, p1}, Lcom/didi/im/component/ConversationBottomBar;->showInputLayout(Z)V

    .line 200
    return-void
.end method

.method public switchToVoiceInput()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/didi/im/component/ConversationBottomBar;->hideInputLayout()V

    .line 204
    invoke-direct {p0}, Lcom/didi/im/component/ConversationBottomBar;->showVoiceLayout()V

    .line 205
    return-void
.end method
