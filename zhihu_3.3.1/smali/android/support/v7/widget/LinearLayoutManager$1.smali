.class Landroid/support/v7/widget/LinearLayoutManager$1;
.super Landroid/support/v7/widget/z;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager$1;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/z;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/graphics/PointF;
    .locals 1
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$1;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->d(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
