.class Lcom/avos/avoscloud/PaasClient$ProgressResponseBody$1;
.super Lcom/avos/avoscloud/okio/ForwardingSource;
.source "PaasClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;->source(Lcom/avos/avoscloud/okio/Source;)Lcom/avos/avoscloud/okio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;

.field totalBytesRead:J


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;Lcom/avos/avoscloud/okio/Source;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody$1;->this$0:Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/okio/ForwardingSource;-><init>(Lcom/avos/avoscloud/okio/Source;)V

    .line 1028
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody$1;->totalBytesRead:J

    return-void
.end method


# virtual methods
.method public read(Lcom/avos/avoscloud/okio/Buffer;J)J
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    .line 1032
    invoke-super {p0, p1, p2, p3}, Lcom/avos/avoscloud/okio/ForwardingSource;->read(Lcom/avos/avoscloud/okio/Buffer;J)J

    move-result-wide v8

    .line 1033
    iget-wide v2, p0, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody$1;->totalBytesRead:J

    cmp-long v0, v8, v6

    if-eqz v0, :cond_0

    move-wide v0, v8

    :goto_0
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody$1;->totalBytesRead:J

    .line 1034
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody$1;->this$0:Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;

    #getter for: Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;->progressListener:Lcom/avos/avoscloud/PaasClient$ProgressListener;
    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;->access$300(Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;)Lcom/avos/avoscloud/PaasClient$ProgressListener;

    move-result-object v1

    iget-wide v2, p0, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody$1;->totalBytesRead:J

    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody$1;->this$0:Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;

    #getter for: Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;->responseBody:Lcom/avos/avoscloud/okhttp/ResponseBody;
    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;->access$200(Lcom/avos/avoscloud/PaasClient$ProgressResponseBody;)Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/ResponseBody;->contentLength()J

    move-result-wide v4

    cmp-long v0, v8, v6

    if-nez v0, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-interface/range {v1 .. v6}, Lcom/avos/avoscloud/PaasClient$ProgressListener;->update(JJZ)V

    .line 1035
    return-wide v8

    .line 1033
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1034
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method
