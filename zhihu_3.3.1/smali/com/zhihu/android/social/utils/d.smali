.class public Lcom/zhihu/android/social/utils/d;
.super Ljava/lang/Object;
.source "ContentUtils.java"


# direct methods
.method private static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 134
    const-string v2, "zh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const-string v2, "cn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    const-string v0, "zh-CN"

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 137
    :cond_1
    const-string v2, "tw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const-string v0, "zh-TW"

    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 24
    invoke-static {}, Lcom/zhihu/android/social/utils/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh-CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {p0}, Lcom/zhihu/android/social/utils/d;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 30
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh-TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-static {p0}, Lcom/zhihu/android/social/utils/d;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_1
    invoke-static {p0}, Lcom/zhihu/android/social/utils/d;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 42
    packed-switch p0, :pswitch_data_0

    .line 67
    const-string v0, ""

    :goto_0
    return-object v0

    .line 45
    :pswitch_0
    const-string v0, "Zhihu"

    goto :goto_0

    .line 47
    :pswitch_1
    const-string v0, "Authorization page loading..."

    goto :goto_0

    .line 49
    :pswitch_2
    const-string v0, "Cancel the authorization"

    goto :goto_0

    .line 51
    :pswitch_3
    const-string v0, "Need time to complete the authorization, please wait..."

    goto :goto_0

    .line 53
    :pswitch_4
    const-string v0, "Callback interface of token should not be null"

    goto :goto_0

    .line 55
    :pswitch_5
    const-string v0, "Authorization Code should not be null"

    goto :goto_0

    .line 57
    :pswitch_6
    const-string v0, "There is no available authorization method"

    goto :goto_0

    .line 59
    :pswitch_7
    const-string v0, "The lack of \u2018Internet\u2019 authority"

    goto :goto_0

    .line 61
    :pswitch_8
    const-string v0, "Authorization failed"

    goto :goto_0

    .line 63
    :pswitch_9
    const-string v0, "Unknown Error Code from Server"

    goto :goto_0

    .line 65
    :pswitch_a
    const-string v0, "Share from "

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 72
    packed-switch p0, :pswitch_data_0

    .line 97
    const-string v0, ""

    :goto_0
    return-object v0

    .line 75
    :pswitch_0
    const-string v0, "\u77e5\u4e4e"

    goto :goto_0

    .line 77
    :pswitch_1
    const-string v0, "\u6388\u6b0a\u9801\u52a0\u8f09\u4e2d..."

    goto :goto_0

    .line 79
    :pswitch_2
    const-string v0, "\u53d6\u6d88\u6388\u6b0a"

    goto :goto_0

    .line 81
    :pswitch_3
    const-string v0, "\u5b8c\u6210\u6388\u6b0a\u9084\u9700\u4e00\u5c0f\u6703\u5152\uff0c\u8acb\u7a0d\u7b49..."

    goto :goto_0

    .line 83
    :pswitch_4
    const-string v0, "Token\u56de\u8abf\u63a5\u53e3\u4e0d\u61c9\u70ba\u7a7a"

    goto :goto_0

    .line 85
    :pswitch_5
    const-string v0, "Authorization Code\u4e0d\u61c9\u70ba\u7a7a"

    goto :goto_0

    .line 87
    :pswitch_6
    const-string v0, "\u7121\u53ef\u7528\u6388\u6b0a\u9014\u5f91"

    goto :goto_0

    .line 89
    :pswitch_7
    const-string v0, "\u7f3a\u5c11\u8a2a\u554fInternet\u6b0a\u9650"

    goto :goto_0

    .line 91
    :pswitch_8
    const-string v0, "\u6388\u6b0a\u5931\u6557"

    goto :goto_0

    .line 93
    :pswitch_9
    const-string v0, "\u670d\u52d9\u5668\u8fd4\u56de\u672a\u77e5\u932f\u8aa4\u78bc"

    goto :goto_0

    .line 95
    :pswitch_a
    const-string v0, "\u5206\u4eab\u6765\u81ea"

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static d(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 102
    packed-switch p0, :pswitch_data_0

    .line 127
    const-string v0, ""

    :goto_0
    return-object v0

    .line 105
    :pswitch_0
    const-string v0, "\u77e5\u4e4e"

    goto :goto_0

    .line 107
    :pswitch_1
    const-string v0, "\u6388\u6743\u9875\u52a0\u8f7d\u4e2d..."

    goto :goto_0

    .line 109
    :pswitch_2
    const-string v0, "\u53d6\u6d88\u6388\u6743"

    goto :goto_0

    .line 111
    :pswitch_3
    const-string v0, "\u5b8c\u6210\u6388\u6743\u8fd8\u9700\u4e00\u5c0f\u4f1a\u513f\uff0c\u8bf7\u7a0d\u7b49..."

    goto :goto_0

    .line 113
    :pswitch_4
    const-string v0, "Token\u56de\u8c03\u63a5\u53e3\u4e0d\u5e94\u4e3a\u7a7a"

    goto :goto_0

    .line 115
    :pswitch_5
    const-string v0, "Authorization Code\u4e0d\u5e94\u4e3a\u7a7a"

    goto :goto_0

    .line 117
    :pswitch_6
    const-string v0, "\u65e0\u53ef\u7528\u6388\u6743\u9014\u5f84"

    goto :goto_0

    .line 119
    :pswitch_7
    const-string v0, "\u7f3a\u5c11\u8bbf\u95eeInternet\u6743\u9650"

    goto :goto_0

    .line 121
    :pswitch_8
    const-string v0, "\u6388\u6743\u5931\u8d25"

    goto :goto_0

    .line 123
    :pswitch_9
    const-string v0, "\u670d\u52a1\u5668\u8fd4\u56de\u672a\u77e5\u9519\u8bef\u7801"

    goto :goto_0

    .line 125
    :pswitch_a
    const-string v0, "\u5206\u4eab\u6765\u81ea"

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
