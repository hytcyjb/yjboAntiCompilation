.class public Landroid/support/v7/widget/RecyclerView$e$c;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10972
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$e$c;
    .locals 1
    .parameter

    .prologue
    .line 10982
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$e$c;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$e$c;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$e$c;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 10997
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 10998
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$e$c;->a:I

    .line 10999
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$e$c;->b:I

    .line 11000
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$e$c;->c:I

    .line 11001
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$e$c;->d:I

    .line 11002
    return-object p0
.end method
