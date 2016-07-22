.class Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;
.super Lcom/avos/avoscloud/okhttp/ResponseBody;
.source "PaasClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/PaasClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressResponseBody"
.end annotation


# instance fields
.field private bufferedSource:Lcom/avos/avoscloud/okio/BufferedSource;

.field private final progressListener:Lcom/avos/avoscloud/PaasClient$ProgressListener;

.field private final responseBody:Lcom/avos/avoscloud/okhttp/ResponseBody;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/okhttp/ResponseBody;Lcom/avos/avoscloud/PaasClient$ProgressListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1003
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/ResponseBody;-><init>()V

    .line 1004
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;->responseBody:Lcom/avos/avoscloud/okhttp/ResponseBody;

    .line 1005
    iput-object p2, p0, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;->progressListener:Lcom/avos/avoscloud/PaasClient$ProgressListener;

    .line 1006
    return-void
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;)Lcom/avos/avoscloud/okhttp/ResponseBody;
    .locals 1
    .parameter

    .prologue
    .line 997
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;->responseBody:Lcom/avos/avoscloud/okhttp/ResponseBody;

    return-object v0
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;)Lcom/avos/avoscloud/PaasClient$ProgressListener;
    .locals 1
    .parameter

    .prologue
    .line 997
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;->progressListener:Lcom/avos/avoscloud/PaasClient$ProgressListener;

    return-object v0
.end method

.method private source(Lcom/avos/avoscloud/okio/Source;)Lcom/avos/avoscloud/okio/Source;
    .locals 1
    .parameter

    .prologue
    .line 1027
    new-instance v0, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody$1;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody$1;-><init>(Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;Lcom/avos/avoscloud/okio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;->responseBody:Lcom/avos/avoscloud/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/avos/avoscloud/okhttp/MediaType;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;->responseBody:Lcom/avos/avoscloud/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/ResponseBody;->contentType()Lcom/avos/avoscloud/okhttp/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lcom/avos/avoscloud/okio/BufferedSource;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;->bufferedSource:Lcom/avos/avoscloud/okio/BufferedSource;

    if-nez v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;->responseBody:Lcom/avos/avoscloud/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/ResponseBody;->source()Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;->source(Lcom/avos/avoscloud/okio/Source;)Lcom/avos/avoscloud/okio/Source;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Source;)Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;->bufferedSource:Lcom/avos/avoscloud/okio/BufferedSource;

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;->bufferedSource:Lcom/avos/avoscloud/okio/BufferedSource;

    return-object v0
.end method
