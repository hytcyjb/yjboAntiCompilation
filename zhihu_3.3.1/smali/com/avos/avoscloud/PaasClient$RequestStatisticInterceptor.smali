.class public Lcom/avos/avoscloud/PaasClient$RequestStatisticInterceptor;
.super Ljava/lang/Object;
.source "PaasClient.java"

# interfaces
.implements Lcom/avos/avoscloud/okhttp/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/PaasClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestStatisticInterceptor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/avos/avoscloud/okhttp/Interceptor$Chain;)Lcom/avos/avoscloud/okhttp/Response;
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 957
    invoke-interface {p1}, Lcom/avos/avoscloud/okhttp/Interceptor$Chain;->request()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v2

    .line 958
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 959
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 961
    :goto_0
    :try_start_0
    invoke-interface {p1, v2}, Lcom/avos/avoscloud/okhttp/Interceptor$Chain;->proceed(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v2

    .line 963
    if-eqz v0, :cond_0

    .line 964
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 965
    invoke-static {}, Lcom/avos/avoscloud/RequestStatisticsUtil;->getInstance()Lcom/avos/avoscloud/RequestStatisticsUtil;

    move-result-object v3

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Response;->code()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9, v6, v7}, Lcom/avos/avoscloud/RequestStatisticsUtil;->recordRequestTime(IZJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    :cond_0
    return-object v2

    :cond_1
    move v0, v1

    .line 959
    goto :goto_0

    .line 969
    :catch_0
    move-exception v2

    .line 970
    if-eqz v0, :cond_2

    .line 971
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    .line 972
    invoke-static {}, Lcom/avos/avoscloud/RequestStatisticsUtil;->getInstance()Lcom/avos/avoscloud/RequestStatisticsUtil;

    move-result-object v0

    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/avos/avoscloud/RequestStatisticsUtil;->recordRequestTime(IZJ)V

    .line 975
    :cond_2
    throw v2
.end method
