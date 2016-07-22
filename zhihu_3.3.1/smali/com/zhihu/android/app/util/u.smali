.class public Lcom/zhihu/android/app/util/u;
.super Ljava/lang/Object;
.source "MaxCountExecutor.java"


# direct methods
.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Runnable;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/zhihu/android/app/util/u;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Runnable;J)V

    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Runnable;J)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Landroid/support/v7/preference/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 19
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 20
    if-ge v1, p1, :cond_0

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    :cond_0
    return-void
.end method
