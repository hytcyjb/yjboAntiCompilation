.class public abstract Lcom/zhihu/android/social/d;
.super Landroid/app/Activity;
.source "WXPayBaseActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/g/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/mm/sdk/d/a;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/zhihu/android/social/d;->b(Lcom/tencent/mm/sdk/d/a;)V

    .line 33
    return-void
.end method

.method public a(Lcom/tencent/mm/sdk/d/b;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/d/b;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Lcom/zhihu/android/social/d;->b(Lcom/tencent/mm/sdk/d/b;)V

    .line 40
    :cond_0
    return-void
.end method

.method public abstract b(Lcom/tencent/mm/sdk/d/a;)V
.end method

.method public abstract b(Lcom/tencent/mm/sdk/d/b;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-static {}, Lcom/zhihu/android/social/e;->a()Lcom/zhihu/android/social/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhihu/android/social/d;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zhihu/android/social/e;->a(Landroid/content/Intent;Lcom/tencent/mm/sdk/g/b;)V

    .line 21
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/zhihu/android/social/d;->setIntent(Landroid/content/Intent;)V

    .line 27
    invoke-static {}, Lcom/zhihu/android/social/e;->a()Lcom/zhihu/android/social/e;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/zhihu/android/social/e;->a(Landroid/content/Intent;Lcom/tencent/mm/sdk/g/b;)V

    .line 28
    return-void
.end method
