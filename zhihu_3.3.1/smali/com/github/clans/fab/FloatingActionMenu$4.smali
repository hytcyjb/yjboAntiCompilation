.class Lcom/github/clans/fab/FloatingActionMenu$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FloatingActionMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/clans/fab/FloatingActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/clans/fab/FloatingActionMenu;


# direct methods
.method constructor <init>(Lcom/github/clans/fab/FloatingActionMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu$4;->a:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 591
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$4;->a:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionMenu;->b(Lcom/github/clans/fab/FloatingActionMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$4;->a:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionMenu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 596
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$4;->a:Lcom/github/clans/fab/FloatingActionMenu;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu$4;->a:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-static {v1}, Lcom/github/clans/fab/FloatingActionMenu;->a(Lcom/github/clans/fab/FloatingActionMenu;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->c(Z)V

    .line 597
    const/4 v0, 0x1

    return v0
.end method
