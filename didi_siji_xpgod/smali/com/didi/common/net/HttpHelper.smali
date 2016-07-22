.class public Lcom/didi/common/net/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHttpErrMsg(I)I
    .locals 2
    .parameter "responseCode"

    .prologue
    const v0, 0x7f0b04f2

    .line 82
    packed-switch p0, :pswitch_data_0

    .line 91
    const/16 v1, 0xc8

    if-eq p0, v1, :cond_0

    const/16 v1, 0xce

    if-eq p0, v1, :cond_0

    .line 95
    :goto_0
    :pswitch_0
    return v0

    .line 89
    :pswitch_1
    const v0, 0x7f0b0417

    goto :goto_0

    .line 95
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static validate(ILjava/lang/String;Z)Z
    .locals 4
    .parameter "errno"
    .parameter "errmsg"
    .parameter "logEvent"

    .prologue
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errmsg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errmsg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x1

    .line 54
    .local v0, valid:Z
    sparse-switch p0, :sswitch_data_0

    .line 71
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-static {p1}, Lcom/didi/common/ui/component/UiHelper;->showTip(Ljava/lang/String;)V

    .line 75
    :goto_0
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 77
    .end local v0           #valid:Z
    .local v1, valid:I
    :goto_2
    return v1

    .end local v1           #valid:I
    .restart local v0       #valid:Z
    :sswitch_0
    move v1, v0

    .line 56
    .restart local v1       #valid:I
    goto :goto_2

    .line 58
    .end local v1           #valid:I
    :sswitch_1
    invoke-static {p1}, Lcom/didi/common/ui/component/UiHelper;->promptInvalidDataDialog(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    .line 60
    goto :goto_1

    .line 63
    :sswitch_2
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/didi/common/ui/component/UiHelper;->promptLoginDialog(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 64
    const/4 v0, 0x0

    .line 65
    goto :goto_1

    .line 67
    :sswitch_3
    invoke-static {p1}, Lcom/didi/common/ui/component/UiHelper;->showTip(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    .line 69
    goto :goto_1

    .line 74
    :cond_0
    const v2, 0x7f0b04f2

    invoke-static {v2}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    goto :goto_0

    .line 54
    nop

    :sswitch_data_0
    .sparse-switch
        -0x384 -> :sswitch_1
        0x0 -> :sswitch_0
        0x65 -> :sswitch_2
        0x3f3 -> :sswitch_2
        0x7d8 -> :sswitch_3
    .end sparse-switch
.end method

.method public static validate(Lcom/didi/common/model/BaseObject;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;Z)Z

    move-result v0

    return v0
.end method

.method public static validate(Lcom/didi/common/model/BaseObject;I)Z
    .locals 3
    .parameter "obj"
    .parameter "dialogTipResId"

    .prologue
    const/4 v1, 0x0

    .line 133
    if-nez p0, :cond_0

    .line 139
    :goto_0
    return v1

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/didi/common/model/BaseObject;->getErrorCode()I

    move-result v0

    .line 136
    .local v0, errno:I
    if-nez v0, :cond_1

    .line 137
    const/4 v1, 0x1

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/didi/common/model/BaseObject;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/didi/common/ui/component/UiHelper;->promptDialog(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static validate(Lcom/didi/common/model/BaseObject;Z)Z
    .locals 2
    .parameter "obj"
    .parameter "logEvent"

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/didi/common/model/BaseObject;->errno:I

    iget-object v1, p0, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/didi/common/net/HttpHelper;->validate(ILjava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static validateHttpState(ILjava/lang/String;Z)Z
    .locals 3
    .parameter "errno"
    .parameter "errmsg"
    .parameter "logEvent"

    .prologue
    .line 106
    const/4 v1, 0x1

    .line 107
    .local v1, valid:Z
    const/4 v0, -0x1

    .line 108
    .local v0, toastStringId:I
    packed-switch p0, :pswitch_data_0

    .line 121
    const/16 v2, 0xc8

    if-eq p0, v2, :cond_0

    const/16 v2, 0xce

    if-eq p0, v2, :cond_0

    .line 122
    const v0, 0x7f0b04f2

    .line 123
    const/4 v1, 0x0

    .line 127
    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 128
    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 129
    :cond_1
    return v1

    .line 111
    :pswitch_0
    const v0, 0x7f0b04f2

    .line 112
    const/4 v1, 0x0

    .line 113
    goto :goto_0

    .line 117
    :pswitch_1
    const v0, 0x7f0b0417

    .line 118
    const/4 v1, 0x0

    .line 119
    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
