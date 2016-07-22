.class Landroid/support/design/widget/q$1;
.super Ljava/lang/Object;
.source "StateListAnimator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/q;


# direct methods
.method constructor <init>(Landroid/support/design/widget/q;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Landroid/support/design/widget/q$1;->a:Landroid/support/design/widget/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Landroid/support/design/widget/q$1;->a:Landroid/support/design/widget/q;

    invoke-static {v0}, Landroid/support/design/widget/q;->a(Landroid/support/design/widget/q;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 38
    iget-object v0, p0, Landroid/support/design/widget/q$1;->a:Landroid/support/design/widget/q;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/q;->a(Landroid/support/design/widget/q;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 40
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    return-void
.end method
