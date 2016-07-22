.class Landroid/support/v7/widget/StaggeredGridLayoutManager$2;
.super Landroid/support/v7/widget/z;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1998
    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$2;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/z;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/graphics/PointF;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2001
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$2;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)I

    move-result v1

    .line 2002
    if-nez v1, :cond_0

    .line 2003
    const/4 v0, 0x0

    .line 2008
    :goto_0
    return-object v0

    .line 2005
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$2;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/StaggeredGridLayoutManager;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2006
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 2008
    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method
