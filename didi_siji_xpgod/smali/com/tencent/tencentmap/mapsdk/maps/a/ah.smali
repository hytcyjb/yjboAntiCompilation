.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ah;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 6
    .parameter "e"

    .prologue
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 122
    .local v2, stack:[Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_0

    .line 124
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 130
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 124
    :cond_1
    aget-object v0, v2, v3

    .line 125
    .local v0, elem:Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a:Z

    .line 61
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 33
    sget-boolean v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a:Z

    if-eqz v0, :cond_0

    .line 34
    if-nez p0, :cond_0

    .line 36
    :cond_0
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a:Z

    .line 72
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 83
    sget-boolean v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a:Z

    if-nez v3, :cond_0

    .line 100
    :goto_0
    return-void

    .line 88
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, appDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "xiaozhi.txt"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .local v1, exLogFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 93
    :cond_1
    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 94
    .local v2, fw:Ljava/io/FileWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy_MM_dd_HH_mm_ss"

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 96
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    .end local v0           #appDir:Ljava/io/File;
    .end local v1           #exLogFile:Ljava/io/File;
    .end local v2           #fw:Ljava/io/FileWriter;
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
