.class public Lcom/didi/ddrive/ui/component/DDriveCancelTripView;
.super Landroid/widget/RelativeLayout;
.source "DDriveCancelTripView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;,
        Lcom/didi/ddrive/ui/component/DDriveCancelTripView$ReasonItemListener;,
        Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;
    }
.end annotation


# instance fields
.field private btnConfirm:Lx/Button;

.field private btnConfirmListener:Landroid/view/View$OnClickListener;

.field private cancelListener:Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;

.field private cancelTripReasonViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;",
            ">;"
        }
    .end annotation
.end field

.field private cancelTripText:Ljava/lang/String;

.field private carRat:F

.field private clickListener:Landroid/view/View$OnClickListener;

.field private currentSelectedIndex:I

.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private otherView:Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;

.field private ratArray:[F

.field private reasonViewListSize:I

.field private reasonsLayout:Lx/LinearLayout;

.field private retentionPassengerView:Lcom/didi/common/richtextview/RichTextView;

.field private scrollView:Landroid/widget/ScrollView;

.field private titleBar:Lcom/didi/frame/titlebar/TitleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->ratArray:[F

    .line 47
    const v0, 0x3f456042

    iput v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->carRat:F

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->currentSelectedIndex:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->reasonViewListSize:I

    .line 264
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$2;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$2;-><init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->btnConfirmListener:Landroid/view/View$OnClickListener;

    .line 272
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$3;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$3;-><init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->clickListener:Landroid/view/View$OnClickListener;

    .line 295
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$4;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$4;-><init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 66
    invoke-direct {p0, p1}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->init(Landroid/content/Context;)V

    .line 67
    invoke-static {p0}, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->setCarCancelTripView(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    .line 68
    return-void

    .line 46
    :array_0
    .array-data 0x4
        0x83t 0xc0t 0x8at 0x3et
        0x83t 0xc0t 0xat 0x3ft
        0xa0t 0x1at 0x4ft 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->ratArray:[F

    .line 47
    const v0, 0x3f456042

    iput v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->carRat:F

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->currentSelectedIndex:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->reasonViewListSize:I

    .line 264
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$2;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$2;-><init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->btnConfirmListener:Landroid/view/View$OnClickListener;

    .line 272
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$3;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$3;-><init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->clickListener:Landroid/view/View$OnClickListener;

    .line 295
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$4;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$4;-><init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 61
    invoke-direct {p0, p1}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->init(Landroid/content/Context;)V

    .line 62
    return-void

    .line 46
    nop

    :array_0
    .array-data 0x4
        0x83t 0xc0t 0x8at 0x3et
        0x83t 0xc0t 0xat 0x3ft
        0xa0t 0x1at 0x4ft 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->ratArray:[F

    .line 47
    const v0, 0x3f456042

    iput v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->carRat:F

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->currentSelectedIndex:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->reasonViewListSize:I

    .line 264
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$2;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$2;-><init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->btnConfirmListener:Landroid/view/View$OnClickListener;

    .line 272
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$3;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$3;-><init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->clickListener:Landroid/view/View$OnClickListener;

    .line 295
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$4;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$4;-><init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 56
    invoke-direct {p0, p1}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->init(Landroid/content/Context;)V

    .line 57
    return-void

    .line 46
    nop

    :array_0
    .array-data 0x4
        0x83t 0xc0t 0x8at 0x3et
        0x83t 0xc0t 0xat 0x3ft
        0xa0t 0x1at 0x4ft 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->currentSelectedIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->currentSelectedIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->cancelTripReasonViewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->otherView:Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->disableConfirmBtn()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->enableConfirmBtn()V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->cancelListener:Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;

    return-object v0
.end method

.method private disableConfirmBtn()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->btnConfirm:Lx/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/Button;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->btnConfirm:Lx/Button;

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Lx/Button;->setBackgroundResource(I)V

    .line 130
    return-void
.end method

.method private enableConfirmBtn()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->btnConfirm:Lx/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lx/Button;->setEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->btnConfirm:Lx/Button;

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Lx/Button;->setBackgroundResource(I)V

    .line 135
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->inflater:Landroid/view/LayoutInflater;

    .line 73
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030088

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0801b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/richtextview/RichTextView;

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->retentionPassengerView:Lcom/didi/common/richtextview/RichTextView;

    .line 77
    const v1, 0x7f0801b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/titlebar/TitleBar;

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 79
    const v1, 0x7f0801ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/LinearLayout;

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->reasonsLayout:Lx/LinearLayout;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->cancelTripReasonViewList:Ljava/util/List;

    .line 83
    const v1, 0x7f0801bb

    invoke-virtual {p0, v1}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->otherView:Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;

    .line 84
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->otherView:Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->setReasonContentEmpty(Z)V

    .line 85
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->otherView:Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;

    invoke-virtual {v1}, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    const-string v1, "morning"

    const-string v2, "setOnFocusChangeListener"

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->otherView:Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;

    invoke-virtual {v1}, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$1;

    invoke-direct {v2, p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$1;-><init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v1, 0x7f0801bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/Button;

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->btnConfirm:Lx/Button;

    .line 111
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->btnConfirm:Lx/Button;

    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->btnConfirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->disableConfirmBtn()V

    .line 115
    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->scrollView:Landroid/widget/ScrollView;

    .line 117
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method


# virtual methods
.method public getCurrentSelectedIndex()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->currentSelectedIndex:I

    return v0
.end method

.method public getReasonTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    const-string v1, ""

    .line 185
    .local v1, title:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->reasonViewListSize:I

    if-ge v0, v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->cancelTripReasonViewList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;

    invoke-virtual {v2}, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->isCheck()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->cancelTripReasonViewList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;

    invoke-virtual {v2}, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 191
    :cond_0
    return-object v1

    .line 185
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRemarkContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->otherView:Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->getReasonContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleBar()Lcom/didi/frame/titlebar/TitleBar;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    return-object v0
.end method

.method public hideInputMethod()V
    .locals 3

    .prologue
    .line 211
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/frame/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 213
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->otherView:Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;

    invoke-virtual {v1}, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 215
    return-void
.end method

.method public setCancelTripNotice(Ljava/lang/String;)V
    .locals 1
    .parameter "tip"

    .prologue
    .line 122
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->retentionPassengerView:Lcom/didi/common/richtextview/RichTextView;

    invoke-virtual {v0, p1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setCancelTripText(Ljava/lang/String;)V
    .locals 1
    .parameter "cancelTripText"

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->setCancelTripText(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public setCancelTripText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "cancelTripText"
    .parameter "feedbackText"

    .prologue
    .line 222
    return-void
.end method

.method public setReasons([Ljava/lang/String;[Ljava/lang/String;Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;)V
    .locals 7
    .parameter "iconArray"
    .parameter "textArray"
    .parameter "listener"

    .prologue
    const/4 v6, -0x2

    .line 139
    iput-object p3, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->cancelListener:Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;

    .line 140
    if-eqz p2, :cond_1

    .line 142
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->reasonsLayout:Lx/LinearLayout;

    invoke-virtual {v3}, Lx/LinearLayout;->removeAllViews()V

    .line 143
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->cancelTripReasonViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 144
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 145
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 148
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x28

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 150
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030087

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;

    .line 152
    .local v2, reasonOptionView:Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;
    aget-object v3, p2, v0

    new-instance v4, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;

    invoke-direct {v4, p0, v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;-><init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;I)V

    invoke-virtual {v2, v3, v4}, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->setTitle(Ljava/lang/String;Lcom/didi/ddrive/ui/component/DDriveCancelTripView$ReasonItemListener;)V

    .line 162
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->reasonsLayout:Lx/LinearLayout;

    invoke-virtual {v3, v2, v1}, Lx/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->cancelTripReasonViewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #reasonOptionView:Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;
    :cond_0
    array-length v3, p2

    iput v3, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->reasonViewListSize:I

    .line 174
    invoke-static {p0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 176
    .end local v0           #index:I
    :cond_1
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->hideInputMethod()V

    .line 177
    return-void
.end method

.method public showInputMethod()V
    .locals 3

    .prologue
    .line 202
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/frame/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 204
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->otherView:Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 205
    return-void
.end method
