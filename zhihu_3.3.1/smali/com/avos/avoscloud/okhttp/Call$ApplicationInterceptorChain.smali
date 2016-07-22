.class Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Lcom/avos/avoscloud/okhttp/Interceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationInterceptorChain"
.end annotation


# instance fields
.field private final forWebSocket:Z

.field private final index:I

.field private final request:Lcom/avos/avoscloud/okhttp/Request;

.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/Call;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okhttp/Call;ILcom/avos/avoscloud/okhttp/Request;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput p2, p0, Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;->index:I

    .line 204
    iput-object p3, p0, Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;->request:Lcom/avos/avoscloud/okhttp/Request;

    .line 205
    iput-boolean p4, p0, Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;->forWebSocket:Z

    .line 206
    return-void
.end method


# virtual methods
.method public connection()Lcom/avos/avoscloud/okhttp/Connection;
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public proceed(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response;
    .locals 4
    .parameter

    .prologue
    .line 218
    iget v0, p0, Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;->index:I

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    #getter for: Lcom/avos/avoscloud/okhttp/Call;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/Call;->access$300(Lcom/avos/avoscloud/okhttp/Call;)Lcom/avos/avoscloud/okhttp/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 219
    new-instance v1, Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    iget v2, p0, Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;->index:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;->forWebSocket:Z

    invoke-direct {v1, v0, v2, p1, v3}, Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;-><init>(Lcom/avos/avoscloud/okhttp/Call;ILcom/avos/avoscloud/okhttp/Request;Z)V

    .line 220
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    #getter for: Lcom/avos/avoscloud/okhttp/Call;->client:Lcom/avos/avoscloud/okhttp/OkHttpClient;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/Call;->access$300(Lcom/avos/avoscloud/okhttp/Call;)Lcom/avos/avoscloud/okhttp/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;->index:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/Interceptor;

    .line 221
    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/Interceptor;->intercept(Lcom/avos/avoscloud/okhttp/Interceptor$Chain;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v1

    .line 223
    if-nez v1, :cond_0

    .line 224
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "application interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " returned null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, v1

    .line 232
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/avos/avoscloud/okhttp/Call;

    iget-boolean v1, p0, Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;->forWebSocket:Z

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/okhttp/Call;->getResponse(Lcom/avos/avoscloud/okhttp/Request;Z)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    goto :goto_0
.end method

.method public request()Lcom/avos/avoscloud/okhttp/Request;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Call$ApplicationInterceptorChain;->request:Lcom/avos/avoscloud/okhttp/Request;

    return-object v0
.end method
