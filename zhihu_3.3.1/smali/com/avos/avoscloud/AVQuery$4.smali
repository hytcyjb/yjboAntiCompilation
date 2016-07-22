.class final Lcom/avos/avoscloud/AVQuery$4;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

.field final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$4;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$4;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$4;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$4;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/CloudQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 1177
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1182
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$4;->val$clazz:Ljava/lang/Class;

    #calls: Lcom/avos/avoscloud/AVQuery;->processCloudResults(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;
    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVQuery;->access$000(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;

    move-result-object v0

    .line 1183
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery$4;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    if-eqz v1, :cond_0

    .line 1184
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery$4;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/CloudQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery$4;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    if-eqz v1, :cond_0

    .line 1188
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery$4;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    invoke-static {v0, v3}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/avos/avoscloud/CloudQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
