.class public Lcom/didi/frame/complaint/ComplaintView;
.super Landroid/widget/RelativeLayout;
.source "ComplaintView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;,
        Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;
    }
.end annotation


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private compListener:Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;

.field private confirm:Lx/Button;

.field private confirmListener:Landroid/view/View$OnClickListener;

.field private inputListener:Landroid/view/View$OnClickListener;

.field private isOtherCheck:Z

.field private listener1:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

.field private listener2:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

.field private listener3:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

.field private listener4:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

.field private listener5:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

.field private noticeView:Landroid/widget/TextView;

.field private otherLayout:Landroid/widget/RelativeLayout;

.field private reason1:Lcom/didi/frame/complaint/ComplaintReasonView;

.field private reason2:Lcom/didi/frame/complaint/ComplaintReasonView;

.field private reason3:Lcom/didi/frame/complaint/ComplaintReasonView;

.field private reason4:Lcom/didi/frame/complaint/ComplaintReasonView;

.field private reason5:Lcom/didi/frame/complaint/ComplaintReasonView;

.field private reasonOther:Landroid/widget/EditText;

.field private scrollView:Lcom/didi/common/ui/component/SimpleScrollView;

.field private titleBar:Lcom/didi/frame/titlebar/TitleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$1;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->listener1:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    .line 174
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$2;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->listener2:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    .line 193
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$3;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->listener3:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    .line 212
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$4;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->listener4:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    .line 232
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$5;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$5;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->listener5:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    .line 252
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$6;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$6;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->inputListener:Landroid/view/View$OnClickListener;

    .line 274
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$7;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$7;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->confirmListener:Landroid/view/View$OnClickListener;

    .line 282
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$8;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$8;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->clickListener:Landroid/view/View$OnClickListener;

    .line 50
    invoke-direct {p0}, Lcom/didi/frame/complaint/ComplaintView;->init()V

    .line 51
    invoke-static {p0}, Lcom/didi/frame/complaint/ComplaintViewHelper;->setComplaintView(Lcom/didi/frame/complaint/ComplaintView;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$1;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->listener1:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    .line 174
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$2;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->listener2:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    .line 193
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$3;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->listener3:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    .line 212
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$4;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->listener4:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    .line 232
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$5;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$5;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->listener5:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    .line 252
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$6;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$6;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->inputListener:Landroid/view/View$OnClickListener;

    .line 274
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$7;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$7;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->confirmListener:Landroid/view/View$OnClickListener;

    .line 282
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$8;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$8;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->clickListener:Landroid/view/View$OnClickListener;

    .line 45
    invoke-direct {p0}, Lcom/didi/frame/complaint/ComplaintView;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 155
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$1;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->listener1:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    .line 174
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$2;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->listener2:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    .line 193
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$3;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->listener3:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    .line 212
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$4;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->listener4:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    .line 232
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$5;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$5;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->listener5:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    .line 252
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$6;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$6;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->inputListener:Landroid/view/View$OnClickListener;

    .line 274
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$7;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$7;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->confirmListener:Landroid/view/View$OnClickListener;

    .line 282
    new-instance v0, Lcom/didi/frame/complaint/ComplaintView$8;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintView$8;-><init>(Lcom/didi/frame/complaint/ComplaintView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->clickListener:Landroid/view/View$OnClickListener;

    .line 40
    invoke-direct {p0}, Lcom/didi/frame/complaint/ComplaintView;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->reason1:Lcom/didi/frame/complaint/ComplaintReasonView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->reason2:Lcom/didi/frame/complaint/ComplaintReasonView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->reason3:Lcom/didi/frame/complaint/ComplaintReasonView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->reason4:Lcom/didi/frame/complaint/ComplaintReasonView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->reason5:Lcom/didi/frame/complaint/ComplaintReasonView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/frame/complaint/ComplaintView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/didi/frame/complaint/ComplaintView;->resetInputLayout()V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->compListener:Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/frame/complaint/ComplaintView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/didi/frame/complaint/ComplaintView;->isOtherCheck:Z

    return v0
.end method

.method static synthetic access$702(Lcom/didi/frame/complaint/ComplaintView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/didi/frame/complaint/ComplaintView;->isOtherCheck:Z

    return p1
.end method

.method static synthetic access$800(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/common/ui/component/SimpleScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->scrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/didi/frame/complaint/ComplaintView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->otherLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/didi/frame/complaint/ComplaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030081

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0801c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->noticeView:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f0801c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/titlebar/TitleBar;

    iput-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 58
    const v1, 0x7f080310

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/complaint/ComplaintReasonView;

    iput-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason1:Lcom/didi/frame/complaint/ComplaintReasonView;

    .line 59
    const v1, 0x7f080311

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/complaint/ComplaintReasonView;

    iput-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason2:Lcom/didi/frame/complaint/ComplaintReasonView;

    .line 60
    const v1, 0x7f080312

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/complaint/ComplaintReasonView;

    iput-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason3:Lcom/didi/frame/complaint/ComplaintReasonView;

    .line 61
    const v1, 0x7f080313

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/complaint/ComplaintReasonView;

    iput-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason4:Lcom/didi/frame/complaint/ComplaintReasonView;

    .line 62
    const v1, 0x7f080314

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/complaint/ComplaintReasonView;

    iput-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason5:Lcom/didi/frame/complaint/ComplaintReasonView;

    .line 63
    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/TaxiPreferences;->isOpenShareTrip()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_0

    .line 64
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason5:Lcom/didi/frame/complaint/ComplaintReasonView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/frame/complaint/ComplaintReasonView;->setVisibility(I)V

    .line 68
    :goto_0
    const v1, 0x7f0801c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reasonOther:Landroid/widget/EditText;

    .line 69
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reasonOther:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 70
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reasonOther:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/didi/frame/complaint/ComplaintView;->inputListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v1, 0x7f0801c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->otherLayout:Landroid/widget/RelativeLayout;

    .line 72
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->otherLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/didi/frame/complaint/ComplaintView;->inputListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0801ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/Button;

    iput-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->confirm:Lx/Button;

    .line 74
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->confirm:Lx/Button;

    iget-object v2, p0, Lcom/didi/frame/complaint/ComplaintView;->confirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f0801c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/SimpleScrollView;

    iput-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->scrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    .line 76
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason5:Lcom/didi/frame/complaint/ComplaintReasonView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/didi/frame/complaint/ComplaintReasonView;->setVisibility(I)V

    goto :goto_0
.end method

.method private resetInputLayout()V
    .locals 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/didi/frame/complaint/ComplaintView;->isOtherCheck:Z

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/complaint/ComplaintView;->isOtherCheck:Z

    .line 150
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->scrollView:Lcom/didi/common/ui/component/SimpleScrollView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SimpleScrollView;->moveBack()V

    .line 151
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->otherLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public getCheckNum()I
    .locals 2

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, number:I
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason1:Lcom/didi/frame/complaint/ComplaintReasonView;

    invoke-virtual {v1}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason2:Lcom/didi/frame/complaint/ComplaintReasonView;

    invoke-virtual {v1}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const/4 v0, 0x2

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason3:Lcom/didi/frame/complaint/ComplaintReasonView;

    invoke-virtual {v1}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    const/4 v0, 0x3

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason4:Lcom/didi/frame/complaint/ComplaintReasonView;

    invoke-virtual {v1}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    const/4 v0, 0x4

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason5:Lcom/didi/frame/complaint/ComplaintReasonView;

    invoke-virtual {v1}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    const/4 v0, 0x5

    .line 113
    :cond_4
    iget-boolean v1, p0, Lcom/didi/frame/complaint/ComplaintView;->isOtherCheck:Z

    if-eqz v1, :cond_5

    .line 114
    const/4 v0, 0x6

    .line 115
    :cond_5
    return v0
.end method

.method public getReasonTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    const-string v0, ""

    .line 120
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason1:Lcom/didi/frame/complaint/ComplaintReasonView;

    invoke-virtual {v1}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason1:Lcom/didi/frame/complaint/ComplaintReasonView;

    invoke-virtual {v1}, Lcom/didi/frame/complaint/ComplaintReasonView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason2:Lcom/didi/frame/complaint/ComplaintReasonView;

    invoke-virtual {v1}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason2:Lcom/didi/frame/complaint/ComplaintReasonView;

    invoke-virtual {v1}, Lcom/didi/frame/complaint/ComplaintReasonView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason3:Lcom/didi/frame/complaint/ComplaintReasonView;

    invoke-virtual {v1}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason3:Lcom/didi/frame/complaint/ComplaintReasonView;

    invoke-virtual {v1}, Lcom/didi/frame/complaint/ComplaintReasonView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason4:Lcom/didi/frame/complaint/ComplaintReasonView;

    invoke-virtual {v1}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason4:Lcom/didi/frame/complaint/ComplaintReasonView;

    invoke-virtual {v1}, Lcom/didi/frame/complaint/ComplaintReasonView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason5:Lcom/didi/frame/complaint/ComplaintReasonView;

    invoke-virtual {v1}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 129
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reason5:Lcom/didi/frame/complaint/ComplaintReasonView;

    invoke-virtual {v1}, Lcom/didi/frame/complaint/ComplaintReasonView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_4
    iget-boolean v1, p0, Lcom/didi/frame/complaint/ComplaintView;->isOtherCheck:Z

    if-eqz v1, :cond_5

    .line 131
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reasonOther:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_5
    return-object v0
.end method

.method public getTitleBar()Lcom/didi/frame/titlebar/TitleBar;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    return-object v0
.end method

.method public hideInputMethod()V
    .locals 3

    .prologue
    .line 143
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/frame/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 144
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reasonOther:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 145
    return-void
.end method

.method public setCompNotice(Ljava/lang/String;)V
    .locals 1
    .parameter "tip"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->noticeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public setReasons([Ljava/lang/String;Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;)V
    .locals 5
    .parameter "str"
    .parameter "listener"

    .prologue
    const/4 v4, 0x4

    .line 80
    array-length v0, p1

    if-lt v0, v4, :cond_0

    .line 81
    iput-object p2, p0, Lcom/didi/frame/complaint/ComplaintView;->compListener:Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;

    .line 82
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->reason1:Lcom/didi/frame/complaint/ComplaintReasonView;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "["

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/complaint/ComplaintView;->listener1:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/complaint/ComplaintReasonView;->setTitle(Ljava/lang/String;Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;)V

    .line 83
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->reason2:Lcom/didi/frame/complaint/ComplaintReasonView;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/complaint/ComplaintView;->listener2:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/complaint/ComplaintReasonView;->setTitle(Ljava/lang/String;Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;)V

    .line 84
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->reason3:Lcom/didi/frame/complaint/ComplaintReasonView;

    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/complaint/ComplaintView;->listener3:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/complaint/ComplaintReasonView;->setTitle(Ljava/lang/String;Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;)V

    .line 85
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->reason4:Lcom/didi/frame/complaint/ComplaintReasonView;

    const/4 v1, 0x3

    aget-object v1, p1, v1

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/complaint/ComplaintView;->listener4:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/complaint/ComplaintReasonView;->setTitle(Ljava/lang/String;Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;)V

    .line 87
    :cond_0
    array-length v0, p1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView;->reason5:Lcom/didi/frame/complaint/ComplaintReasonView;

    aget-object v1, p1, v4

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/complaint/ComplaintView;->listener5:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/complaint/ComplaintReasonView;->setTitle(Ljava/lang/String;Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;)V

    .line 91
    :cond_1
    return-void
.end method

.method public showInputMethod()V
    .locals 3

    .prologue
    .line 137
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/frame/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 138
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintView;->reasonOther:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 139
    return-void
.end method
