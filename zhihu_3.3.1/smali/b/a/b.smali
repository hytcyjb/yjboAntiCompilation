.class public final Lb/a/b;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# direct methods
.method public static varargs a(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 61
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 62
    invoke-static {p0, v3}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    const/4 v0, 0x1

    .line 66
    :cond_0
    return v0

    .line 61
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static varargs a(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 45
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    .line 46
    invoke-static {p0, v3}, Landroid/support/v4/content/k;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    :goto_1
    return v0

    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static varargs a([I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 29
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, p0, v1

    .line 30
    if-eqz v3, :cond_0

    .line 34
    :goto_1
    return v0

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
