.class public Lcom/avos/avoscloud/im/v2/AVIMException;
.super Lcom/avos/avoscloud/AVException;
.source "AVIMException.java"


# instance fields
.field appCode:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    .line 13
    iput p2, p0, Lcom/avos/avoscloud/im/v2/AVIMException;->appCode:I

    .line 14
    return-void
.end method

.method public constructor <init>(ILcom/avos/avoscloud/AVException;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVException;->getCode()I

    move-result v0

    iput v0, p0, Lcom/avos/avoscloud/im/v2/AVIMException;->code:I

    .line 44
    iput p1, p0, Lcom/avos/avoscloud/im/v2/AVIMException;->appCode:I

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p2, p3}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    iput p1, p0, Lcom/avos/avoscloud/im/v2/AVIMException;->appCode:I

    .line 23
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    iput p1, p0, Lcom/avos/avoscloud/im/v2/AVIMException;->appCode:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    instance-of v0, p1, Lcom/avos/avoscloud/im/v2/AVIMException;

    if-eqz v0, :cond_0

    .line 37
    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMException;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMException;->getAppCode()I

    move-result v0

    iput v0, p0, Lcom/avos/avoscloud/im/v2/AVIMException;->appCode:I

    .line 39
    :cond_0
    return-void
.end method

.method public static wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;
    .locals 1
    .parameter

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMException;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/im/v2/AVIMException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getAppCode()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/avos/avoscloud/im/v2/AVIMException;->appCode:I

    return v0
.end method

.method setAppCode(I)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/avos/avoscloud/im/v2/AVIMException;->appCode:I

    .line 58
    return-void
.end method
