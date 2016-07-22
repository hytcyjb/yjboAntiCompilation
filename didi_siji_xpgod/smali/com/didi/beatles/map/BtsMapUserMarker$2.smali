.class Lcom/didi/beatles/map/BtsMapUserMarker$2;
.super Ljava/lang/Object;
.source "BtsMapUserMarker.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/map/BtsMapUserMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/map/BtsMapUserMarker;


# direct methods
.method constructor <init>(Lcom/didi/beatles/map/BtsMapUserMarker;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/didi/beatles/map/BtsMapUserMarker$2;->this$0:Lcom/didi/beatles/map/BtsMapUserMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    if-eq v0, v1, :cond_0

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->updateBtsMapUserMarker()V

    goto :goto_0
.end method
