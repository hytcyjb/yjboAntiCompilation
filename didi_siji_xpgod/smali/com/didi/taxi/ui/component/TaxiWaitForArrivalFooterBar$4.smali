.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$4;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalFooterBar.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->checkFoundCouponView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$4;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$4;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mGameImageIcon:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->access$400(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;)Lx/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 220
    return-void
.end method
