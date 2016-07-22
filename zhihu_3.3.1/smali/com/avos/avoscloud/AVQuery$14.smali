.class Lcom/avos/avoscloud/AVQuery$14;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->find()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVQuery;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVQuery;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1568
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$14;->this$0:Lcom/avos/avoscloud/AVQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$14;->val$result:Ljava/util/List;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1580
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    .line 1581
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1572
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$14;->val$result:Ljava/util/List;

    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery$14;->this$0:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v1, p1}, Lcom/avos/avoscloud/AVQuery;->processResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    :goto_0
    return-void

    .line 1573
    :catch_0
    move-exception v0

    .line 1574
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
