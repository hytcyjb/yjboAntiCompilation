.class public final Lcom/ta/utdid2/device/b;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field static a:Ljava/lang/String;

.field static final b:Ljava/lang/Object;

.field private static c:Lcom/ta/utdid2/device/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/b;->c:Lcom/ta/utdid2/device/a;

    .line 13
    const-string v0, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    sput-object v0, Lcom/ta/utdid2/device/b;->a:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/ta/utdid2/device/a;
    .locals 2
    .parameter

    .prologue
    .line 80
    const-class v1, Lcom/ta/utdid2/device/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ta/utdid2/device/b;->c:Lcom/ta/utdid2/device/a;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/ta/utdid2/device/b;->c:Lcom/ta/utdid2/device/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :goto_0
    monitor-exit v1

    return-object v0

    .line 83
    :cond_0
    if-eqz p0, :cond_1

    .line 84
    :try_start_1
    invoke-static {p0}, Lcom/ta/utdid2/device/b;->b(Landroid/content/Context;)Lcom/ta/utdid2/device/a;

    move-result-object v0

    .line 85
    sput-object v0, Lcom/ta/utdid2/device/b;->c:Lcom/ta/utdid2/device/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/ta/utdid2/device/a;
    .locals 7
    .parameter

    .prologue
    .line 47
    if-eqz p0, :cond_2

    .line 48
    new-instance v0, Lcom/ta/utdid2/device/a;

    invoke-direct {v0}, Lcom/ta/utdid2/device/a;-><init>()V

    .line 49
    sget-object v3, Lcom/ta/utdid2/device/b;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 50
    :try_start_0
    invoke-static {p0}, Lcom/ta/utdid2/device/c;->a(Landroid/content/Context;)Lcom/ta/utdid2/device/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/utdid2/device/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/ta/utdid2/b/a/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 56
    :goto_0
    new-instance v0, Lcom/ta/utdid2/device/a;

    invoke-direct {v0}, Lcom/ta/utdid2/device/a;-><init>()V

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 58
    invoke-static {p0}, Lcom/ta/utdid2/b/a/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {p0}, Lcom/ta/utdid2/b/a/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-virtual {v0, v2}, Lcom/ta/utdid2/device/a;->c(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, v2}, Lcom/ta/utdid2/device/a;->a(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v4, v5}, Lcom/ta/utdid2/device/a;->b(J)V

    .line 63
    invoke-virtual {v0, v6}, Lcom/ta/utdid2/device/a;->b(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/ta/utdid2/device/a;->d(Ljava/lang/String;)V

    .line 65
    const-string v1, "%s%s%s%s%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/ta/utdid2/device/a;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/ta/utdid2/device/a;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/ta/utdid2/device/a;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/ta/utdid2/device/a;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x4

    invoke-virtual {v0}, Lcom/ta/utdid2/device/a;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ta/utdid2/b/a/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/zip/Adler32;

    invoke-direct {v2}, Ljava/util/zip/Adler32;-><init>()V

    invoke-virtual {v2}, Ljava/util/zip/Adler32;->reset()V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/zip/Adler32;->update([B)V

    invoke-virtual {v2}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/ta/utdid2/device/a;->a(J)V

    .line 66
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_2
    return-object v0

    .line 65
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_1

    .line 68
    :cond_1
    monitor-exit v3

    .line 70
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
