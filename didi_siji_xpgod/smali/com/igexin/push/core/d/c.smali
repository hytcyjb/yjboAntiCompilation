.class public Lcom/igexin/push/core/d/c;
.super Lcom/igexin/push/f/a/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/igexin/push/d/c/a;

.field private d:Lcom/igexin/push/core/bean/PushTaskBean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/igexin/push/d/c/a;Lcom/igexin/push/core/bean/PushTaskBean;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/igexin/push/f/a/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/igexin/push/core/d/c;->b:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/d/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/igexin/push/core/d/c;->c:Lcom/igexin/push/d/c/a;

    iput-object p3, p0, Lcom/igexin/push/core/d/c;->d:Lcom/igexin/push/core/bean/PushTaskBean;

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/core/d/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/core/d/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/igexin/push/core/d/c;)Lcom/igexin/push/d/c/a;
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/core/d/c;->c:Lcom/igexin/push/d/c/a;

    return-object v0
.end method

.method static synthetic c(Lcom/igexin/push/core/d/c;)Lcom/igexin/push/core/bean/PushTaskBean;
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/core/d/c;->d:Lcom/igexin/push/core/bean/PushTaskBean;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/d/c/a;)V
    .locals 4

    new-instance v0, Lcom/igexin/push/d/c/c;

    invoke-direct {v0}, Lcom/igexin/push/d/c/c;-><init>()V

    invoke-virtual {v0}, Lcom/igexin/push/d/c/c;->a()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/push/d/c/c;->c:Ljava/lang/Object;

    sget-object v1, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    iput-object v1, v0, Lcom/igexin/push/d/c/c;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/igexin/push/d/c/c;->a:I

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/e/j;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/igexin/push/e/j;->a(Ljava/lang/String;Lcom/igexin/push/d/c/e;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdnRetrieve|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/igexin/push/d/c/a;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->k()J

    move-result-wide v0

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/igexin/push/core/d/e;

    invoke-direct {v3, p0, p1, p2}, Lcom/igexin/push/core/d/e;-><init>(Lcom/igexin/push/core/d/c;Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/d/c/a;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    sget-object v0, Lcom/igexin/push/core/g;->an:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/igexin/push/core/d/c;->c:Lcom/igexin/push/d/c/a;

    invoke-virtual {v0}, Lcom/igexin/push/d/c/a;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->k()J

    move-result-wide v0

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/igexin/push/core/d/d;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/d/d;-><init>(Lcom/igexin/push/core/d/c;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/igexin/push/core/d/c;->d:Lcom/igexin/push/core/bean/PushTaskBean;

    iget-object v1, p0, Lcom/igexin/push/core/d/c;->c:Lcom/igexin/push/d/c/a;

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/core/d/c;->a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/d/c/a;)V

    goto :goto_0
.end method

.method public a([B)V
    .locals 5

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/igexin/push/core/g;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/igexin/a/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/b/g;->b([B)[B

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "id"

    iget-object v2, p0, Lcom/igexin/push/core/d/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "messageid"

    iget-object v2, p0, Lcom/igexin/push/core/d/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cdnType"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "action"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pushmessage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "extraData"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "extraData"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/igexin/push/core/a/f;->a(Lorg/json/JSONObject;[BZ)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Get error CDNData, can not UnGzip it..."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
