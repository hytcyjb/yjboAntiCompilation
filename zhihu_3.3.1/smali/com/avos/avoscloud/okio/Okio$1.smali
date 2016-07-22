.class final Lcom/avos/avoscloud/okio/Okio$1;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/avos/avoscloud/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/avos/avoscloud/okio/Timeout;)Lcom/avos/avoscloud/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$out:Ljava/io/OutputStream;

.field final synthetic val$timeout:Lcom/avos/avoscloud/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okio/Timeout;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/avos/avoscloud/okio/Okio$1;->val$timeout:Lcom/avos/avoscloud/okio/Timeout;

    iput-object p2, p0, Lcom/avos/avoscloud/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 99
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 95
    return-void
.end method

.method public timeout()Lcom/avos/avoscloud/okio/Timeout;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Okio$1;->val$timeout:Lcom/avos/avoscloud/okio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/avos/avoscloud/okio/Buffer;J)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 75
    iget-wide v0, p1, Lcom/avos/avoscloud/okio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 76
    :cond_0
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Okio$1;->val$timeout:Lcom/avos/avoscloud/okio/Timeout;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Timeout;->throwIfReached()V

    .line 78
    iget-object v0, p1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 79
    iget v1, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget v4, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 80
    iget-object v4, p0, Lcom/avos/avoscloud/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    iget-object v5, v0, Lcom/avos/avoscloud/okio/Segment;->data:[B

    iget v6, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 82
    iget v4, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    add-int/2addr v4, v1

    iput v4, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    .line 83
    int-to-long v4, v1

    sub-long/2addr p2, v4

    .line 84
    iget-wide v4, p1, Lcom/avos/avoscloud/okio/Buffer;->size:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p1, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 86
    iget v1, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    iget v4, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    if-ne v1, v4, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Segment;->pop()Lcom/avos/avoscloud/okio/Segment;

    move-result-object v1

    iput-object v1, p1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 88
    invoke-static {v0}, Lcom/avos/avoscloud/okio/SegmentPool;->recycle(Lcom/avos/avoscloud/okio/Segment;)V

    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method
