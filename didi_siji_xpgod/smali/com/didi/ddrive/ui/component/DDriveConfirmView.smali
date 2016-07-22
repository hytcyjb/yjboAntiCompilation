.class public Lcom/didi/ddrive/ui/component/DDriveConfirmView;
.super Landroid/widget/RelativeLayout;
.source "DDriveConfirmView.java"


# instance fields
.field private mConfirm:Lx/TextView;

.field private mListener:Lcom/didi/ddrive/listener/DDriveConfirmListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveConfirmView;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveConfirmView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveConfirmView;->init()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/ui/component/DDriveConfirmView;)Lcom/didi/ddrive/listener/DDriveConfirmListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveConfirmView;->mListener:Lcom/didi/ddrive/listener/DDriveConfirmListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveConfirmView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03008c

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, view:Landroid/view/View;
    const v1, 0x7f080323

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/TextView;

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveConfirmView;->mConfirm:Lx/TextView;

    .line 41
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveConfirmView;->mConfirm:Lx/TextView;

    new-instance v2, Lcom/didi/ddrive/ui/component/DDriveConfirmView$1;

    invoke-direct {v2, p0}, Lcom/didi/ddrive/ui/component/DDriveConfirmView$1;-><init>(Lcom/didi/ddrive/ui/component/DDriveConfirmView;)V

    invoke-virtual {v1, v2}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public setDDriveConfirmListener(Lcom/didi/ddrive/listener/DDriveConfirmListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveConfirmView;->mListener:Lcom/didi/ddrive/listener/DDriveConfirmListener;

    .line 59
    return-void
.end method

.method public updateConfirmButtonTxt(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveConfirmView;->mConfirm:Lx/TextView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveConfirmView;->mConfirm:Lx/TextView;

    invoke-virtual {v0, p1}, Lx/TextView;->setText(I)V

    .line 55
    :cond_0
    return-void
.end method
