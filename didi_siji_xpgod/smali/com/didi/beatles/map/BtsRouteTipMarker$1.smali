.class Lcom/didi/beatles/map/BtsRouteTipMarker$1;
.super Ljava/lang/Object;
.source "BtsRouteTipMarker.java"

# interfaces
.implements Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/map/BtsRouteTipMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/map/BtsRouteTipMarker;


# direct methods
.method constructor <init>(Lcom/didi/beatles/map/BtsRouteTipMarker;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$1;->this$0:Lcom/didi/beatles/map/BtsRouteTipMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishLayout(Landroid/view/View;Lcom/didi/beatles/map/BtsRoutePoint;)V
    .locals 3
    .parameter "view"
    .parameter "point"

    .prologue
    .line 77
    new-instance v0, Lcom/didi/beatles/map/BtsRouteTipMarker$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/didi/beatles/map/BtsRouteTipMarker$1$1;-><init>(Lcom/didi/beatles/map/BtsRouteTipMarker$1;Landroid/view/View;Lcom/didi/beatles/map/BtsRoutePoint;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    return-void
.end method
