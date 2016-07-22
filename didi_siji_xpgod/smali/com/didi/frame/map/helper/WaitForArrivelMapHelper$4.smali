.class final Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$4;
.super Ljava/lang/Object;
.source "WaitForArrivelMapHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->setMapCenterByPointNotZoom(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$lat:D

.field final synthetic val$lng:D


# direct methods
.method constructor <init>(DD)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 328
    iput-wide p1, p0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$4;->val$lat:D

    iput-wide p3, p0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$4;->val$lng:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$4;->val$lat:D

    iget-wide v2, p0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$4;->val$lng:D

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 333
    return-void
.end method
