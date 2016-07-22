.class Landroid/support/design/widget/Snackbar$8;
.super Landroid/support/v4/view/bh;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$8;->a:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Landroid/support/v4/view/bh;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 524
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$8;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->d(Landroid/support/design/widget/Snackbar;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$8;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->c(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-result-object v0

    const/16 v1, 0x46

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a(II)V

    .line 533
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 537
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$8;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->e(Landroid/support/design/widget/Snackbar;)V

    .line 538
    return-void
.end method
