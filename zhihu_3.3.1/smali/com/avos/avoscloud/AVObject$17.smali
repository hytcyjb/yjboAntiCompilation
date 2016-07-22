.class final Lcom/avos/avoscloud/AVObject$17;
.super Lcom/avos/avoscloud/SaveCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->_saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$genericObjectCallback:Lcom/avos/avoscloud/GenericObjectCallback;

.field final synthetic val$list:Ljava/util/LinkedList;

.field final synthetic val$objects:Ljava/util/List;

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/LinkedList;ZLcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1625
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$17;->val$objects:Ljava/util/List;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$17;->val$list:Ljava/util/LinkedList;

    iput-boolean p3, p0, Lcom/avos/avoscloud/AVObject$17;->val$sync:Z

    iput-object p4, p0, Lcom/avos/avoscloud/AVObject$17;->val$genericObjectCallback:Lcom/avos/avoscloud/GenericObjectCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1629
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$17;->val$objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 1630
    const/4 v2, 0x1

    #setter for: Lcom/avos/avoscloud/AVObject;->running:Z
    invoke-static {v0, v2}, Lcom/avos/avoscloud/AVObject;->access$502(Lcom/avos/avoscloud/AVObject;Z)Z

    .line 1631
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$17;->val$list:Ljava/util/LinkedList;

    #calls: Lcom/avos/avoscloud/AVObject;->buildParameterForNonSavedObject(Ljava/util/List;)V
    invoke-static {v0, v2}, Lcom/avos/avoscloud/AVObject;->access$700(Lcom/avos/avoscloud/AVObject;Ljava/util/List;)V

    goto :goto_0

    .line 1633
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$17;->val$list:Ljava/util/LinkedList;

    iget-boolean v2, p0, Lcom/avos/avoscloud/AVObject$17;->val$sync:Z

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/avos/avoscloud/AVObject$17;->val$genericObjectCallback:Lcom/avos/avoscloud/GenericObjectCallback;

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    return-void
.end method
