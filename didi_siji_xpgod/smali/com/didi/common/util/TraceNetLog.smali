.class public Lcom/didi/common/util/TraceNetLog;
.super Ljava/lang/Object;
.source "TraceNetLog.java"


# static fields
.field private static addpushcnt:I

.field private static arrayDebugLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static fileName:Ljava/lang/String;

.field private static orderStatus:I

.field private static reverse:I

.field private static tencentcnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/didi/common/util/TraceNetLog;->arrayDebugLog:Ljava/util/ArrayList;

    .line 25
    sput v1, Lcom/didi/common/util/TraceNetLog;->reverse:I

    .line 27
    sput v1, Lcom/didi/common/util/TraceNetLog;->orderStatus:I

    .line 29
    sput v1, Lcom/didi/common/util/TraceNetLog;->addpushcnt:I

    .line 32
    sput v1, Lcom/didi/common/util/TraceNetLog;->tencentcnt:I

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/didi/common/util/Constant;->NET_LOG_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/common/util/TraceNetLog;->fileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 22
    invoke-static {}, Lcom/didi/common/util/TraceNetLog;->renameLog()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/didi/common/util/TraceNetLog;->arrayDebugLog:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-static {p0}, Lcom/didi/common/util/TraceNetLog;->writeToSdCard(Ljava/lang/String;)V

    return-void
.end method

.method private static dataFormat()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static initLoop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 126
    sput v0, Lcom/didi/common/util/TraceNetLog;->reverse:I

    .line 127
    sput v0, Lcom/didi/common/util/TraceNetLog;->orderStatus:I

    .line 128
    sput v0, Lcom/didi/common/util/TraceNetLog;->addpushcnt:I

    .line 129
    sput v0, Lcom/didi/common/util/TraceNetLog;->tencentcnt:I

    .line 130
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 4
    .parameter "log"

    .prologue
    const/4 v3, 0x5

    .line 41
    const-string v0, "geo/reversecoding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    sget v0, Lcom/didi/common/util/TraceNetLog;->reverse:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/didi/common/util/TraceNetLog;->reverse:I

    .line 43
    sget v0, Lcom/didi/common/util/TraceNetLog;->reverse:I

    if-gt v0, v3, :cond_6

    .line 44
    sget-object v0, Lcom/didi/common/util/TraceNetLog;->arrayDebugLog:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/TraceNetLog;->dataFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    const-string v0, "tencent errno:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 51
    sget v0, Lcom/didi/common/util/TraceNetLog;->tencentcnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/didi/common/util/TraceNetLog;->tencentcnt:I

    .line 52
    sget v0, Lcom/didi/common/util/TraceNetLog;->tencentcnt:I

    if-gt v0, v3, :cond_6

    .line 53
    sget-object v0, Lcom/didi/common/util/TraceNetLog;->arrayDebugLog:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/TraceNetLog;->dataFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    const-string v0, "passenger/addpush"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 60
    sget v0, Lcom/didi/common/util/TraceNetLog;->addpushcnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/didi/common/util/TraceNetLog;->addpushcnt:I

    .line 61
    sget v0, Lcom/didi/common/util/TraceNetLog;->addpushcnt:I

    if-gt v0, v3, :cond_6

    .line 62
    sget-object v0, Lcom/didi/common/util/TraceNetLog;->arrayDebugLog:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/TraceNetLog;->dataFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_2
    const-string v0, "p_neworder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    const-string v0, "p_preorder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    const-string v0, "p_recall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    const-string v0, "pNewOrder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    const-string v0, "pRecall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    .line 70
    :cond_3
    invoke-static {}, Lcom/didi/common/util/TraceNetLog;->initLoop()V

    .line 72
    :cond_4
    const-string v0, "p_getorderstatus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 73
    sget v0, Lcom/didi/common/util/TraceNetLog;->orderStatus:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/didi/common/util/TraceNetLog;->orderStatus:I

    .line 74
    sget v0, Lcom/didi/common/util/TraceNetLog;->orderStatus:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_6

    .line 75
    sget-object v0, Lcom/didi/common/util/TraceNetLog;->arrayDebugLog:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/TraceNetLog;->dataFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_5
    sget-object v0, Lcom/didi/common/util/TraceNetLog;->arrayDebugLog:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/TraceNetLog;->dataFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_6
    return-void
.end method

.method public static releaseLog()V
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/didi/common/util/TraceNetLog;->arrayDebugLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    return-void
.end method

.method private static rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "oldFileName"
    .parameter "newFileName"

    .prologue
    .line 112
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, source:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/common/util/TraceNetLog;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, newFileNm:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0
.end method

.method private static renameLog()V
    .locals 5

    .prologue
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/didi/common/util/TraceNetLog;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "netlog.log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, log:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide/high16 v3, 0x4138

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 106
    const-string v1, "netlog.bak"

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceNetLog;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method public static saveLog()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/didi/common/util/TraceNetLog$1;

    invoke-direct {v0}, Lcom/didi/common/util/TraceNetLog$1;-><init>()V

    invoke-virtual {v0}, Lcom/didi/common/util/TraceNetLog$1;->start()V

    .line 100
    return-void
.end method

.method private static writeToSdCard(Ljava/lang/String;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 139
    .local v4, osw:Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/didi/common/util/TraceNetLog;->fileName:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v3, logFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 141
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 143
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/didi/common/util/TraceNetLog;->fileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "netlog.log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v2, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 144
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v5, v2, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 145
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .local v5, osw:Ljava/io/OutputStreamWriter;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 152
    if-eqz v2, :cond_7

    .line 154
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 155
    if-eqz v5, :cond_1

    .line 156
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 161
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 162
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 166
    .end local v3           #logFile:Ljava/io/File;
    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    :cond_2
    :goto_1
    return-void

    .line 158
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #logFile:Ljava/io/File;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #logFile:Ljava/io/File;
    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 152
    if-eqz v1, :cond_2

    .line 154
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 155
    if-eqz v4, :cond_3

    .line 156
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 161
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    const/4 v1, 0x0

    .line 162
    const/4 v4, 0x0

    goto :goto_1

    .line 158
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 159
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 149
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 150
    .restart local v0       #e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 152
    if-eqz v1, :cond_2

    .line 154
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 155
    if-eqz v4, :cond_4

    .line 156
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 161
    :cond_4
    :goto_5
    const/4 v1, 0x0

    .line 162
    const/4 v4, 0x0

    goto :goto_1

    .line 158
    :catch_4
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 152
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v1, :cond_6

    .line 154
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 155
    if-eqz v4, :cond_5

    .line 156
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 161
    :cond_5
    :goto_7
    const/4 v1, 0x0

    .line 162
    const/4 v4, 0x0

    :cond_6
    throw v6

    .line 158
    :catch_5
    move-exception v0

    .line 159
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 152
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #logFile:Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 149
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    :catch_7
    move-exception v0

    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 147
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    :catch_9
    move-exception v0

    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    :cond_7
    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
