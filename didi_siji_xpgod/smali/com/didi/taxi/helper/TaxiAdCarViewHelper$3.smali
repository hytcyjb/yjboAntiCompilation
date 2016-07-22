.class final Lcom/didi/taxi/helper/TaxiAdCarViewHelper$3;
.super Ljava/lang/Object;
.source "TaxiAdCarViewHelper.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/helper/TaxiAdCarViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 146
    invoke-static {}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->access$400()Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->removeCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 147
    #calls: Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->initAdCarView(Landroid/graphics/Bitmap;)V
    invoke-static {p1}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->access$500(Landroid/graphics/Bitmap;)V

    .line 148
    return-void
.end method
