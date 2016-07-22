.class public Lcom/didi/common/model/MessageHasNew;
.super Lcom/didi/common/model/BaseObject;
.source "MessageHasNew.java"


# instance fields
.field public newmsg:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/common/model/MessageHasNew;->newmsg:I

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 19
    const-string v0, "newmsg"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/didi/common/model/MessageHasNew;->newmsg:I

    .line 20
    const-string v0, "hasNewMessage"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
