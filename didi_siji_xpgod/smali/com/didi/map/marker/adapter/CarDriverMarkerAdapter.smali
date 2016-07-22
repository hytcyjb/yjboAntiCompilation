.class public Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;
.super Lcom/didi/map/marker/adapter/BaseInfoAdapter;
.source "CarDriverMarkerAdapter.java"


# instance fields
.field private mDriver:Lcom/didi/car/model/CarDriver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;-><init>()V

    .line 24
    const v0, 0x7f0300de

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;->setLayout(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public setDriver(Lcom/didi/car/model/CarDriver;)V
    .locals 0
    .parameter "driver"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;->mDriver:Lcom/didi/car/model/CarDriver;

    .line 30
    return-void
.end method

.method protected setInfo(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    .line 41
    iget-object v5, p0, Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;->mDriver:Lcom/didi/car/model/CarDriver;

    if-nez v5, :cond_0

    .line 58
    :goto_0
    return-void

    .line 44
    :cond_0
    const v5, 0x7f0804bb

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 45
    .local v2, photoBG:Landroid/widget/ImageView;
    invoke-static {}, Lcom/didi/common/util/Utils;->isInChristmasDay()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 46
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    :goto_1
    const v5, 0x7f08036d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 51
    .local v1, name:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;->mDriver:Lcom/didi/car/model/CarDriver;

    iget-object v5, v5, Lcom/didi/car/model/CarDriver;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const v5, 0x7f0804c2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 53
    .local v4, taxi:Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;->mDriver:Lcom/didi/car/model/CarDriver;

    iget-object v6, v6, Lcom/didi/car/model/CarDriver;->card:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;->mDriver:Lcom/didi/car/model/CarDriver;

    iget-object v6, v6, Lcom/didi/car/model/CarDriver;->carType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v5, 0x7f0804c3

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    .local v0, count:Landroid/widget/TextView;
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v5

    const v6, 0x7f0b030a

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;->mDriver:Lcom/didi/car/model/CarDriver;

    iget v8, v8, Lcom/didi/car/model/CarDriver;->orderCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/didi/common/base/BaseApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v5, 0x7f0804c1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/didi/common/ui/component/FiveStar;

    .line 57
    .local v3, star:Lcom/didi/common/ui/component/FiveStar;
    iget-object v5, p0, Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;->mDriver:Lcom/didi/car/model/CarDriver;

    iget v5, v5, Lcom/didi/car/model/CarDriver;->level:F

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Lcom/didi/common/ui/component/FiveStar;->setLevel(I)V

    goto/16 :goto_0

    .line 48
    .end local v0           #count:Landroid/widget/TextView;
    .end local v1           #name:Landroid/widget/TextView;
    .end local v3           #star:Lcom/didi/common/ui/component/FiveStar;
    .end local v4           #taxi:Landroid/widget/TextView;
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const v3, 0x7f0804ba

    .line 33
    iget-object v2, p0, Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 34
    .local v0, photo:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 35
    iget-object v2, p0, Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;->mPress:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 36
    .local v1, photop:Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 37
    return-void
.end method
