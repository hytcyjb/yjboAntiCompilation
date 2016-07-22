.class public Lcom/didi/beatles/model/BtsBaseObject;
.super Ljava/lang/Object;
.source "BtsBaseObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public errmsg:Ljava/lang/String;

.field public errno:I

.field private throwable:Ljava/lang/Throwable;

.field public timeoffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, -0x320

    iput v0, p0, Lcom/didi/beatles/model/BtsBaseObject;->errno:I

    return-void
.end method

.method public static isAvailable(Lcom/didi/beatles/model/BtsBaseObject;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 172
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/didi/beatles/model/BtsBaseObject;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/Object;)Lcom/didi/beatles/model/BtsBaseObject;
    .locals 3
    .parameter "obj"

    .prologue
    .line 176
    if-nez p0, :cond_0

    .line 177
    const/4 v2, 0x0

    .line 184
    :goto_0
    return-object v2

    .line 178
    :cond_0
    const/4 v2, 0x0

    .line 180
    .local v2, result:Lcom/didi/beatles/model/BtsBaseObject;
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/didi/beatles/model/BtsBaseObject;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, e:Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/didi/beatles/model/BtsBaseObject;
    .locals 4

    .prologue
    .line 156
    const/4 v2, 0x0

    .line 158
    .local v2, obj:Lcom/didi/beatles/model/BtsBaseObject;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/didi/beatles/model/BtsBaseObject;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-object v2

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/didi/beatles/model/BtsBaseObject;->clone()Lcom/didi/beatles/model/BtsBaseObject;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/didi/beatles/model/BtsBaseObject;->errno:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/beatles/model/BtsBaseObject;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getFullErrorMsg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/didi/beatles/model/BtsBaseObject;->errmsg:Ljava/lang/String;

    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/beatles/model/BtsBaseObject;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/beatles/model/BtsBaseObject;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/beatles/model/BtsBaseObject;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/didi/beatles/model/BtsBaseObject;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTimeOffset()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/didi/beatles/model/BtsBaseObject;->timeoffset:I

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/didi/beatles/model/BtsBaseObject;->errno:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 5
    .parameter "json"

    .prologue
    const/16 v4, -0x384

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DepartureLoc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {p0, v4}, Lcom/didi/beatles/model/BtsBaseObject;->setErrorCode(I)V

    .line 137
    :goto_0
    return-void

    .line 116
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .local v1, obj:Lorg/json/JSONObject;
    sget-object v2, Lcom/didi/common/net/NetConstant;->ERROR_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    sget-object v2, Lcom/didi/common/net/NetConstant;->ERROR_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/didi/beatles/model/BtsBaseObject;->setErrorCode(I)V

    .line 123
    :cond_1
    iget v2, p0, Lcom/didi/beatles/model/BtsBaseObject;->errno:I

    const/16 v3, 0x66

    if-ne v2, v3, :cond_2

    .line 126
    :cond_2
    sget-object v2, Lcom/didi/common/net/NetConstant;->ERROR_MSG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 127
    sget-object v2, Lcom/didi/common/net/NetConstant;->ERROR_MSG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/didi/beatles/model/BtsBaseObject;->setErrorMsg(Ljava/lang/String;)V

    .line 131
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/didi/beatles/model/BtsBaseObject;->errmsg:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/didi/beatles/model/BtsBaseObject;->errmsg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 132
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/didi/beatles/model/BtsBaseObject;->errmsg:Ljava/lang/String;

    .line 134
    :cond_5
    sget-object v2, Lcom/didi/common/net/NetConstant;->TIME_OFFSET:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 135
    sget-object v2, Lcom/didi/common/net/NetConstant;->TIME_OFFSET:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/didi/beatles/model/BtsBaseObject;->setTimeOffset(I)V

    .line 136
    :cond_6
    invoke-virtual {p0, v1}, Lcom/didi/beatles/model/BtsBaseObject;->parse(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 117
    .end local v1           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {p0, v4}, Lcom/didi/beatles/model/BtsBaseObject;->setErrorCode(I)V

    goto :goto_0

    .line 128
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #obj:Lorg/json/JSONObject;
    :cond_7
    sget-object v2, Lcom/didi/common/net/NetConstant;->ERROR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    sget-object v2, Lcom/didi/common/net/NetConstant;->ERROR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/didi/beatles/model/BtsBaseObject;->setErrorMsg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 147
    return-void
.end method

.method public replaceEmptyErrorMessage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/didi/beatles/model/BtsBaseObject;->errmsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-static {p1}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/BtsBaseObject;->errmsg:Ljava/lang/String;

    .line 195
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 1

    .prologue
    .line 77
    const/16 v0, -0x320

    iput v0, p0, Lcom/didi/beatles/model/BtsBaseObject;->errno:I

    .line 78
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .parameter "error"

    .prologue
    .line 53
    iput p1, p0, Lcom/didi/beatles/model/BtsBaseObject;->errno:I

    .line 54
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/didi/beatles/model/BtsBaseObject;->errmsg:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "throwable"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/didi/beatles/model/BtsBaseObject;->throwable:Ljava/lang/Throwable;

    .line 31
    return-void
.end method

.method public setTimeOffset(I)V
    .locals 0
    .parameter "timeoffset"

    .prologue
    .line 61
    iput p1, p0, Lcom/didi/beatles/model/BtsBaseObject;->timeoffset:I

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseObject [errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/beatles/model/BtsBaseObject;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errmsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/model/BtsBaseObject;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
