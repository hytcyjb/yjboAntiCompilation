.class Landroid/support/design/widget/Snackbar$3;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->a(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$3;->b:Landroid/support/design/widget/Snackbar;

    iput-object p2, p0, Landroid/support/design/widget/Snackbar$3;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$3;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 303
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$3;->b:Landroid/support/design/widget/Snackbar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar;I)V

    .line 304
    return-void
.end method
