.class Lcom/crashlytics/android/core/v;
.super Ljava/lang/Object;
.source "QueueFileLogStore.java"

# interfaces
.implements Lcom/crashlytics/android/core/p;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:I

.field private c:Lio/fabric/sdk/android/services/common/n;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/crashlytics/android/core/v;->a:Ljava/io/File;

    .line 40
    iput p2, p0, Lcom/crashlytics/android/core/v;->b:I

    .line 41
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 103
    iget-object v0, p0, Lcom/crashlytics/android/core/v;->c:Lio/fabric/sdk/android/services/common/n;

    if-nez v0, :cond_0

    .line 105
    :try_start_0
    new-instance v0, Lio/fabric/sdk/android/services/common/n;

    iget-object v1, p0, Lcom/crashlytics/android/core/v;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/common/n;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/v;->c:Lio/fabric/sdk/android/services/common/n;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not open log file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/crashlytics/android/core/v;->a:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/crashlytics/android/core/b;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 51
    iget-object v1, p0, Lcom/crashlytics/android/core/v;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-object v0

    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/crashlytics/android/core/v;->d()V

    .line 58
    iget-object v1, p0, Lcom/crashlytics/android/core/v;->c:Lio/fabric/sdk/android/services/common/n;

    if-eqz v1, :cond_0

    .line 66
    const/4 v0, 0x1

    new-array v1, v0, [I

    aput v6, v1, v6

    .line 68
    iget-object v0, p0, Lcom/crashlytics/android/core/v;->c:Lio/fabric/sdk/android/services/common/n;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/n;->a()I

    move-result v0

    new-array v2, v0, [B

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/v;->c:Lio/fabric/sdk/android/services/common/n;

    new-instance v3, Lcom/crashlytics/android/core/v$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/crashlytics/android/core/v$1;-><init>(Lcom/crashlytics/android/core/v;[B[I)V

    invoke-virtual {v0, v3}, Lio/fabric/sdk/android/services/common/n;->a(Lio/fabric/sdk/android/services/common/n$c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_1
    aget v0, v1, v6

    invoke-static {v2, v6, v0}, Lcom/crashlytics/android/core/b;->a([BII)Lcom/crashlytics/android/core/b;

    move-result-object v0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "A problem occurred while reading the Crashlytics log file."

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/crashlytics/android/core/v;->c:Lio/fabric/sdk/android/services/common/n;

    const-string v1, "There was a problem closing the Crashlytics log file."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crashlytics/android/core/v;->c:Lio/fabric/sdk/android/services/common/n;

    .line 94
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/crashlytics/android/core/v;->b()V

    .line 99
    iget-object v0, p0, Lcom/crashlytics/android/core/v;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 100
    return-void
.end method
