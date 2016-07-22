.class Lcom/avos/avoscloud/AVHistoryMessageQuery$2;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVHistoryMessageQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVHistoryMessageQuery;->findInBackground(Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVHistoryMessageQuery;

.field final synthetic val$callback:Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVHistoryMessageQuery;Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;->this$0:Lcom/avos/avoscloud/AVHistoryMessageQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;->val$callback:Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;->val$callback:Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;->val$callback:Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;->done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 159
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;->val$callback:Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;->this$0:Lcom/avos/avoscloud/AVHistoryMessageQuery;

    #calls: Lcom/avos/avoscloud/AVHistoryMessageQuery;->processResults(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVHistoryMessageQuery;->access$000(Lcom/avos/avoscloud/AVHistoryMessageQuery;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;->val$callback:Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;

    invoke-interface {v1, v0, v2}, Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;->done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;->val$callback:Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;->val$callback:Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;

    invoke-interface {v0, v2, p2}, Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;->done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
