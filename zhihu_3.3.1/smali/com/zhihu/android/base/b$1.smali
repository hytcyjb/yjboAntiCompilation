.class Lcom/zhihu/android/base/b$1;
.super Ljava/lang/Object;
.source "ZHActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/android/base/b;->a(IZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/zhihu/android/base/b;


# direct methods
.method constructor <init>(Lcom/zhihu/android/base/b;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/zhihu/android/base/b$1;->c:Lcom/zhihu/android/base/b;

    iput-object p2, p0, Lcom/zhihu/android/base/b$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/zhihu/android/base/b$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zhihu/android/base/b$1;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/zhihu/android/base/b$1;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/zhihu/android/base/b$1;->c:Lcom/zhihu/android/base/b;

    invoke-virtual {v0}, Lcom/zhihu/android/base/b;->A()V

    .line 71
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    return-void
.end method
