.class public final Lcom/alipay/sdk/tid/b;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/alipay/sdk/tid/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/sdk/tid/b;
    .locals 8

    const-class v1, Lcom/alipay/sdk/tid/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/sdk/tid/b;->c:Lcom/alipay/sdk/tid/b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/alipay/sdk/tid/b;

    invoke-direct {v0}, Lcom/alipay/sdk/tid/b;-><init>()V

    sput-object v0, Lcom/alipay/sdk/tid/b;->c:Lcom/alipay/sdk/tid/b;

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/sdk/sys/b;->a:Landroid/content/Context;

    new-instance v2, Lcom/alipay/sdk/tid/a;

    invoke-direct {v2, v0}, Lcom/alipay/sdk/tid/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/sdk/util/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/b;->b()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/alipay/sdk/tid/b;->c:Lcom/alipay/sdk/tid/b;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/sdk/tid/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    sget-object v0, Lcom/alipay/sdk/tid/b;->c:Lcom/alipay/sdk/tid/b;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/sdk/tid/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    sget-object v0, Lcom/alipay/sdk/tid/b;->c:Lcom/alipay/sdk/tid/b;

    iget-object v0, v0, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v5, Lcom/alipay/sdk/tid/b;->c:Lcom/alipay/sdk/tid/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, v5, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/alipay/sdk/tid/b;->c:Lcom/alipay/sdk/tid/b;

    iget-object v0, v0, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    sget-object v5, Lcom/alipay/sdk/tid/b;->c:Lcom/alipay/sdk/tid/b;

    iget-object v5, v5, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/alipay/sdk/tid/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/alipay/sdk/tid/b;->c:Lcom/alipay/sdk/tid/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    new-instance v1, Lcom/alipay/sdk/tid/a;

    invoke-direct {v1, p1}, Lcom/alipay/sdk/tid/a;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-static {p1}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/util/b;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/alipay/sdk/tid/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/a;->close()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/a;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/a;->close()V

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static e()V
    .locals 4

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/sdk/sys/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/util/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/util/b;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/sdk/tid/a;

    invoke-direct {v3, v0}, Lcom/alipay/sdk/tid/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1, v2}, Lcom/alipay/sdk/tid/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/sdk/tid/a;->close()V

    return-void
.end method

.method private static f()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
