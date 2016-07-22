.class Landroid/support/design/widget/v$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ValueAnimatorCompatImplHoneycombMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/v;->a(Landroid/support/design/widget/t$e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/t$e$a;

.field final synthetic b:Landroid/support/design/widget/v;


# direct methods
.method constructor <init>(Landroid/support/design/widget/v;Landroid/support/design/widget/t$e$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Landroid/support/design/widget/v$2;->b:Landroid/support/design/widget/v;

    iput-object p2, p0, Landroid/support/design/widget/v$2;->a:Landroid/support/design/widget/t$e$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/design/widget/v$2;->a:Landroid/support/design/widget/t$e$a;

    invoke-interface {v0}, Landroid/support/design/widget/t$e$a;->c()V

    .line 73
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/design/widget/v$2;->a:Landroid/support/design/widget/t$e$a;

    invoke-interface {v0}, Landroid/support/design/widget/t$e$a;->b()V

    .line 68
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/design/widget/v$2;->a:Landroid/support/design/widget/t$e$a;

    invoke-interface {v0}, Landroid/support/design/widget/t$e$a;->a()V

    .line 63
    return-void
.end method
