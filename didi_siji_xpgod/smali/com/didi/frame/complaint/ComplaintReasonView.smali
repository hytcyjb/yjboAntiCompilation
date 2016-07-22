.class public Lcom/didi/frame/complaint/ComplaintReasonView;
.super Landroid/widget/RelativeLayout;
.source "ComplaintReasonView.java"


# instance fields
.field private check:Lx/ImageView;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private listener:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Lcom/didi/frame/complaint/ComplaintReasonView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintReasonView$1;-><init>(Lcom/didi/frame/complaint/ComplaintReasonView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintReasonView;->clickListener:Landroid/view/View$OnClickListener;

    .line 38
    invoke-direct {p0}, Lcom/didi/frame/complaint/ComplaintReasonView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Lcom/didi/frame/complaint/ComplaintReasonView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintReasonView$1;-><init>(Lcom/didi/frame/complaint/ComplaintReasonView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintReasonView;->clickListener:Landroid/view/View$OnClickListener;

    .line 33
    invoke-direct {p0}, Lcom/didi/frame/complaint/ComplaintReasonView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance v0, Lcom/didi/frame/complaint/ComplaintReasonView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintReasonView$1;-><init>(Lcom/didi/frame/complaint/ComplaintReasonView;)V

    iput-object v0, p0, Lcom/didi/frame/complaint/ComplaintReasonView;->clickListener:Landroid/view/View$OnClickListener;

    .line 28
    invoke-direct {p0}, Lcom/didi/frame/complaint/ComplaintReasonView;->init()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/complaint/ComplaintReasonView;)Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintReasonView;->listener:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/didi/frame/complaint/ComplaintReasonView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030080

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, view:Landroid/view/View;
    const v1, 0x7f08030e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/complaint/ComplaintReasonView;->title:Landroid/widget/TextView;

    .line 44
    const v1, 0x7f08030f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/frame/complaint/ComplaintReasonView;->check:Lx/ImageView;

    .line 45
    iget-object v1, p0, Lcom/didi/frame/complaint/ComplaintReasonView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/didi/frame/complaint/ComplaintReasonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method


# virtual methods
.method public check()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintReasonView;->check:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintReasonView;->check:Lx/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintReasonView;->check:Lx/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintReasonView;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintReasonView;->check:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintReasonView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public setTitle(Ljava/lang/String;Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;)V
    .locals 1
    .parameter "t"
    .parameter "listener"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintReasonView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iput-object p2, p0, Lcom/didi/frame/complaint/ComplaintReasonView;->listener:Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;

    .line 52
    return-void
.end method
