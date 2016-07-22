.class public Lcom/avos/avoscloud/PaasClient$AVHttpClient;
.super Ljava/lang/Object;
.source "PaasClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/PaasClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVHttpClient"
.end annotation


# static fields
.field public static final JSON:Lcom/avos/avoscloud/okhttp/MediaType;


# instance fields
.field client:Lcom/avos/avoscloud/okhttp/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 891
    const-string v0, "application/json"

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->JSON:Lcom/avos/avoscloud/okhttp/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    new-instance v0, Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    .line 895
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->access$000()Ljava/net/CookieHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->setCookieHandler(Ljava/net/CookieHandler;)Lcom/avos/avoscloud/okhttp/OkHttpClient;

    .line 896
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/avos/avoscloud/PaasClient$RequestStatisticInterceptor;

    invoke-direct {v1}, Lcom/avos/avoscloud/PaasClient$RequestStatisticInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 897
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-static {}, Lcom/avos/avoscloud/DNSAmendNetwork;->getInstance()Lcom/avos/avoscloud/DNSAmendNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->setDns(Lcom/avos/avoscloud/okhttp/Dns;)Lcom/avos/avoscloud/okhttp/OkHttpClient;

    .line 898
    return-void
.end method

.method private declared-synchronized getCall(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Call;
    .locals 1
    .parameter

    .prologue
    .line 945
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->newCall(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getProgressCall(Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/PaasClient$ProgressListener;)Lcom/avos/avoscloud/okhttp/Call;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 937
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/avos/avoscloud/PaasClient$ProgressInterceptor;

    invoke-direct {v0, p2}, Lcom/avos/avoscloud/PaasClient$ProgressInterceptor;-><init>(Lcom/avos/avoscloud/PaasClient$ProgressListener;)V

    .line 938
    iget-object v1, p0, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    iget-object v1, p0, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v1, p1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->newCall(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Call;

    move-result-object v1

    .line 940
    iget-object v2, p0, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    monitor-exit p0

    return-object v1

    .line 937
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public execute(Lcom/avos/avoscloud/okhttp/Request;ZLcom/avos/avoscloud/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 916
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->getCall(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Call;

    move-result-object v0

    .line 917
    if-eqz p2, :cond_0

    .line 919
    :try_start_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Call;->execute()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    .line 920
    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/AsyncHttpResponseHandler;->onResponse(Lcom/avos/avoscloud/okhttp/Response;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    :goto_0
    return-void

    .line 921
    :catch_0
    move-exception v0

    .line 922
    invoke-virtual {p3, p1, v0}, Lcom/avos/avoscloud/AsyncHttpResponseHandler;->onFailure(Lcom/avos/avoscloud/okhttp/Request;Ljava/io/IOException;)V

    goto :goto_0

    .line 925
    :cond_0
    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/okhttp/Call;->enqueue(Lcom/avos/avoscloud/okhttp/Callback;)V

    goto :goto_0
.end method

.method public execute(Lcom/avos/avoscloud/okhttp/Request;ZLcom/avos/avoscloud/PaasClient$ProgressListener;Lcom/avos/avoscloud/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 902
    invoke-direct {p0, p1, p3}, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->getProgressCall(Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/PaasClient$ProgressListener;)Lcom/avos/avoscloud/okhttp/Call;

    move-result-object v0

    .line 903
    if-eqz p2, :cond_0

    .line 905
    :try_start_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Call;->execute()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    .line 906
    invoke-virtual {p4, v0}, Lcom/avos/avoscloud/AsyncHttpResponseHandler;->onResponse(Lcom/avos/avoscloud/okhttp/Response;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    :goto_0
    return-void

    .line 907
    :catch_0
    move-exception v0

    .line 908
    invoke-virtual {p4, p1, v0}, Lcom/avos/avoscloud/AsyncHttpResponseHandler;->onFailure(Lcom/avos/avoscloud/okhttp/Request;Ljava/io/IOException;)V

    goto :goto_0

    .line 911
    :cond_0
    invoke-virtual {v0, p4}, Lcom/avos/avoscloud/okhttp/Call;->enqueue(Lcom/avos/avoscloud/okhttp/Callback;)V

    goto :goto_0
.end method

.method public setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 949
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$AVHttpClient;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 950
    return-void
.end method
