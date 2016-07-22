.class public Lcom/didi/car/ui/component/CarTimeConsultView;
.super Lcom/didi/common/base/BaseLayout;
.source "CarTimeConsultView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/ui/component/CarTimeConsultView$TimeConsultListener;
    }
.end annotation


# instance fields
.field private mBtnNo:Lx/Button;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onNoClicked"
        id = 0x7f0802d2
    .end annotation
.end field

.field private mBtnYes:Lx/Button;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onYesClicked"
        id = 0x7f0802d3
    .end annotation
.end field

.field private mListener:Lcom/didi/car/ui/component/CarTimeConsultView$TimeConsultListener;

.field private mTxtConsult:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802d1
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarTimeConsultView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarTimeConsultView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarTimeConsultView;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method


# virtual methods
.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f030072

    return v0
.end method

.method public onNoClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/car/ui/component/CarTimeConsultView;->mListener:Lcom/didi/car/ui/component/CarTimeConsultView$TimeConsultListener;

    .line 59
    .local v0, l:Lcom/didi/car/ui/component/CarTimeConsultView$TimeConsultListener;
    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p1}, Lcom/didi/car/ui/component/CarTimeConsultView$TimeConsultListener;->onTimeConsultNoClicked(Landroid/view/View;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onYesClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/didi/car/ui/component/CarTimeConsultView;->mListener:Lcom/didi/car/ui/component/CarTimeConsultView$TimeConsultListener;

    .line 66
    .local v0, l:Lcom/didi/car/ui/component/CarTimeConsultView$TimeConsultListener;
    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1}, Lcom/didi/car/ui/component/CarTimeConsultView$TimeConsultListener;->onTimeConsultYesClicked(Landroid/view/View;)V

    .line 69
    :cond_0
    return-void
.end method

.method public setConsultInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/didi/car/ui/component/CarTimeConsultView;->mTxtConsult:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public setListener(Lcom/didi/car/ui/component/CarTimeConsultView$TimeConsultListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/didi/car/ui/component/CarTimeConsultView;->mListener:Lcom/didi/car/ui/component/CarTimeConsultView$TimeConsultListener;

    .line 51
    return-void
.end method
