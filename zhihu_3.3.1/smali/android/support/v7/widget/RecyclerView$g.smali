.class public abstract Landroid/support/v7/widget/RecyclerView$g;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8587
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8599
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$g;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 8600
    return-void
.end method

.method public a(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 8617
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 8618
    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8641
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->e()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/support/v7/widget/RecyclerView$g;->a(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V

    .line 8643
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8608
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8578
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$g;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 8579
    return-void
.end method
