.class public Lcom/tendcloud/appcpa/n;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/tendcloud/appcpa/b;

.field private static b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/appcpa/n;->a:Lcom/tendcloud/appcpa/b;

    new-instance v0, Lcom/tendcloud/appcpa/m;

    sget-object v1, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tendcloud/appcpa/m;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/appcpa/n;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final a()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/tendcloud/appcpa/n;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Landroid/os/Message;)V
    .locals 0

    invoke-static {p0}, Lcom/tendcloud/appcpa/n;->b(Landroid/os/Message;)V

    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const-class v1, Lcom/tendcloud/appcpa/n;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/tendcloud/appcpa/n;->a:Lcom/tendcloud/appcpa/b;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tendcloud/appcpa/b;

    const-string v3, ""

    sget-object v4, Lcom/tendcloud/appcpa/e;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v5, Lcom/tendcloud/appcpa/e;->b:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x50

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tendcloud/appcpa/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v2, Lcom/tendcloud/appcpa/n;->a:Lcom/tendcloud/appcpa/b;

    :cond_0
    sget-object v2, Lcom/tendcloud/appcpa/n;->a:Lcom/tendcloud/appcpa/b;

    invoke-virtual {v2, p0}, Lcom/tendcloud/appcpa/b;->a(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    const-string v0, "Send data to server success"

    invoke-static {v0}, Lcom/tendcloud/appcpa/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    :try_start_1
    const-string v2, "Send data to server faild"

    invoke-static {v2}, Lcom/tendcloud/appcpa/h;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b()V
    .locals 1

    invoke-static {}, Lcom/tendcloud/appcpa/p;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tendcloud/appcpa/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tendcloud/appcpa/p;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tendcloud/appcpa/n;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "trySendSavedData confirm data error"

    invoke-static {v0}, Lcom/tendcloud/appcpa/h;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static final b(Landroid/os/Message;)V
    .locals 10

    const-wide/16 v8, 0x3a98

    const/16 v7, 0x8

    iget v0, p0, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/tendcloud/appcpa/g;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "tp"

    const-string v2, "active"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "it"

    invoke-static {}, Lcom/tendcloud/appcpa/e;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "me"

    invoke-static {}, Lcom/tendcloud/appcpa/e;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "/s"

    invoke-static {v0, v1}, Lcom/tendcloud/appcpa/e;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/appcpa/p;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/appcpa/g;->b()V

    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "tp"

    const-string v2, "_launch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lastDuration"

    invoke-static {}, Lcom/tendcloud/appcpa/g;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "interval"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/tendcloud/appcpa/g;->c()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "ts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "/d"

    invoke-static {v0, v1}, Lcom/tendcloud/appcpa/e;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tendcloud/appcpa/g;->a(J)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tendcloud/appcpa/g;->a(I)V

    sget-object v1, Lcom/tendcloud/appcpa/n;->b:Landroid/os/Handler;

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {v0}, Lcom/tendcloud/appcpa/p;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/appcpa/n;->b()V

    goto/16 :goto_0

    :pswitch_2
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "account"

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tp"

    const-string v2, "_reg"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/d"

    invoke-static {v1, v0}, Lcom/tendcloud/appcpa/e;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/appcpa/p;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/appcpa/n;->b()V

    goto/16 :goto_0

    :pswitch_3
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "account"

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tp"

    const-string v2, "_login"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/d"

    invoke-static {v1, v0}, Lcom/tendcloud/appcpa/e;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/appcpa/p;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/appcpa/n;->b()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tendcloud/appcpa/j;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "orderId"

    iget-object v3, v0, Lcom/tendcloud/appcpa/j;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "account"

    iget-object v3, v0, Lcom/tendcloud/appcpa/j;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "amount"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/tendcloud/appcpa/j;->b:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "currencyType"

    iget-object v3, v0, Lcom/tendcloud/appcpa/j;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tp"

    const-string v3, "_pay"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "paytype"

    iget-object v0, v0, Lcom/tendcloud/appcpa/j;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/d"

    invoke-static {v1, v0}, Lcom/tendcloud/appcpa/e;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/appcpa/p;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/appcpa/n;->b()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "tp"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/d"

    invoke-static {v1, v0}, Lcom/tendcloud/appcpa/e;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/appcpa/p;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/appcpa/n;->b()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/appcpa/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/tendcloud/appcpa/p;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lcom/tendcloud/appcpa/g;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Lcom/tendcloud/appcpa/g;->a(I)V

    sget-object v0, Lcom/tendcloud/appcpa/n;->b:Landroid/os/Handler;

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
