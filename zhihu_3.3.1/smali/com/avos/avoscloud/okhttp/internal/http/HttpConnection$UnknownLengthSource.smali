.class Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$UnknownLengthSource;
.super Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnknownLengthSource"
.end annotation


# instance fields
.field private inputExhausted:Z

.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;


# direct methods
.method private constructor <init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)V
    .locals 1
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$UnknownLengthSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$AbstractSource;-><init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$UnknownLengthSource;-><init>(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$UnknownLengthSource;->closed:Z

    if-eqz v0, :cond_0

    .line 529
    :goto_0
    return-void

    .line 525
    :cond_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$UnknownLengthSource;->inputExhausted:Z

    if-nez v0, :cond_1

    .line 526
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$UnknownLengthSource;->unexpectedEndOfInput()V

    .line 528
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$UnknownLengthSource;->closed:Z

    goto :goto_0
.end method

.method public read(Lcom/avos/avoscloud/okio/Buffer;J)J
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 510
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_0
    iget-boolean v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$UnknownLengthSource;->closed:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_1
    iget-boolean v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$UnknownLengthSource;->inputExhausted:Z

    if-eqz v2, :cond_2

    .line 520
    :goto_0
    return-wide v0

    .line 514
    :cond_2
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$UnknownLengthSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->source:Lcom/avos/avoscloud/okio/BufferedSource;
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;->access$600(Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection;)Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/avos/avoscloud/okio/BufferedSource;->read(Lcom/avos/avoscloud/okio/Buffer;J)J

    move-result-wide v2

    .line 515
    cmp-long v4, v2, v0

    if-nez v4, :cond_3

    .line 516
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$UnknownLengthSource;->inputExhausted:Z

    .line 517
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/okhttp/internal/http/HttpConnection$UnknownLengthSource;->endOfInput(Z)V

    goto :goto_0

    :cond_3
    move-wide v0, v2

    .line 520
    goto :goto_0
.end method
