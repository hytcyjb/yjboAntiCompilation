.class public Lcom/zhihu/android/api/model/Token;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Token.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "access_token"
    .end annotation
.end field

.field public cookie:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "cookie"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public expiresInSeconds:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "expires_in"
    .end annotation
.end field

.field public lockIn:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "lock_in"
    .end annotation
.end field

.field public refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "refresh_token"
    .end annotation
.end field

.field public scope:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "scope"
    .end annotation
.end field

.field public tokenType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "token_type"
    .end annotation
.end field

.field public uid:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "uid"
    .end annotation
.end field

.field public unlockTicket:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "unlock_ticket"
    .end annotation
.end field

.field public userId:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Lcom/zhihu/android/api/model/Token;->cookie:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/zhihu/android/api/model/Token;->cookie:Ljava/util/Map;

    const-string v2, "z_c0"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "z_c0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/zhihu/android/api/model/Token;->cookie:Ljava/util/Map;

    const-string v2, "z_c0"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/zhihu/android/api/model/Token;->cookie:Ljava/util/Map;

    const-string v2, "q_c0"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "q_c0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/zhihu/android/api/model/Token;->cookie:Ljava/util/Map;

    const-string v2, "q_c0"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_3
    iget-object v1, p0, Lcom/zhihu/android/api/model/Token;->cookie:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
