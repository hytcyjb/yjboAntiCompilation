.class Landroid/support/design/widget/e;
.super Ljava/lang/Object;
.source "CoordinatorLayoutInsetsHelperLollipop.java"

# interfaces
.implements Landroid/support/design/widget/d;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/ab;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-static {p1}, Landroid/support/v4/view/ah;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p1, p2}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Landroid/support/v4/view/ab;)V

    .line 30
    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 33
    :cond_0
    return-void
.end method
