.class public Lcom/zhihu/android/app/b/a;
.super Ljava/lang/Object;
.source "AnalyticsHelper.java"


# static fields
.field private static a:Lcom/zhihu/android/analytics/a/b;


# direct methods
.method public static a(Landroid/content/Context;Lcom/zhihu/android/app/a/a;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 46
    new-instance v0, Lcom/zhihu/android/analytics/a/b$a;

    invoke-direct {v0, p0}, Lcom/zhihu/android/analytics/a/b$a;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f07

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/analytics/a/b$a;->a(II)Lcom/zhihu/android/analytics/a/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/analytics/a/b$a;->a()Lcom/zhihu/android/analytics/a/b;

    move-result-object v0

    sput-object v0, Lcom/zhihu/android/app/b/a;->a:Lcom/zhihu/android/analytics/a/b;

    .line 48
    sget-object v0, Lcom/zhihu/android/app/b/a;->a:Lcom/zhihu/android/analytics/a/b;

    const-string v1, "\u5e94\u7528\u5b9d"

    invoke-virtual {v0, v1}, Lcom/zhihu/android/analytics/a/b;->a(Ljava/lang/String;)V

    .line 50
    if-eqz p1, :cond_0

    .line 51
    sget-object v0, Lcom/zhihu/android/app/b/a;->a:Lcom/zhihu/android/analytics/a/b;

    invoke-virtual {p1}, Lcom/zhihu/android/app/a/a;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zhihu/android/analytics/util/Gender;->OTHER:Lcom/zhihu/android/analytics/util/Gender;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/zhihu/android/analytics/a/b;->a(Ljava/lang/String;Lcom/zhihu/android/analytics/util/Gender;I)V

    .line 53
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    sget-object v0, Lcom/zhihu/android/app/b/a;->a:Lcom/zhihu/android/analytics/a/b;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/zhihu/android/app/b/a;->a:Lcom/zhihu/android/analytics/a/b;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/analytics/a/b;->b(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    sget-object v0, Lcom/zhihu/android/app/b/a;->a:Lcom/zhihu/android/analytics/a/b;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/zhihu/android/app/b/a;->a:Lcom/zhihu/android/analytics/a/b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/zhihu/android/analytics/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    sget-object v0, Lcom/zhihu/android/app/b/a;->a:Lcom/zhihu/android/analytics/a/b;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/zhihu/android/app/b/a;->a:Lcom/zhihu/android/analytics/a/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/zhihu/android/analytics/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 65
    :cond_0
    return-void
.end method
