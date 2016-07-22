.class public final Lcom/instabug/library/g/b;
.super Ljava/lang/Object;
.source "InstabugSDKLogger.java"


# direct methods
.method private static a(ILjava/lang/Throwable;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    sget-boolean v0, Lcom/instabug/library/Instabug;->a:Z

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 41
    :cond_0
    if-nez p1, :cond_1

    .line 49
    :goto_1
    const-string v0, "com.instabug.library"

    invoke-static {p0, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 46
    :cond_2
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, "%1$s\n%2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 13
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/instabug/library/g/b;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x6

    invoke-static {v0, p1, p0}, Lcom/instabug/library/g/b;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/instabug/library/g/b;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 17
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/instabug/library/g/b;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/instabug/library/g/b;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/instabug/library/g/b;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 30
    return-void
.end method
