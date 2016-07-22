.class final Lcom/avos/avoscloud/okio/Okio$2;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/avos/avoscloud/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/okio/Okio;->source(Ljava/io/InputStream;Lcom/avos/avoscloud/okio/Timeout;)Lcom/avos/avoscloud/okio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$timeout:Lcom/avos/avoscloud/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okio/Timeout;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/avos/avoscloud/okio/Okio$2;->val$timeout:Lcom/avos/avoscloud/okio/Timeout;

    iput-object p2, p0, Lcom/avos/avoscloud/okio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 148
    return-void
.end method

.method public read(Lcom/avos/avoscloud/okio/Buffer;J)J
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 134
    cmp-long v2, p2, v0

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

    .line 135
    :cond_0
    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    .line 143
    :goto_0
    return-wide v0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Okio$2;->val$timeout:Lcom/avos/avoscloud/okio/Timeout;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Timeout;->throwIfReached()V

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/okio/Buffer;->writableSegment(I)Lcom/avos/avoscloud/okio/Segment;

    move-result-object v0

    .line 138
    iget v1, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    rsub-int v1, v1, 0x800

    int-to-long v2, v1

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 139
    iget-object v2, p0, Lcom/avos/avoscloud/okio/Okio$2;->val$in:Ljava/io/InputStream;

    iget-object v3, v0, Lcom/avos/avoscloud/okio/Segment;->data:[B

    iget v4, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 140
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 141
    :cond_2
    iget v2, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    .line 142
    iget-wide v2, p1, Lcom/avos/avoscloud/okio/Buffer;->size:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 143
    int-to-long v0, v1

    goto :goto_0
.end method

.method public timeout()Lcom/avos/avoscloud/okio/Timeout;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Okio$2;->val$timeout:Lcom/avos/avoscloud/okio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
