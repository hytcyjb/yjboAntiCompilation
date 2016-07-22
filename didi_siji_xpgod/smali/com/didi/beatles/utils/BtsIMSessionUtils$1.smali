.class Lcom/didi/beatles/utils/BtsIMSessionUtils$1;
.super Lcom/didi/common/net/ResponseListener;
.source "BtsIMSessionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/utils/BtsIMSessionUtils;->getUserInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/im/model/IMUserList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/utils/BtsIMSessionUtils;

.field final synthetic val$sessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/beatles/utils/BtsIMSessionUtils;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/didi/beatles/utils/BtsIMSessionUtils$1;->this$0:Lcom/didi/beatles/utils/BtsIMSessionUtils;

    iput-object p2, p0, Lcom/didi/beatles/utils/BtsIMSessionUtils$1;->val$sessionId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    check-cast p1, Lcom/didi/im/model/IMUserList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/utils/BtsIMSessionUtils$1;->onFinish(Lcom/didi/im/model/IMUserList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/im/model/IMUserList;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/didi/im/model/IMUserList;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/im/model/IMUserList;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->getInstance()Lcom/didi/beatles/utils/BtsIMSessionUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/utils/BtsIMSessionUtils$1;->val$sessionId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/didi/im/model/IMUserList;->getUserList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->createIMUserInDB(Ljava/lang/String;Ljava/util/List;)V

    .line 62
    :cond_0
    return-void
.end method
