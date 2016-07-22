.class public Lcom/didi/common/model/BaseObject;
.super Ljava/lang/Object;
.source "BaseObject.java"

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
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, -0x320

    iput v0, p0, Lcom/didi/common/model/BaseObject;->errno:I

    return-void
.end method

.method public static isAvailable(Lcom/didi/common/model/BaseObject;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 160
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/didi/common/model/BaseObject;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/Object;)Lcom/didi/common/model/BaseObject;
    .locals 3
    .parameter "obj"

    .prologue
    .line 164
    if-nez p0, :cond_0

    .line 165
    const/4 v2, 0x0

    .line 172
    :goto_0
    return-object v2

    .line 166
    :cond_0
    const/4 v2, 0x0

    .line 168
    .local v2, result:Lcom/didi/common/model/BaseObject;
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/didi/common/model/BaseObject;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, e:Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/didi/common/model/BaseObject;
    .locals 4

    .prologue
    .line 144
    const/4 v2, 0x0

    .line 146
    .local v2, obj:Lcom/didi/common/model/BaseObject;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/didi/common/model/BaseObject;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-object v2

    .line 147
    :catch_0
    move-exception v1

    .line 148
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
    .line 19
    invoke-virtual {p0}, Lcom/didi/common/model/BaseObject;->clone()Lcom/didi/common/model/BaseObject;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/didi/common/model/BaseObject;->errno:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/common/model/BaseObject;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTimeOffset()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/didi/common/model/BaseObject;->timeoffset:I

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/didi/common/model/BaseObject;->errno:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 4
    .parameter "json"

    .prologue
    const/16 v3, -0x384

    .line 98
    invoke-static {p1}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p0, v3}, Lcom/didi/common/model/BaseObject;->setErrorCode(I)V

    .line 125
    :goto_0
    return-void

    .line 104
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .local v1, obj:Lorg/json/JSONObject;
    sget-object v2, Lcom/didi/common/net/NetConstant;->ERROR_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    sget-object v2, Lcom/didi/common/net/NetConstant;->ERROR_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/didi/common/model/BaseObject;->setErrorCode(I)V

    .line 112
    :cond_1
    sget-object v2, Lcom/didi/common/net/NetConstant;->ERROR_MSG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 113
    sget-object v2, Lcom/didi/common/net/NetConstant;->ERROR_MSG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/didi/common/model/BaseObject;->setErrorMsg(Ljava/lang/String;)V

    .line 117
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 118
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    .line 120
    :cond_4
    sget-object v2, Lcom/didi/common/net/NetConstant;->TIME_OFFSET:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 121
    sget-object v2, Lcom/didi/common/net/NetConstant;->TIME_OFFSET:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/didi/common/model/BaseObject;->setTimeOffset(I)V

    .line 124
    :cond_5
    invoke-virtual {p0, v1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 105
    .end local v1           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {p0, v3}, Lcom/didi/common/model/BaseObject;->setErrorCode(I)V

    goto :goto_0

    .line 114
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #obj:Lorg/json/JSONObject;
    :cond_6
    sget-object v2, Lcom/didi/common/net/NetConstant;->ERROR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    sget-object v2, Lcom/didi/common/net/NetConstant;->ERROR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/didi/common/model/BaseObject;->setErrorMsg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 135
    return-void
.end method

.method public replaceEmptyErrorMessage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {p1}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    .line 183
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, -0x320

    iput v0, p0, Lcom/didi/common/model/BaseObject;->errno:I

    .line 75
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .parameter "error"

    .prologue
    .line 50
    iput p1, p0, Lcom/didi/common/model/BaseObject;->errno:I

    .line 51
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "throwable"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/didi/common/model/BaseObject;->throwable:Ljava/lang/Throwable;

    .line 28
    return-void
.end method

.method public setTimeOffset(I)V
    .locals 0
    .parameter "timeoffset"

    .prologue
    .line 58
    iput p1, p0, Lcom/didi/common/model/BaseObject;->timeoffset:I

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseObject [errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/model/BaseObject;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errmsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
