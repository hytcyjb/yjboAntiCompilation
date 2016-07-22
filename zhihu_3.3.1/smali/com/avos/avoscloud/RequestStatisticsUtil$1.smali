.class Lcom/avos/avoscloud/RequestStatisticsUtil$1;
.super Lcom/avos/avoscloud/AsyncHttpResponseHandler;
.source "RequestStatisticsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/RequestStatisticsUtil;->sendData(Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/RequestStatisticsUtil;

.field final synthetic val$requestData:Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/RequestStatisticsUtil;Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$1;->this$0:Lcom/avos/avoscloud/RequestStatisticsUtil;

    iput-object p2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$1;->val$requestData:Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    invoke-direct {p0}, Lcom/avos/avoscloud/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    const/16 v0, 0xc8

    if-ne v0, p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$1;->this$0:Lcom/avos/avoscloud/RequestStatisticsUtil;

    #calls: Lcom/avos/avoscloud/RequestStatisticsUtil;->updateLastSendTime()V
    invoke-static {v0}, Lcom/avos/avoscloud/RequestStatisticsUtil;->access$100(Lcom/avos/avoscloud/RequestStatisticsUtil;)V

    .line 125
    iget-object v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$1;->this$0:Lcom/avos/avoscloud/RequestStatisticsUtil;

    #getter for: Lcom/avos/avoscloud/RequestStatisticsUtil;->requestStatistics:Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;
    invoke-static {v0}, Lcom/avos/avoscloud/RequestStatisticsUtil;->access$200(Lcom/avos/avoscloud/RequestStatisticsUtil;)Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$1;->val$requestData:Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->minus(Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;)V

    .line 126
    iget-object v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$1;->this$0:Lcom/avos/avoscloud/RequestStatisticsUtil;

    #getter for: Lcom/avos/avoscloud/RequestStatisticsUtil;->requestStatistics:Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;
    invoke-static {v0}, Lcom/avos/avoscloud/RequestStatisticsUtil;->access$200(Lcom/avos/avoscloud/RequestStatisticsUtil;)Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->saveToPreference()V

    .line 128
    :cond_0
    return-void
.end method
