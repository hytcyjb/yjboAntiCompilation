.class public Lcom/zhihu/android/app/util/ag;
.super Ljava/lang/Object;
.source "QQHelper.java"


# direct methods
.method public static a(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-static {}, Lcom/zhihu/android/social/b;->a()Lcom/zhihu/android/social/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/zhihu/android/social/b;->a(IILandroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/zhihu/android/social/a/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {}, Lcom/zhihu/android/social/b;->a()Lcom/zhihu/android/social/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zhihu/android/social/b;->b(Landroid/content/Context;)V

    .line 41
    invoke-static {}, Lcom/zhihu/android/social/b;->a()Lcom/zhihu/android/social/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/zhihu/android/social/b;->a(Landroid/app/Activity;Lcom/zhihu/android/social/a/a;)V

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 33
    const-string v0, "com.zhihu.android"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "100490701"

    .line 34
    :goto_0
    const-string v1, "xyz678ty10djsiwn1cndla"

    .line 36
    invoke-static {}, Lcom/zhihu/android/social/b;->a()Lcom/zhihu/android/social/b;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/zhihu/android/social/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void

    .line 33
    :cond_0
    const-string v0, "101118708"

    goto :goto_0
.end method
