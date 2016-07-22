.class public Lcom/didi/im/model/IMUserList;
.super Lcom/didi/common/model/BaseObject;
.source "IMUserList.java"


# static fields
.field private static final serialVersionUID:J = 0x2ae377091679d85fL


# instance fields
.field private sid:Ljava/lang/String;

.field private userList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/im/model/IMUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/didi/im/model/IMUserList;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/im/model/IMUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/im/model/IMUserList;->userList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 27
    const-string v2, "sessionid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/im/model/IMUserList;->sid:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    .line 30
    .local v0, array:Lorg/json/JSONArray;
    const-string v2, "userinfos"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    const-string v2, "userinfos"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/didi/im/model/IMUser;

    invoke-direct {v1}, Lcom/didi/im/model/IMUser;-><init>()V

    .line 33
    .local v1, user:Lcom/didi/im/model/IMUser;
    new-instance v2, Lcom/didi/common/model/JSONHelper;

    invoke-direct {v2}, Lcom/didi/common/model/JSONHelper;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/didi/common/model/JSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/common/model/BaseObject;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/im/model/IMUserList;->userList:Ljava/util/ArrayList;

    .line 35
    .end local v1           #user:Lcom/didi/im/model/IMUser;
    :cond_0
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0
    .parameter "sid"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/didi/im/model/IMUserList;->sid:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setUserList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/im/model/IMUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, userList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMUser;>;"
    iput-object p1, p0, Lcom/didi/im/model/IMUserList;->userList:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMUserList [userList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/model/IMUserList;->userList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/model/IMUserList;->sid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/im/model/IMUserList;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errmsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/model/IMUserList;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/im/model/IMUserList;->timeoffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
