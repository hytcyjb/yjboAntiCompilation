.class Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader$1;
.super Lcom/avos/avoscloud/okio/ForwardingSource;
.source "NameValueBlockReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;-><init>(Lcom/avos/avoscloud/okio/BufferedSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;Lcom/avos/avoscloud/okio/Source;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader$1;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/okio/ForwardingSource;-><init>(Lcom/avos/avoscloud/okio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lcom/avos/avoscloud/okio/Buffer;J)J
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 56
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader$1;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->access$000(Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;)I

    move-result v2

    if-nez v2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-wide v0

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader$1;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->access$000(Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, p1, v2, v3}, Lcom/avos/avoscloud/okio/ForwardingSource;->read(Lcom/avos/avoscloud/okio/Buffer;J)J

    move-result-wide v2

    .line 58
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 59
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader$1;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;

    invoke-static {v0, v2, v3}, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->access$022(Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;J)I

    move-wide v0, v2

    .line 60
    goto :goto_0
.end method
