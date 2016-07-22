.class Lcom/avos/avoscloud/AVQuery$5;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->findInBackground(Lcom/avos/avoscloud/FindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVQuery;

.field final synthetic val$internalCallback:Lcom/avos/avoscloud/FindCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/FindCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$5;->this$0:Lcom/avos/avoscloud/AVQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$5;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$5;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$5;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/FindCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 1293
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1276
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$5;->this$0:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVQuery;->processResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1277
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery$5;->this$0:Lcom/avos/avoscloud/AVQuery;

    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$5;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    invoke-virtual {v1, p1, v2}, Lcom/avos/avoscloud/AVQuery;->processAdditionalInfo(Ljava/lang/String;Lcom/avos/avoscloud/FindCallback;)V

    .line 1278
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery$5;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    if-eqz v1, :cond_0

    .line 1279
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery$5;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/FindCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1281
    :catch_0
    move-exception v0

    .line 1282
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery$5;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    if-eqz v1, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery$5;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    invoke-static {v0, v3}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/avos/avoscloud/FindCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
