.class final Lcom/didi/map/MapController$6;
.super Ljava/lang/Thread;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/MapController;->zoomWithTwoMarkers(DDDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$flat:D

.field final synthetic val$flng:D

.field final synthetic val$tlat:D

.field final synthetic val$tlng:D


# direct methods
.method constructor <init>(DDDD)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    iput-wide p1, p0, Lcom/didi/map/MapController$6;->val$flat:D

    iput-wide p3, p0, Lcom/didi/map/MapController$6;->val$flng:D

    iput-wide p5, p0, Lcom/didi/map/MapController$6;->val$tlat:D

    iput-wide p7, p0, Lcom/didi/map/MapController$6;->val$tlng:D

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 350
    :try_start_0
    iget-wide v0, p0, Lcom/didi/map/MapController$6;->val$flat:D

    iget-wide v2, p0, Lcom/didi/map/MapController$6;->val$flng:D

    iget-wide v4, p0, Lcom/didi/map/MapController$6;->val$tlat:D

    iget-wide v6, p0, Lcom/didi/map/MapController$6;->val$tlng:D

    invoke-static/range {v0 .. v7}, Lcom/didi/map/ZoomManager;->zoomSpan(DDDD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v8

    .line 352
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
