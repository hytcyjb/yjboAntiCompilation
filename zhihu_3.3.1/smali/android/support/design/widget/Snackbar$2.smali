.class Landroid/support/design/widget/Snackbar$2;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$2;->b:Landroid/support/design/widget/Snackbar;

    iput p2, p0, Landroid/support/design/widget/Snackbar$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 593
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$2;->b:Landroid/support/design/widget/Snackbar;

    iget v1, p0, Landroid/support/design/widget/Snackbar$2;->a:I

    invoke-static {v0, v1}, Landroid/support/design/widget/Snackbar;->b(Landroid/support/design/widget/Snackbar;I)V

    .line 594
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 597
    return-void
.end method
