.class public Lcom/didi/car/ui/component/CarCancelTripView;
.super Landroid/widget/RelativeLayout;
.source "CarCancelTripView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;,
        Lcom/didi/car/ui/component/CarCancelTripView$ReasonItemListener;,
        Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;
    }
.end annotation


# instance fields
.field private btnConfirm:Lx/Button;

.field private btnConfirmListener:Landroid/view/View$OnClickListener;

.field private cancelListener:Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;

.field private cancelTripReasonViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/car/ui/component/CancelTripReasonView;",
            ">;"
        }
    .end annotation
.end field

.field private carImgAnim:Lx/ImageView;

.field private carImgAnimBg:Lx/ImageView;

.field private carRat:F

.field private clickListener:Landroid/view/View$OnClickListener;

.field private currentSelectedIndex:I

.field private inflater:Landroid/view/LayoutInflater;

.field private mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mContext:Landroid/content/Context;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private noticeView:Lcom/didi/common/richtextview/RichTextView;

.field private otherView:Lcom/didi/car/ui/component/CancelTripOtherView;

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
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->ratArray:[F

    .line 55
    const v0, 0x3f456042

    iput v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->carRat:F

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->currentSelectedIndex:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->reasonViewListSize:I

    .line 273
    new-instance v0, Lcom/didi/car/ui/component/CarCancelTripView$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarCancelTripView$2;-><init>(Lcom/didi/car/ui/component/CarCancelTripView;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->btnConfirmListener:Landroid/view/View$OnClickListener;

    .line 281
    new-instance v0, Lcom/didi/car/ui/component/CarCancelTripView$3;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarCancelTripView$3;-><init>(Lcom/didi/car/ui/component/CarCancelTripView;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->clickListener:Landroid/view/View$OnClickListener;

    .line 302
    new-instance v0, Lcom/didi/car/ui/component/CarCancelTripView$4;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarCancelTripView$4;-><init>(Lcom/didi/car/ui/component/CarCancelTripView;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 72
    invoke-direct {p0, p1}, Lcom/didi/car/ui/component/CarCancelTripView;->init(Landroid/content/Context;)V

    .line 73
    invoke-static {p0}, Lcom/didi/car/helper/CarCancelTripViewHelper;->setCarCancelTripView(Lcom/didi/car/ui/component/CarCancelTripView;)V

    .line 74
    return-void

    .line 54
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
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->ratArray:[F

    .line 55
    const v0, 0x3f456042

    iput v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->carRat:F

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->currentSelectedIndex:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->reasonViewListSize:I

    .line 273
    new-instance v0, Lcom/didi/car/ui/component/CarCancelTripView$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarCancelTripView$2;-><init>(Lcom/didi/car/ui/component/CarCancelTripView;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->btnConfirmListener:Landroid/view/View$OnClickListener;

    .line 281
    new-instance v0, Lcom/didi/car/ui/component/CarCancelTripView$3;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarCancelTripView$3;-><init>(Lcom/didi/car/ui/component/CarCancelTripView;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->clickListener:Landroid/view/View$OnClickListener;

    .line 302
    new-instance v0, Lcom/didi/car/ui/component/CarCancelTripView$4;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarCancelTripView$4;-><init>(Lcom/didi/car/ui/component/CarCancelTripView;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 67
    invoke-direct {p0, p1}, Lcom/didi/car/ui/component/CarCancelTripView;->init(Landroid/content/Context;)V

    .line 68
    return-void

    .line 54
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
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->ratArray:[F

    .line 55
    const v0, 0x3f456042

    iput v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->carRat:F

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->currentSelectedIndex:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->reasonViewListSize:I

    .line 273
    new-instance v0, Lcom/didi/car/ui/component/CarCancelTripView$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarCancelTripView$2;-><init>(Lcom/didi/car/ui/component/CarCancelTripView;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->btnConfirmListener:Landroid/view/View$OnClickListener;

    .line 281
    new-instance v0, Lcom/didi/car/ui/component/CarCancelTripView$3;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarCancelTripView$3;-><init>(Lcom/didi/car/ui/component/CarCancelTripView;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->clickListener:Landroid/view/View$OnClickListener;

    .line 302
    new-instance v0, Lcom/didi/car/ui/component/CarCancelTripView$4;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarCancelTripView$4;-><init>(Lcom/didi/car/ui/component/CarCancelTripView;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 62
    invoke-direct {p0, p1}, Lcom/didi/car/ui/component/CarCancelTripView;->init(Landroid/content/Context;)V

    .line 63
    return-void

    .line 54
    nop

    :array_0
    .array-data 0x4
        0x83t 0xc0t 0x8at 0x3et
        0x83t 0xc0t 0xat 0x3ft
        0xa0t 0x1at 0x4ft 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/didi/car/ui/component/CarCancelTripView;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->carImgAnimBg:Lx/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/car/ui/component/CarCancelTripView;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->carImgAnim:Lx/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/car/ui/component/CarCancelTripView;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->ratArray:[F

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/car/ui/component/CarCancelTripView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->carRat:F

    return v0
.end method

.method static synthetic access$400(Lcom/didi/car/ui/component/CarCancelTripView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->currentSelectedIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/didi/car/ui/component/CarCancelTripView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->currentSelectedIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/didi/car/ui/component/CarCancelTripView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->cancelTripReasonViewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/car/ui/component/CarCancelTripView;)Lcom/didi/car/ui/component/CancelTripOtherView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->otherView:Lcom/didi/car/ui/component/CancelTripOtherView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/car/ui/component/CarCancelTripView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarCancelTripView;->disableConfirmBtn()V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/car/ui/component/CarCancelTripView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarCancelTripView;->enableConfirmBtn()V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/car/ui/component/CarCancelTripView;)Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->cancelListener:Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;

    return-object v0
.end method

.method private disableConfirmBtn()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->btnConfirm:Lx/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/Button;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->btnConfirm:Lx/Button;

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Lx/Button;->setBackgroundResource(I)V

    .line 155
    return-void
.end method

.method private enableConfirmBtn()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->btnConfirm:Lx/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lx/Button;->setEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->btnConfirm:Lx/Button;

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Lx/Button;->setBackgroundResource(I)V

    .line 160
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarCancelTripView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->inflater:Landroid/view/LayoutInflater;

    .line 79
    iget-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03004a

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0801b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/richtextview/RichTextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->noticeView:Lcom/didi/common/richtextview/RichTextView;

    .line 81
    const v1, 0x7f0801b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/richtextview/RichTextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->retentionPassengerView:Lcom/didi/common/richtextview/RichTextView;

    .line 82
    const v1, 0x7f0801b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->carImgAnimBg:Lx/ImageView;

    .line 83
    const v1, 0x7f0801b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->carImgAnim:Lx/ImageView;

    .line 84
    iget-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->carImgAnim:Lx/ImageView;

    invoke-virtual {v1}, Lx/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 86
    const v1, 0x7f0801b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/titlebar/TitleBar;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 88
    const v1, 0x7f0801ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/LinearLayout;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->reasonsLayout:Lx/LinearLayout;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->cancelTripReasonViewList:Ljava/util/List;

    .line 91
    const v1, 0x7f0801bb

    invoke-virtual {p0, v1}, Lcom/didi/car/ui/component/CarCancelTripView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/car/ui/component/CancelTripOtherView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->otherView:Lcom/didi/car/ui/component/CancelTripOtherView;

    .line 92
    iget-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->otherView:Lcom/didi/car/ui/component/CancelTripOtherView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/car/ui/component/CancelTripOtherView;->setReasonContentEmpty(Z)V

    .line 93
    iget-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->otherView:Lcom/didi/car/ui/component/CancelTripOtherView;

    invoke-virtual {v1}, Lcom/didi/car/ui/component/CancelTripOtherView;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/component/CarCancelTripView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    const v1, 0x7f0801bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/Button;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->btnConfirm:Lx/Button;

    .line 96
    iget-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->btnConfirm:Lx/Button;

    iget-object v2, p0, Lcom/didi/car/ui/component/CarCancelTripView;->btnConfirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarCancelTripView;->disableConfirmBtn()V

    .line 100
    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->scrollView:Landroid/widget/ScrollView;

    .line 101
    iget-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method


# virtual methods
.method public getCurrentSelectedIndex()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->currentSelectedIndex:I

    return v0
.end method

.method public getReasonTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 199
    const-string v1, ""

    .line 200
    .local v1, title:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/didi/car/ui/component/CarCancelTripView;->reasonViewListSize:I

    if-ge v0, v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/didi/car/ui/component/CarCancelTripView;->cancelTripReasonViewList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/car/ui/component/CancelTripReasonView;

    invoke-virtual {v2}, Lcom/didi/car/ui/component/CancelTripReasonView;->isCheck()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    iget-object v2, p0, Lcom/didi/car/ui/component/CarCancelTripView;->cancelTripReasonViewList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/car/ui/component/CancelTripReasonView;

    invoke-virtual {v2}, Lcom/didi/car/ui/component/CancelTripReasonView;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 206
    :cond_0
    return-object v1

    .line 200
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRemarkContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->otherView:Lcom/didi/car/ui/component/CancelTripOtherView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CancelTripOtherView;->getReasonContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleBar()Lcom/didi/frame/titlebar/TitleBar;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    return-object v0
.end method

.method public hideInputMethod()V
    .locals 3

    .prologue
    .line 235
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/frame/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 236
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->otherView:Lcom/didi/car/ui/component/CancelTripOtherView;

    invoke-virtual {v1}, Lcom/didi/car/ui/component/CancelTripOtherView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 237
    return-void
.end method

.method public setCancelTripNotice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tip"
    .parameter "estimateDesc"
    .parameter "subDesc"

    .prologue
    .line 106
    invoke-static {p3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->noticeView:Lcom/didi/common/richtextview/RichTextView;

    invoke-virtual {v0, p1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_0
    invoke-static {p2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->retentionPassengerView:Lcom/didi/common/richtextview/RichTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setVisibility(I)V

    .line 116
    :goto_1
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->noticeView:Lcom/didi/common/richtextview/RichTextView;

    invoke-virtual {v0, p3}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->retentionPassengerView:Lcom/didi/common/richtextview/RichTextView;

    invoke-virtual {v0, p2}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setCarAnimView(I)V
    .locals 3
    .parameter "step"

    .prologue
    .line 119
    packed-switch p1, :pswitch_data_0

    .line 131
    :goto_0
    iget-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->carImgAnim:Lx/ImageView;

    invoke-virtual {v1}, Lx/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 132
    .local v0, vtb:Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/didi/car/ui/component/CarCancelTripView$1;

    invoke-direct {v1, p0, p1}, Lcom/didi/car/ui/component/CarCancelTripView$1;-><init>(Lcom/didi/car/ui/component/CarCancelTripView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 150
    return-void

    .line 121
    .end local v0           #vtb:Landroid/view/ViewTreeObserver;
    :pswitch_0
    iget-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->carImgAnimBg:Lx/ImageView;

    const v2, 0x7f0200c4

    invoke-virtual {v1, v2}, Lx/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->carImgAnimBg:Lx/ImageView;

    const v2, 0x7f0200c5

    invoke-virtual {v1, v2}, Lx/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->carImgAnimBg:Lx/ImageView;

    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Lx/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setReasons([Ljava/lang/String;[Ljava/lang/String;Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;)V
    .locals 9
    .parameter "iconArray"
    .parameter "textArray"
    .parameter "listener"

    .prologue
    const/4 v8, -0x2

    .line 163
    iput-object p3, p0, Lcom/didi/car/ui/component/CarCancelTripView;->cancelListener:Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;

    .line 164
    if-eqz p2, :cond_3

    .line 166
    iget-object v5, p0, Lcom/didi/car/ui/component/CarCancelTripView;->reasonsLayout:Lx/LinearLayout;

    invoke-virtual {v5}, Lx/LinearLayout;->removeAllViews()V

    .line 167
    iget-object v5, p0, Lcom/didi/car/ui/component/CarCancelTripView;->cancelTripReasonViewList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 168
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v5, p2

    if-ge v0, v5, :cond_2

    .line 169
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 173
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/didi/car/ui/component/CarCancelTripView;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03004c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/didi/car/ui/component/CancelTripReasonView;

    .line 174
    .local v3, reasonOptionView:Lcom/didi/car/ui/component/CancelTripReasonView;
    aget-object v5, p2, v0

    new-instance v6, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;

    invoke-direct {v6, p0, v0}, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;-><init>(Lcom/didi/car/ui/component/CarCancelTripView;I)V

    invoke-virtual {v3, v5, v6}, Lcom/didi/car/ui/component/CancelTripReasonView;->setTitle(Ljava/lang/String;Lcom/didi/car/ui/component/CarCancelTripView$ReasonItemListener;)V

    .line 175
    if-eqz p1, :cond_0

    .line 176
    aget-object v5, p1, v0

    invoke-virtual {v3, v5}, Lcom/didi/car/ui/component/CancelTripReasonView;->setImgIcon(Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object v5, p0, Lcom/didi/car/ui/component/CarCancelTripView;->reasonsLayout:Lx/LinearLayout;

    invoke-virtual {v5, v3, v2}, Lx/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v5, p0, Lcom/didi/car/ui/component/CarCancelTripView;->cancelTripReasonViewList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_1

    .line 181
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 183
    .local v1, paramLine:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/didi/car/ui/component/CarCancelTripView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 184
    .local v4, view:Landroid/view/View;
    const v5, 0x7f070023

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 185
    iget-object v5, p0, Lcom/didi/car/ui/component/CarCancelTripView;->reasonsLayout:Lx/LinearLayout;

    invoke-virtual {v5, v4, v1}, Lx/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    .end local v1           #paramLine:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #reasonOptionView:Lcom/didi/car/ui/component/CancelTripReasonView;
    :cond_2
    array-length v5, p2

    iput v5, p0, Lcom/didi/car/ui/component/CarCancelTripView;->reasonViewListSize:I

    .line 189
    invoke-static {p0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 191
    .end local v0           #index:I
    :cond_3
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarCancelTripView;->hideInputMethod()V

    .line 192
    return-void
.end method

.method public showInputMethod()V
    .locals 3

    .prologue
    .line 229
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/frame/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 230
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView;->otherView:Lcom/didi/car/ui/component/CancelTripOtherView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 231
    return-void
.end method

.method public startCarAnim()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 218
    :cond_0
    return-void
.end method

.method public stopCarAnim()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 225
    :cond_0
    return-void
.end method
