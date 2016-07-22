.class public abstract Lcom/avos/avoscloud/okio/ForwardingSource;
.super Ljava/lang/Object;
.source "ForwardingSource.java"

# interfaces
.implements Lcom/avos/avoscloud/okio/Source;


# instance fields
.field private final delegate:Lcom/avos/avoscloud/okio/Source;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/okio/Source;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/okio/ForwardingSource;->delegate:Lcom/avos/avoscloud/okio/Source;

    .line 27
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/avos/avoscloud/okio/ForwardingSource;->delegate:Lcom/avos/avoscloud/okio/Source;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/Source;->close()V

    .line 44
    return-void
.end method

.method public final delegate()Lcom/avos/avoscloud/okio/Source;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avos/avoscloud/okio/ForwardingSource;->delegate:Lcom/avos/avoscloud/okio/Source;

    return-object v0
.end method

.method public read(Lcom/avos/avoscloud/okio/Buffer;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/avos/avoscloud/okio/ForwardingSource;->delegate:Lcom/avos/avoscloud/okio/Source;

    invoke-interface {v0, p1, p2, p3}, Lcom/avos/avoscloud/okio/Source;->read(Lcom/avos/avoscloud/okio/Buffer;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public timeout()Lcom/avos/avoscloud/okio/Timeout;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avos/avoscloud/okio/ForwardingSource;->delegate:Lcom/avos/avoscloud/okio/Source;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/Source;->timeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okio/ForwardingSource;->delegate:Lcom/avos/avoscloud/okio/Source;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
