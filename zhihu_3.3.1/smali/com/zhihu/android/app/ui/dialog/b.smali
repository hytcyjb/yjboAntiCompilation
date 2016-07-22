.class public abstract Lcom/zhihu/android/app/ui/dialog/b;
.super Lcom/zhihu/android/app/ui/dialog/s;
.source "CaptchaImageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/dialog/b$a;
    }
.end annotation


# instance fields
.field protected a:Z

.field private b:Lcom/zhihu/android/api/b/h;

.field private c:Ljava/lang/Runnable;

.field private d:Landroid/os/Handler;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/dialog/s;-><init>()V

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/zhihu/android/app/ui/dialog/b;->e:I

    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/ui/dialog/b;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/zhihu/android/app/ui/dialog/b;->e:I

    return v0
.end method

.method static synthetic b(Lcom/zhihu/android/app/ui/dialog/b;)I
    .locals 2
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/zhihu/android/app/ui/dialog/b;->e:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/zhihu/android/app/ui/dialog/b;->e:I

    return v0
.end method


# virtual methods
.method protected abstract a(Landroid/graphics/drawable/Drawable;)V
.end method

.method protected a(Ljava/lang/String;Lcom/zhihu/android/app/ui/dialog/b$a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    if-eqz p2, :cond_0

    .line 170
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/b;->a:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/b;->b:Lcom/zhihu/android/api/b/h;

    new-instance v1, Lcom/zhihu/android/app/ui/dialog/b$4;

    invoke-direct {v1, p0, p2}, Lcom/zhihu/android/app/ui/dialog/b$4;-><init>(Lcom/zhihu/android/app/ui/dialog/b;Lcom/zhihu/android/app/ui/dialog/b$a;)V

    invoke-interface {v0, p1, v1}, Lcom/zhihu/android/api/b/h;->a(Ljava/lang/String;Lcom/zhihu/android/bumblebee/b/c;)V

    goto :goto_0

    .line 204
    :cond_2
    invoke-interface {p2}, Lcom/zhihu/android/app/ui/dialog/b$a;->a()V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 80
    :cond_0
    if-eqz p1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/b;->b:Lcom/zhihu/android/api/b/h;

    new-instance v1, Lcom/zhihu/android/app/ui/dialog/b$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/dialog/b$2;-><init>(Lcom/zhihu/android/app/ui/dialog/b;)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/h;->a(Lcom/zhihu/android/bumblebee/b/c;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/b;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/b;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/b;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/dialog/b;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/b;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/b;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract b()V
.end method

.method protected b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/b;->a:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/zhihu/android/app/ui/dialog/b;->b:Lcom/zhihu/android/api/b/h;

    new-instance v1, Lcom/zhihu/android/app/ui/dialog/b$3;

    invoke-direct {v1, p0, p1}, Lcom/zhihu/android/app/ui/dialog/b$3;-><init>(Lcom/zhihu/android/app/ui/dialog/b;Z)V

    invoke-interface {v0, v1}, Lcom/zhihu/android/api/b/h;->b(Lcom/zhihu/android/bumblebee/b/c;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/dialog/s;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/a;

    const-class v1, Lcom/zhihu/android/api/b/h;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/h;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/b;->b:Lcom/zhihu/android/api/b/h;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/dialog/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/b;->d:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/zhihu/android/app/ui/dialog/b$1;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/dialog/b$1;-><init>(Lcom/zhihu/android/app/ui/dialog/b;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/dialog/b;->c:Ljava/lang/Runnable;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/dialog/b;->a:Z

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/dialog/b;->a(Z)V

    .line 73
    return-void
.end method
