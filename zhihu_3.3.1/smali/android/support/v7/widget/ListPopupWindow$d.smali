.class Landroid/support/v7/widget/ListPopupWindow$d;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ListPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1815
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$d;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/ListPopupWindow$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1815
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ListPopupWindow$d;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1819
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1822
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$d;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$d;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/support/v7/widget/ListPopupWindow;->b(Landroid/support/v7/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$d;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/support/v7/widget/ListPopupWindow;->d(Landroid/support/v7/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$d;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v1}, Landroid/support/v7/widget/ListPopupWindow;->c(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1825
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$d;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/support/v7/widget/ListPopupWindow;->c(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow$f;->run()V

    .line 1827
    :cond_0
    return-void
.end method
