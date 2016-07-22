.class public Lcom/ddtaxi/common/tracesdk/bf;
.super Ljava/lang/Object;


# static fields
.field private static final a:J = 0x36ee80L

.field private static final b:[I = null

.field private static final c:I = 0x240c8400

.field private static d:Lcom/ddtaxi/common/tracesdk/bf;


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lcom/ddtaxi/common/tracesdk/bh;

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ddtaxi/common/tracesdk/bf;->b:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xb8t 0xbt 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t
        0xeet 0x2t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/bf;->g:I

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/bf;->h:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/bf;->e:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/bf;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bf;->e:Landroid/content/Context;

    return-object v0
.end method

.method static a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/bf;
    .locals 2

    sget-object v0, Lcom/ddtaxi/common/tracesdk/bf;->d:Lcom/ddtaxi/common/tracesdk/bf;

    if-nez v0, :cond_1

    const-class v1, Lcom/ddtaxi/common/tracesdk/bf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ddtaxi/common/tracesdk/bf;->d:Lcom/ddtaxi/common/tracesdk/bf;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/common/tracesdk/bf;

    invoke-direct {v0, p0}, Lcom/ddtaxi/common/tracesdk/bf;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/bf;->d:Lcom/ddtaxi/common/tracesdk/bf;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ddtaxi/common/tracesdk/bf;->d:Lcom/ddtaxi/common/tracesdk/bf;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/bf;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/bf;->g:I

    return-void
.end method

.method public static a([B)[B
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/ddtaxi/common/tracesdk/bf;)I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/bf;->h:I

    return v0
.end method

.method static synthetic b(Lcom/ddtaxi/common/tracesdk/bf;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/bf;->h:I

    return-void
.end method

.method public static b([B)[B
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/util/zip/ZipEntry;

    const-string v4, "zip"

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    array-length v4, p0

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/zip/ZipEntry;->setSize(J)V

    invoke-virtual {v0, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v0, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/ddtaxi/common/tracesdk/bf;)V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/bf;->f()V

    return-void
.end method

.method public static c([B)[B
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v0, p0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/zip/Deflater;->setLevel(I)V

    const/4 v3, 0x0

    array-length v4, p0

    invoke-virtual {v0, p0, v3, v4}, Ljava/util/zip/Deflater;->setInput([BII)V

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method static synthetic d(Lcom/ddtaxi/common/tracesdk/bf;)I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/bf;->g:I

    return v0
.end method

.method static synthetic d()[I
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/bf;->b:[I

    return-object v0
.end method

.method private e()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bf;->e:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bf;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getInstance(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/TraceManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/common/tracesdk/TraceManager;->setEarliestInsertTime(J)V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 9

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bf;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getInstance(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/TraceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bf;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/ddtaxi/common/tracesdk/f;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ddtaxi/common/tracesdk/f;->a()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getLastUploadFailTs()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getEarliestInsertTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getDataCountThreshold()I

    move-result v0

    int-to-long v7, v0

    cmp-long v0, v1, v7

    if-gez v0, :cond_0

    const-wide/32 v0, 0x240c8400

    cmp-long v0, v5, v0

    if-ltz v0, :cond_1

    :cond_0
    const-wide/32 v0, 0x36ee80

    cmp-long v0, v3, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/bf;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/bf;->c()V

    :cond_0
    return-void
.end method

.method c()V
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bf;->f:Lcom/ddtaxi/common/tracesdk/bh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bf;->f:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/bh;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/ddtaxi/common/tracesdk/bh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ddtaxi/common/tracesdk/bh;-><init>(Lcom/ddtaxi/common/tracesdk/bf;Lcom/ddtaxi/common/tracesdk/bh;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/bf;->f:Lcom/ddtaxi/common/tracesdk/bh;

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bf;->f:Lcom/ddtaxi/common/tracesdk/bh;

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/bh;->start()V

    :cond_1
    return-void
.end method
