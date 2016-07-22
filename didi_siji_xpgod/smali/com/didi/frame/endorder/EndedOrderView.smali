.class public Lcom/didi/frame/endorder/EndedOrderView;
.super Landroid/widget/RelativeLayout;
.source "EndedOrderView.java"

# interfaces
.implements Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$DriverBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/endorder/EndedOrderView$EndedOrderViewListener;
    }
.end annotation


# instance fields
.field private driver:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

.field private icon:Lx/ImageView;

.field private mListener:Lcom/didi/frame/endorder/EndedOrderView$EndedOrderViewListener;

.field private reason:Landroid/widget/TextView;

.field private tip:Landroid/widget/TextView;

.field private title:Lcom/didi/frame/titlebar/TitleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0}, Lcom/didi/frame/endorder/EndedOrderView;->init()V

    .line 46
    invoke-static {p0}, Lcom/didi/frame/endorder/EndedOrderViewHelper;->setEndedOrderView(Lcom/didi/frame/endorder/EndedOrderView;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0}, Lcom/didi/frame/endorder/EndedOrderView;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/didi/frame/endorder/EndedOrderView;->init()V

    .line 36
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/didi/frame/endorder/EndedOrderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300a1

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, view:Landroid/view/View;
    const v1, 0x7f080379

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/titlebar/TitleBar;

    iput-object v1, p0, Lcom/didi/frame/endorder/EndedOrderView;->title:Lcom/didi/frame/titlebar/TitleBar;

    .line 52
    const v1, 0x7f08037c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/frame/endorder/EndedOrderView;->icon:Lx/ImageView;

    .line 53
    const v1, 0x7f08037d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/endorder/EndedOrderView;->reason:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f08037a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    iput-object v1, p0, Lcom/didi/frame/endorder/EndedOrderView;->driver:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    .line 55
    const v1, 0x7f080318

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/endorder/EndedOrderView;->tip:Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lcom/didi/frame/endorder/EndedOrderView;->driver:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    invoke-virtual {v1, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$DriverBarListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method public enableIMView()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/didi/frame/endorder/EndedOrderView;->driver:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->enableIMView()V

    .line 99
    return-void
.end method

.method public getTitleBar()Lcom/didi/frame/titlebar/TitleBar;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/didi/frame/endorder/EndedOrderView;->title:Lcom/didi/frame/titlebar/TitleBar;

    return-object v0
.end method

.method public invisibleIMView()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/didi/frame/endorder/EndedOrderView;->driver:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->invisibleIMView()V

    .line 91
    return-void
.end method

.method public onDriverBarIMClicked()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/didi/frame/endorder/EndedOrderView;->mListener:Lcom/didi/frame/endorder/EndedOrderView$EndedOrderViewListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/didi/frame/endorder/EndedOrderView;->mListener:Lcom/didi/frame/endorder/EndedOrderView$EndedOrderViewListener;

    invoke-interface {v0}, Lcom/didi/frame/endorder/EndedOrderView$EndedOrderViewListener;->onDriverBarIMClicked()V

    .line 106
    :cond_0
    return-void
.end method

.method public setDriver(Lcom/didi/car/model/CarDriver;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 75
    return-void
.end method

.method public setDriver(Lcom/didi/taxi/model/TaxiDriver;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/frame/endorder/EndedOrderView;->driver:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->setDriver(Lcom/didi/taxi/model/TaxiDriver;)V

    .line 71
    return-void
.end method

.method public setIMUnRead(I)V
    .locals 1
    .parameter "unread"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/didi/frame/endorder/EndedOrderView;->driver:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->setIMUnRead(I)V

    .line 95
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/didi/frame/endorder/EndedOrderView;->icon:Lx/ImageView;

    invoke-virtual {v0, p1}, Lx/ImageView;->setImageResource(I)V

    .line 62
    return-void
.end method

.method public setListener(Lcom/didi/frame/endorder/EndedOrderView$EndedOrderViewListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/didi/frame/endorder/EndedOrderView;->mListener:Lcom/didi/frame/endorder/EndedOrderView$EndedOrderViewListener;

    .line 83
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 1
    .parameter "re"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/didi/frame/endorder/EndedOrderView;->reason:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/didi/frame/endorder/EndedOrderView;->tip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method
