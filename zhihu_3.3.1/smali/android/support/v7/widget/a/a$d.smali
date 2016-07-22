.class public abstract Landroid/support/v7/widget/a/a$d;
.super Landroid/support/v7/widget/a/a$a;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2198
    invoke-direct {p0}, Landroid/support/v7/widget/a/a$a;-><init>()V

    .line 2199
    iput p2, p0, Landroid/support/v7/widget/a/a$d;->a:I

    .line 2200
    iput p1, p0, Landroid/support/v7/widget/a/a$d;->b:I

    .line 2201
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2251
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/a/a$d;->e(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/a/a$d;->d(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/a/a$d;->b(II)I

    move-result v0

    return v0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2233
    iget v0, p0, Landroid/support/v7/widget/a/a$d;->a:I

    return v0
.end method

.method public e(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2246
    iget v0, p0, Landroid/support/v7/widget/a/a$d;->b:I

    return v0
.end method
