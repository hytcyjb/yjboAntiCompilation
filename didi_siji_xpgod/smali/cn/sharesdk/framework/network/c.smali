.class public Lcn/sharesdk/framework/network/c;
.super Ljava/io/InputStream;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:J

.field private c:Lcn/sharesdk/framework/network/OnReadListener;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcn/sharesdk/framework/network/c;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/network/OnReadListener;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/framework/network/c;->c:Lcn/sharesdk/framework/network/OnReadListener;

    return-void
.end method

.method public available()I
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/framework/network/c;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/framework/network/c;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/framework/network/c;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/framework/network/c;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 5

    iget-object v0, p0, Lcn/sharesdk/framework/network/c;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-wide v1, p0, Lcn/sharesdk/framework/network/c;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcn/sharesdk/framework/network/c;->b:J

    iget-object v1, p0, Lcn/sharesdk/framework/network/c;->c:Lcn/sharesdk/framework/network/OnReadListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/framework/network/c;->c:Lcn/sharesdk/framework/network/OnReadListener;

    iget-wide v2, p0, Lcn/sharesdk/framework/network/c;->b:J

    invoke-interface {v1, v2, v3}, Lcn/sharesdk/framework/network/OnReadListener;->onRead(J)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 5

    iget-object v0, p0, Lcn/sharesdk/framework/network/c;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcn/sharesdk/framework/network/c;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcn/sharesdk/framework/network/c;->b:J

    iget-object v1, p0, Lcn/sharesdk/framework/network/c;->c:Lcn/sharesdk/framework/network/OnReadListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/framework/network/c;->c:Lcn/sharesdk/framework/network/OnReadListener;

    iget-wide v2, p0, Lcn/sharesdk/framework/network/c;->b:J

    invoke-interface {v1, v2, v3}, Lcn/sharesdk/framework/network/OnReadListener;->onRead(J)V

    :cond_0
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/network/c;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/sharesdk/framework/network/c;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 2

    iget-object v0, p0, Lcn/sharesdk/framework/network/c;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
