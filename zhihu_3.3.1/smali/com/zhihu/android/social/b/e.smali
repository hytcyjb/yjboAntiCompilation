.class public Lcom/zhihu/android/social/b/e;
.super Lcom/google/api/client/auth/oauth2/TokenResponse;
.source "WeChatTokenResponse.java"


# instance fields
.field private errcode:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "errcode"
    .end annotation
.end field

.field private errmsg:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "errmsg"
    .end annotation
.end field

.field private openid:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "openid"
    .end annotation
.end field

.field private unionid:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "unionid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/TokenResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/zhihu/android/social/b/e;->errcode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zhihu/android/social/b/e;->unionid:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zhihu/android/social/b/e;->openid:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/zhihu/android/social/b/e;->errcode:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zhihu/android/social/b/e;->errmsg:Ljava/lang/String;

    return-object v0
.end method
