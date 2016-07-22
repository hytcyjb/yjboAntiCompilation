.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/gp;
.super Ljava/lang/Object;
.source "FileOperateUtil.java"


# direct methods
.method public static a(Ljava/io/File;)J
    .locals 9
    .parameter "f"

    .prologue
    .line 255
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 256
    :cond_0
    const-wide/16 v3, 0x0

    .line 274
    :goto_0
    return-wide v3

    .line 259
    :cond_1
    const-wide/16 v3, 0x0

    .line 261
    .local v3, freeSize:J
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 262
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 263
    .local v2, childs:[Ljava/io/File;
    if-eqz v2, :cond_3

    .line 264
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v1, v0, v5

    .line 265
    .local v1, child:Ljava/io/File;
    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gp;->a(Ljava/io/File;)J

    move-result-wide v7

    add-long/2addr v3, v7

    .line 264
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 269
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #child:Ljava/io/File;
    .end local v2           #childs:[Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 272
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    .line 620
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 622
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 626
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
