.class public Lcom/avos/avoscloud/PaasClient$ProgressInterceptor;
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
    name = "ProgressInterceptor"
.end annotation


# instance fields
.field private progressListener:Lcom/avos/avoscloud/PaasClient$ProgressListener;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/PaasClient$ProgressListener;)V
    .locals 0
    .parameter

    .prologue
    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 985
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient$ProgressInterceptor;->progressListener:Lcom/avos/avoscloud/PaasClient$ProgressListener;

    .line 986
    return-void
.end method


# virtual methods
.method public intercept(Lcom/avos/avoscloud/okhttp/Interceptor$Chain;)Lcom/avos/avoscloud/okhttp/Response;
    .locals 4
    .parameter

    .prologue
    .line 990
    invoke-interface {p1}, Lcom/avos/avoscloud/okhttp/Interceptor$Chain;->request()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/okhttp/Interceptor$Chain;->proceed(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    .line 991
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response;->newBuilder()Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v1

    new-instance v2, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response;->body()Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v0

    iget-object v3, p0, Lcom/avos/avoscloud/PaasClient$ProgressInterceptor;->progressListener:Lcom/avos/avoscloud/PaasClient$ProgressListener;

    invoke-direct {v2, v0, v3}, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;-><init>(Lcom/avos/avoscloud/okhttp/ResponseBody;Lcom/avos/avoscloud/PaasClient$ProgressListener;)V

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Response$Builder;->body(Lcom/avos/avoscloud/okhttp/ResponseBody;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response$Builder;->build()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    return-object v0
.end method
