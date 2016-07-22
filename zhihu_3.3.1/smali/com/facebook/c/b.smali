.class public Lcom/facebook/c/b;
.super Ljava/lang/Object;
.source "JfifUtil.java"


# direct methods
.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-static {p0}, Lcom/facebook/c/d;->a(I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/io/InputStream;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 68
    :try_start_0
    invoke-static {p0}, Lcom/facebook/c/b;->b(Ljava/io/InputStream;)I

    move-result v1

    .line 69
    if-nez v1, :cond_0

    .line 74
    :goto_0
    return v0

    .line 72
    :cond_0
    invoke-static {p0, v1}, Lcom/facebook/c/d;->a(Ljava/io/InputStream;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;I)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xff

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    invoke-static {p0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/facebook/c/c;->a(Ljava/io/InputStream;IZ)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    .line 90
    :goto_1
    if-ne v2, v3, :cond_1

    .line 91
    invoke-static {p0, v0, v1}, Lcom/facebook/c/c;->a(Ljava/io/InputStream;IZ)I

    move-result v2

    goto :goto_1

    .line 94
    :cond_1
    const/16 v4, 0xc0

    if-ne p1, v4, :cond_3

    invoke-static {v2}, Lcom/facebook/c/b;->b(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 118
    :cond_2
    :goto_2
    return v0

    .line 97
    :cond_3
    if-eq v2, p1, :cond_2

    .line 102
    const/16 v4, 0xd8

    if-eq v2, v4, :cond_0

    if-eq v2, v0, :cond_0

    .line 108
    const/16 v4, 0xd9

    if-eq v2, v4, :cond_4

    const/16 v4, 0xda

    if-ne v2, v4, :cond_5

    :cond_4
    move v0, v1

    .line 109
    goto :goto_2

    .line 114
    :cond_5
    const/4 v2, 0x2

    invoke-static {p0, v2, v1}, Lcom/facebook/c/c;->a(Ljava/io/InputStream;IZ)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    .line 116
    int-to-long v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    goto :goto_0

    :cond_6
    move v0, v1

    .line 118
    goto :goto_2
.end method

.method private static b(Ljava/io/InputStream;)I
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 149
    const/16 v0, 0xe1

    invoke-static {p0, v0}, Lcom/facebook/c/b;->a(Ljava/io/InputStream;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {p0, v3, v1}, Lcom/facebook/c/c;->a(Ljava/io/InputStream;IZ)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 153
    const/4 v2, 0x6

    if-le v0, v2, :cond_0

    .line 154
    const/4 v2, 0x4

    invoke-static {p0, v2, v1}, Lcom/facebook/c/c;->a(Ljava/io/InputStream;IZ)I

    move-result v2

    .line 155
    add-int/lit8 v0, v0, -0x4

    .line 156
    invoke-static {p0, v3, v1}, Lcom/facebook/c/c;->a(Ljava/io/InputStream;IZ)I

    move-result v3

    .line 157
    add-int/lit8 v0, v0, -0x2

    .line 158
    const v4, 0x45786966

    if-ne v2, v4, :cond_0

    if-nez v3, :cond_0

    .line 164
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 123
    packed-switch p0, :pswitch_data_0

    .line 139
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 137
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
