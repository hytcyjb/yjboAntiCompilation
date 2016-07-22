.class public Lnet/tsz/afinal/bitmap/download/SimpleDownloader$FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source "SimpleDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tsz/afinal/bitmap/download/SimpleDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlushedInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/tsz/afinal/bitmap/download/SimpleDownloader;


# direct methods
.method public constructor <init>(Lnet/tsz/afinal/bitmap/download/SimpleDownloader;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter "inputStream"

    .prologue
    .line 132
    iput-object p1, p0, Lnet/tsz/afinal/bitmap/download/SimpleDownloader$FlushedInputStream;->this$0:Lnet/tsz/afinal/bitmap/download/SimpleDownloader;

    .line 133
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 134
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 8
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const-wide/16 v3, 0x0

    .line 139
    .local v3, totalBytesSkipped:J
    :goto_0
    cmp-long v5, v3, p1

    if-ltz v5, :cond_1

    .line 151
    :cond_0
    return-wide v3

    .line 140
    :cond_1
    iget-object v5, p0, Lnet/tsz/afinal/bitmap/download/SimpleDownloader$FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v6, p1, v3

    invoke-virtual {v5, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    .line 141
    .local v1, bytesSkipped:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_2

    .line 142
    invoke-virtual {p0}, Lnet/tsz/afinal/bitmap/download/SimpleDownloader$FlushedInputStream;->read()I

    move-result v0

    .line 143
    .local v0, by_te:I
    if-ltz v0, :cond_0

    .line 146
    const-wide/16 v1, 0x1

    .line 149
    .end local v0           #by_te:I
    :cond_2
    add-long/2addr v3, v1

    goto :goto_0
.end method
