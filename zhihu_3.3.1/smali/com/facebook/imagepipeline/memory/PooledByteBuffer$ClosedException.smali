.class public Lcom/facebook/imagepipeline/memory/PooledByteBuffer$ClosedException;
.super Ljava/lang/RuntimeException;
.source "PooledByteBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/PooledByteBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClosedException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "Invalid bytebuf. Already closed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method
