.class final Lcom/didi/common/ui/userinfo/UserInfoHelper$1;
.super Lcom/didi/common/net/ResponseListener;
.source "UserInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/userinfo/UserInfoHelper;->loadUserInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/ui/userinfo/UserInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/didi/common/ui/userinfo/UserInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/userinfo/UserInfoHelper$1;->onFail(Lcom/didi/common/ui/userinfo/UserInfo;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/ui/userinfo/UserInfo;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 43
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->access$200()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 44
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->access$202(I)I

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->access$208()I

    .line 48
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->loadUserInfo()V

    goto :goto_0
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/didi/common/ui/userinfo/UserInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/userinfo/UserInfoHelper$1;->onFinish(Lcom/didi/common/ui/userinfo/UserInfo;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/ui/userinfo/UserInfo;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 26
    invoke-virtual {p1}, Lcom/didi/common/ui/userinfo/UserInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    invoke-static {p1}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->access$002(Lcom/didi/common/ui/userinfo/UserInfo;)Lcom/didi/common/ui/userinfo/UserInfo;

    .line 32
    :goto_0
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->access$100()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 33
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 34
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->access$100()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;

    .line 35
    .local v1, listener:Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;
    if-nez v1, :cond_1

    .line 33
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29
    .end local v0           #i:I
    .end local v1           #listener:Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;
    .end local v2           #size:I
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->access$002(Lcom/didi/common/ui/userinfo/UserInfo;)Lcom/didi/common/ui/userinfo/UserInfo;

    goto :goto_0

    .line 37
    .restart local v0       #i:I
    .restart local v1       #listener:Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;
    .restart local v2       #size:I
    :cond_1
    invoke-interface {v1}, Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;->onGetInfo()V

    goto :goto_2

    .line 39
    .end local v1           #listener:Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;
    :cond_2
    return-void
.end method
