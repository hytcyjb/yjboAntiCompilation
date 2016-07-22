.class final Lcom/didi/map/MapController$2;
.super Ljava/lang/Thread;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/MapController;->zoomCenterWithBts(DDLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$lat:D

.field final synthetic val$list:Ljava/util/ArrayList;

.field final synthetic val$lng:D


# direct methods
.method constructor <init>(DDLjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    iput-wide p1, p0, Lcom/didi/map/MapController$2;->val$lat:D

    iput-wide p3, p0, Lcom/didi/map/MapController$2;->val$lng:D

    iput-object p5, p0, Lcom/didi/map/MapController$2;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 235
    :try_start_0
    new-instance v1, Lcom/didi/map/MapController$2$1;

    invoke-direct {v1, p0}, Lcom/didi/map/MapController$2$1;-><init>(Lcom/didi/map/MapController$2;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
