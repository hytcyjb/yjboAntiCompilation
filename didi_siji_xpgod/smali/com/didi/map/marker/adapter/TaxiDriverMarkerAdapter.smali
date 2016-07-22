.class public Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;
.super Lcom/didi/map/marker/adapter/BaseInfoAdapter;
.source "TaxiDriverMarkerAdapter.java"


# instance fields
.field private mDriver:Lcom/didi/taxi/model/TaxiDriver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;-><init>()V

    .line 23
    const v0, 0x7f0300de

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;->setLayout(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public setDriver(Lcom/didi/taxi/model/TaxiDriver;)V
    .locals 0
    .parameter "driver"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;->mDriver:Lcom/didi/taxi/model/TaxiDriver;

    .line 31
    return-void
.end method

.method protected setInfo(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 42
    iget-object v4, p0, Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;->mDriver:Lcom/didi/taxi/model/TaxiDriver;

    if-nez v4, :cond_0

    .line 53
    :goto_0
    return-void

    .line 45
    :cond_0
    const v4, 0x7f08036d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 46
    .local v1, name:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;->mDriver:Lcom/didi/taxi/model/TaxiDriver;

    iget-object v4, v4, Lcom/didi/taxi/model/TaxiDriver;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v4, 0x7f0804c2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 48
    .local v3, taxi:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;->mDriver:Lcom/didi/taxi/model/TaxiDriver;

    iget-object v5, v5, Lcom/didi/taxi/model/TaxiDriver;->card:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;->mDriver:Lcom/didi/taxi/model/TaxiDriver;

    iget-object v5, v5, Lcom/didi/taxi/model/TaxiDriver;->company:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v4, 0x7f0804c3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, count:Landroid/widget/TextView;
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v4

    const v5, 0x7f0b030a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;->mDriver:Lcom/didi/taxi/model/TaxiDriver;

    iget v8, v8, Lcom/didi/taxi/model/TaxiDriver;->orderCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/didi/common/base/BaseApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v4, 0x7f0804c1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/didi/common/ui/component/FiveStar;

    .line 52
    .local v2, star:Lcom/didi/common/ui/component/FiveStar;
    iget-object v4, p0, Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;->mDriver:Lcom/didi/taxi/model/TaxiDriver;

    iget v4, v4, Lcom/didi/taxi/model/TaxiDriver;->level:I

    invoke-virtual {v2, v4}, Lcom/didi/common/ui/component/FiveStar;->setLevel(I)V

    goto :goto_0
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const v3, 0x7f0804ba

    .line 34
    iget-object v2, p0, Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 35
    .local v0, photo:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 36
    iget-object v2, p0, Lcom/didi/map/marker/adapter/TaxiDriverMarkerAdapter;->mPress:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 37
    .local v1, photop:Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    return-void
.end method
