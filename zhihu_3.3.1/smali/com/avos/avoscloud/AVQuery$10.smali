.class Lcom/avos/avoscloud/AVQuery$10;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/GetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVQuery;

.field final synthetic val$internalCallback:Lcom/avos/avoscloud/GetCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/GetCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$10;->this$0:Lcom/avos/avoscloud/AVQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$10;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$10;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$10;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 1473
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1436
    .line 1438
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1440
    new-instance p2, Lcom/avos/avoscloud/AVException;

    const/16 v0, 0x65

    const-string v2, "Object is not found."

    invoke-direct {p2, v0, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    .line 1462
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery$10;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    if-eqz v1, :cond_1

    .line 1463
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery$10;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    invoke-virtual {v1, v0, p2}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 1465
    :cond_1
    return-void

    .line 1443
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$10;->this$0:Lcom/avos/avoscloud/AVQuery;

    #getter for: Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;
    invoke-static {v0}, Lcom/avos/avoscloud/AVQuery;->access$100(Lcom/avos/avoscloud/AVQuery;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1445
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$10;->this$0:Lcom/avos/avoscloud/AVQuery;

    #getter for: Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;
    invoke-static {v0}, Lcom/avos/avoscloud/AVQuery;->access$100(Lcom/avos/avoscloud/AVQuery;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1454
    :goto_1
    :try_start_2
    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 1455
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->rebuildInstanceData()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1456
    :catch_0
    move-exception v1

    .line 1457
    :goto_2
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$10;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    if-eqz v2, :cond_0

    .line 1458
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$10;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    new-instance v3, Lcom/avos/avoscloud/AVException;

    invoke-direct {v3, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v0, v3}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 1446
    :catch_1
    move-exception v0

    .line 1447
    :try_start_3
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$10;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    const-string v3, "Please create non-params constructor"

    invoke-static {v0, v3}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/GetCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    move-object v0, v1

    .line 1449
    goto :goto_1

    .line 1451
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$10;->this$0:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->newAVObjectByClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_1

    .line 1456
    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_2
.end method
