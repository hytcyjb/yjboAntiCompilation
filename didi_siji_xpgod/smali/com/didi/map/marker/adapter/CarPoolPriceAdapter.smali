.class public Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;
.super Lcom/didi/map/marker/adapter/BaseInfoAdapter;
.source "CarPoolPriceAdapter.java"


# instance fields
.field private mStrPrice:Ljava/lang/String;

.field private mStrRatio:Ljava/lang/String;

.field private txtDiscount:Landroid/widget/TextView;

.field private txtPrice:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->mStrPrice:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->mStrRatio:Ljava/lang/String;

    .line 22
    const v0, 0x7f0300fb

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->setLayout(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public getInfoWindowPressState(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setDefaultInfo()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 27
    invoke-super {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;->setDefaultInfo()V

    .line 28
    iget-object v0, p0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->mWindow:Landroid/view/View;

    const v1, 0x7f08056d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->txtPrice:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->mWindow:Landroid/view/View;

    const v1, 0x7f08056e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->txtDiscount:Landroid/widget/TextView;

    .line 31
    iget-object v0, p0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->mStrPrice:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->txtPrice:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8f66\u8d39{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->mStrPrice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->txtPrice:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->mStrRatio:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->txtDiscount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->mStrRatio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->txtDiscount:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    :goto_1
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->txtPrice:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->txtDiscount:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updatePrice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "price"
    .parameter "ratio"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->mStrPrice:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/didi/map/marker/adapter/CarPoolPriceAdapter;->mStrRatio:Ljava/lang/String;

    .line 49
    return-void
.end method
