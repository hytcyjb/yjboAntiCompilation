.class Landroid/support/design/widget/Snackbar$10;
.super Landroid/support/v4/view/bh;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:I

.field final synthetic c:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$10;->c:Landroid/support/design/widget/Snackbar;

    iput p2, p0, Landroid/support/design/widget/Snackbar$10;->b:I

    invoke-direct {p0}, Landroid/support/v4/view/bh;-><init>()V

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/Snackbar$10;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 572
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$10;->c:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->d(Landroid/support/design/widget/Snackbar;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$10;->c:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->c(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b(II)V

    .line 579
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 583
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$10;->c:Landroid/support/design/widget/Snackbar;

    iget v1, p0, Landroid/support/design/widget/Snackbar$10;->b:I

    invoke-static {v0, v1}, Landroid/support/design/widget/Snackbar;->b(Landroid/support/design/widget/Snackbar;I)V

    .line 584
    return-void
.end method
