.class public Lcom/zhihu/android/app/util/ba;
.super Ljava/lang/Object;
.source "WeChatHelper.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "com.tencent.mm"

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020136

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/util/h;->b(Landroid/graphics/drawable/Drawable;)[B

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/zhihu/android/app/util/ba;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 84
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    const/16 v0, 0x64

    .line 106
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 107
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p5, v2, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 108
    add-int/lit8 v0, v0, -0xa

    .line 109
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    const v3, 0x8000

    if-le v2, v3, :cond_1

    if-gtz v0, :cond_0

    .line 111
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 113
    invoke-static/range {v0 .. v5}, Lcom/zhihu/android/app/util/ba;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 114
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-static {}, Lcom/zhihu/android/social/e;->a()Lcom/zhihu/android/social/e;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/zhihu/android/social/e;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 100
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/zhihu/android/social/a/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-static {p0}, Lcom/zhihu/android/app/util/ba;->b(Landroid/content/Context;)V

    .line 88
    invoke-static {}, Lcom/zhihu/android/social/e;->a()Lcom/zhihu/android/social/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/zhihu/android/social/e;->a(Landroid/app/Activity;Lcom/zhihu/android/social/a/a;)V

    .line 89
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 47
    invoke-static {}, Lcom/zhihu/android/social/e;->a()Lcom/zhihu/android/social/e;

    move-result-object v0

    const-string v1, "wxd3f6cb54399a8489"

    const-string v2, "449a20b364bf94e91645dc618fce6825"

    invoke-virtual {v0, p0, v1, v2}, Lcom/zhihu/android/social/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    const-string v0, "com.tencent.mm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-static {}, Lcom/zhihu/android/social/e;->a()Lcom/zhihu/android/social/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zhihu/android/social/e;->b(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-static {}, Lcom/zhihu/android/social/e;->a()Lcom/zhihu/android/social/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zhihu/android/social/e;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    const-string v0, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
