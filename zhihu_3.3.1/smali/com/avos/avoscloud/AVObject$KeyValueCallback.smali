.class abstract Lcom/avos/avoscloud/AVObject$KeyValueCallback;
.super Ljava/lang/Object;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "KeyValueCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;


# direct methods
.method private constructor <init>(Lcom/avos/avoscloud/AVObject;)V
    .locals 0
    .parameter

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVObject$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1277
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;-><init>(Lcom/avos/avoscloud/AVObject;)V

    return-void
.end method


# virtual methods
.method public abstract createOp()Lcom/avos/avoscloud/ops/AVOp;
.end method

.method public execute(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1280
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    .line 1281
    return-void
.end method

.method public execute(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1285
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object v0, v0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1286
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object v0, v0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/AVOp;

    .line 1287
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->createOp()Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v1

    .line 1288
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1293
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object v2, v2, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1294
    invoke-interface {v1, v2}, Lcom/avos/avoscloud/ops/AVOp;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1295
    if-eqz p2, :cond_1

    .line 1296
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object v2, v2, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    :goto_1
    if-nez v1, :cond_2

    .line 1301
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object v0, v0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    :goto_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object v0, v0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1310
    :goto_3
    return-void

    .line 1291
    :cond_0
    :try_start_1
    invoke-interface {v0, v1}, Lcom/avos/avoscloud/ops/AVOp;->merge(Lcom/avos/avoscloud/ops/AVOp;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v0

    goto :goto_0

    .line 1298
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object v0, v0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1305
    :catch_0
    move-exception v0

    .line 1306
    :try_start_2
    invoke-static {}, Lcom/avos/avoscloud/AVObject;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1308
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object v0, v0, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    .line 1303
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object v0, v0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1308
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object v1, v1, Lcom/avos/avoscloud/AVObject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
