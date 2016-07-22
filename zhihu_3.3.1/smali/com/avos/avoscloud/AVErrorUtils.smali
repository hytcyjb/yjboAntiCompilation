.class public Lcom/avos/avoscloud/AVErrorUtils;
.super Ljava/lang/Object;
.source "AVErrorUtils.java"


# static fields
.field public static final CIRCLE_REFERENCE:I = 0x186a1

.field public static final MISSING_OBJECTID:I = 0x68


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static circleException()Lcom/avos/avoscloud/AVException;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const v1, 0x186a1

    const-string v2, "Found a circular dependency when saving."

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static createException(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 3
    .parameter

    .prologue
    .line 16
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    const-string v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 19
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, v2, v1}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x3e7

    invoke-direct {v0, v1, p0}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 26
    instance-of v0, p0, Lcom/avos/avoscloud/AVException;

    if-eqz v0, :cond_0

    .line 27
    check-cast p0, Lcom/avos/avoscloud/AVException;

    .line 34
    :goto_0
    return-object p0

    .line 29
    :cond_0
    if-eqz p1, :cond_1

    .line 30
    invoke-static {p1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p0

    goto :goto_0

    .line 31
    :cond_1
    if-eqz p0, :cond_2

    .line 32
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    .line 34
    :cond_2
    new-instance p0, Lcom/avos/avoscloud/AVException;

    const/16 v0, 0x3e7

    const-string v1, "unknown reason"

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static errorCode(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 46
    :goto_0
    return v0

    .line 45
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static fileDownloadInConsistentFailureException()Lcom/avos/avoscloud/AVException;
    .locals 2

    .prologue
    .line 67
    const/16 v0, 0xfd

    const-string v1, "Downloaded file is inconsistent with original file"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method public static invalidObjectIdException()Lcom/avos/avoscloud/AVException;
    .locals 2

    .prologue
    .line 54
    const/16 v0, 0x68

    const-string v1, "Invalid object id."

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method public static invalidQueryException()Lcom/avos/avoscloud/AVException;
    .locals 2

    .prologue
    .line 58
    const/16 v0, 0x66

    const-string v1, "Invalid query."

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method public static sessionMissingException()Lcom/avos/avoscloud/AVException;
    .locals 2

    .prologue
    .line 62
    const/16 v0, 0xce

    const-string v1, "No valid session token, make sure signUp or login has been called."

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method
