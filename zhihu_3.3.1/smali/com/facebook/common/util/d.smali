.class public Lcom/facebook/common/util/d;
.super Ljava/lang/Object;
.source "UriUtil.java"


# direct methods
.method public static a(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-static {p0}, Lcom/facebook/common/util/d;->g(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static b(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-static {p0}, Lcom/facebook/common/util/d;->g(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 77
    invoke-static {p0}, Lcom/facebook/common/util/d;->g(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 88
    invoke-static {p0}, Lcom/facebook/common/util/d;->g(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 99
    invoke-static {p0}, Lcom/facebook/common/util/d;->g(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v1, "res"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static f(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 105
    const-string v0, "data"

    invoke-static {p0}, Lcom/facebook/common/util/d;->g(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static g(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 114
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
