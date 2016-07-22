.class public Lcom/zhihu/android/app/util/an;
.super Ljava/lang/Object;
.source "SinaWeiboHelper.java"


# direct methods
.method public static a(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-static {}, Lcom/zhihu/android/social/f;->a()Lcom/zhihu/android/social/f;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/zhihu/android/social/f;->a(IILandroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/zhihu/android/social/a/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lcom/zhihu/android/app/util/an;->b(Landroid/content/Context;)V

    .line 57
    invoke-static {}, Lcom/zhihu/android/social/f;->a()Lcom/zhihu/android/social/f;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/zhihu/android/social/f;->a(Landroid/app/Activity;Lcom/zhihu/android/social/a/a;)V

    .line 58
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/zhihu/android/app/util/an;->a(Landroid/app/Activity;Ljava/lang/String;[B)V

    .line 66
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;[B)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-static {}, Lcom/zhihu/android/social/f;->a()Lcom/zhihu/android/social/f;

    move-result-object v0

    move-object v1, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/zhihu/android/social/f;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 70
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 37
    const-string v0, "com.zhihu.android"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1081664247"

    .line 38
    :goto_0
    const-string v1, "com.zhihu.android"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "cbec468b8115b3b709d952ef11e5219e"

    .line 40
    :goto_1
    invoke-static {}, Lcom/zhihu/android/social/f;->a()Lcom/zhihu/android/social/f;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/zhihu/android/social/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void

    .line 37
    :cond_0
    const-string v0, "1709831639"

    goto :goto_0

    .line 38
    :cond_1
    const-string v1, "c809b82d0d45c9a0d6e6963ab88950ab"

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    :cond_0
    const-string v0, "com.sina.weibo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-static {}, Lcom/zhihu/android/social/f;->a()Lcom/zhihu/android/social/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zhihu/android/social/f;->b(Landroid/content/Context;)V

    .line 45
    return-void
.end method
