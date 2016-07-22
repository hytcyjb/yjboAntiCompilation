.class Lcom/avos/avoscloud/okhttp/internal/FaultHidingSink;
.super Lcom/avos/avoscloud/okio/ForwardingSink;
.source "FaultHidingSink.java"


# instance fields
.field private hasErrors:Z


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/okio/Sink;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okio/ForwardingSink;-><init>(Lcom/avos/avoscloud/okio/Sink;)V

    .line 14
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 42
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/avos/avoscloud/okio/ForwardingSink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/avos/avoscloud/okhttp/internal/FaultHidingSink;->hasErrors:Z

    .line 45
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 32
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/avos/avoscloud/okio/ForwardingSink;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/avos/avoscloud/okhttp/internal/FaultHidingSink;->hasErrors:Z

    .line 35
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method protected onException(Ljava/io/IOException;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    return-void
.end method

.method public write(Lcom/avos/avoscloud/okio/Buffer;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1, p2, p3}, Lcom/avos/avoscloud/okio/Buffer;->skip(J)V

    .line 27
    :goto_0
    return-void

    .line 22
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/avos/avoscloud/okio/ForwardingSink;->write(Lcom/avos/avoscloud/okio/Buffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/avos/avoscloud/okhttp/internal/FaultHidingSink;->hasErrors:Z

    .line 25
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    goto :goto_0
.end method
