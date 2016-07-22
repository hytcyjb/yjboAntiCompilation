.class Landroid/support/design/widget/Snackbar$7;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/support/design/widget/Snackbar$SnackbarLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->e()V
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
    .line 504
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$7;->a:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 507
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$7;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->b(Landroid/support/design/widget/Snackbar;)V

    .line 508
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$7;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->c(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setOnLayoutChangeListener(Landroid/support/design/widget/Snackbar$SnackbarLayout$b;)V

    .line 509
    return-void
.end method
