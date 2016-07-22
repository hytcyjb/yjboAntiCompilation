.class public Lcom/avos/avoscloud/AVCloud;
.super Ljava/lang/Object;
.source "AVCloud.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callFunction(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 58
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->cloudInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "functions/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/avos/avoscloud/AVCloud$1;

    invoke-direct {v5, v0}, Lcom/avos/avoscloud/AVCloud$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 71
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 72
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/FunctionCallback;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/avos/avoscloud/FunctionCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->cloudInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "functions/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/avos/avoscloud/AVCloud$2;

    invoke-direct {v4, p2}, Lcom/avos/avoscloud/AVCloud$2;-><init>(Lcom/avos/avoscloud/FunctionCallback;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 102
    return-void
.end method

.method public static convertCloudResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 122
    :try_start_0
    const-class v0, Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 123
    const-string v2, "result"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_1

    .line 126
    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 137
    :cond_0
    :goto_0
    return-object v0

    .line 127
    :cond_1
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 128
    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/util/Map;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string v2, "Error during response parse"

    invoke-static {v2, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static rpcFunction(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 147
    const/4 v1, 0x1

    new-instance v2, Lcom/avos/avoscloud/AVCloud$3;

    invoke-direct {v2, v0}, Lcom/avos/avoscloud/AVCloud$3;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {p0, p1, v1, v2}, Lcom/avos/avoscloud/AVCloud;->rpcFunctionInBackground(Ljava/lang/String;Ljava/lang/Object;ZLcom/avos/avoscloud/FunctionCallback;)V

    .line 162
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 163
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static rpcFunctionInBackground(Ljava/lang/String;Ljava/lang/Object;Lcom/avos/avoscloud/FunctionCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/avos/avoscloud/FunctionCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVCloud;->rpcFunctionInBackground(Ljava/lang/String;Ljava/lang/Object;ZLcom/avos/avoscloud/FunctionCallback;)V

    .line 143
    return-void
.end method

.method private static rpcFunctionInBackground(Ljava/lang/String;Ljava/lang/Object;ZLcom/avos/avoscloud/FunctionCallback;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z",
            "Lcom/avos/avoscloud/FunctionCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->restfulCloudData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->cloudInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/avos/avoscloud/AVCloud$4;

    invoke-direct {v3, p3}, Lcom/avos/avoscloud/AVCloud$4;-><init>(Lcom/avos/avoscloud/FunctionCallback;)V

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 182
    return-void
.end method

.method public static setProductionMode(Z)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->cloudInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/PaasClient;->setProduction(Z)V

    .line 44
    return-void
.end method
