.class Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutViewParent;
.super Landroid/widget/RelativeLayout;
.source "BtsRouteTipMarker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/map/BtsRouteTipMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutViewParent"
.end annotation


# instance fields
.field private custom:Landroid/view/View;

.field private listener:Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutListener;

.field private point:Lcom/didi/beatles/map/BtsRoutePoint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutViewParent;->listener:Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutListener;

    .line 51
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 55
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 56
    iget-object v0, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutViewParent;->listener:Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutListener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutViewParent;->listener:Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutListener;

    iget-object v1, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutViewParent;->custom:Landroid/view/View;

    iget-object v2, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutViewParent;->point:Lcom/didi/beatles/map/BtsRoutePoint;

    invoke-interface {v0, v1, v2}, Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutListener;->onFinishLayout(Landroid/view/View;Lcom/didi/beatles/map/BtsRoutePoint;)V

    .line 59
    :cond_0
    return-void
.end method

.method public setLayoutListener(Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutListener;Landroid/view/View;Lcom/didi/beatles/map/BtsRoutePoint;)V
    .locals 0
    .parameter "lner"
    .parameter "view"
    .parameter "p"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutViewParent;->listener:Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutListener;

    .line 45
    iput-object p2, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutViewParent;->custom:Landroid/view/View;

    .line 46
    iput-object p3, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutViewParent;->point:Lcom/didi/beatles/map/BtsRoutePoint;

    .line 47
    return-void
.end method
