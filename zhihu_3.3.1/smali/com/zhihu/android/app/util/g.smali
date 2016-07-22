.class public Lcom/zhihu/android/app/util/g;
.super Ljava/lang/Object;
.source "DomesticHelper.java"


# direct methods
.method public static a(Lcom/zhihu/android/app/ui/activity/a;)V
    .locals 5
    .parameter

    .prologue
    .line 39
    if-nez p0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const-class v0, Lcom/zhihu/android/api/b/t;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/activity/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/b/t;

    .line 50
    invoke-static {p0}, Landroid/support/v7/preference/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 52
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 53
    const-string v3, "ip_domestic_inited"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    new-instance v2, Lcom/zhihu/android/app/util/g$1;

    invoke-direct {v2, v1}, Lcom/zhihu/android/app/util/g$1;-><init>(Landroid/content/SharedPreferences;)V

    invoke-interface {v0, v2}, Lcom/zhihu/android/api/b/t;->a(Lcom/zhihu/android/bumblebee/b/c;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p0, :cond_0

    .line 79
    :goto_0
    return v0

    .line 77
    :cond_0
    invoke-static {p0}, Landroid/support/v7/preference/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 79
    const-string v2, "ip_domestic_status"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 83
    if-nez p0, :cond_0

    .line 89
    :goto_0
    return v0

    .line 87
    :cond_0
    invoke-static {p0}, Landroid/support/v7/preference/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 89
    const-string v2, "ip_domestic_inited"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
