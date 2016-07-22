.class final Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/framed/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final out:Lcom/avos/avoscloud/okio/Buffer;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okio/Buffer;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;->out:Lcom/avos/avoscloud/okio/Buffer;

    .line 374
    return-void
.end method


# virtual methods
.method writeByteString(Lcom/avos/avoscloud/okio/ByteString;)V
    .locals 3
    .parameter

    .prologue
    .line 417
    invoke-virtual {p1}, Lcom/avos/avoscloud/okio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 418
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;->out:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okio/Buffer;->write(Lcom/avos/avoscloud/okio/ByteString;)Lcom/avos/avoscloud/okio/Buffer;

    .line 419
    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 380
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    .line 381
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;

    iget-object v0, v0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->name:Lcom/avos/avoscloud/okio/ByteString;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/ByteString;->toAsciiLowercase()Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v4

    .line 382
    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/framed/Hpack;->access$200()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 383
    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0xf

    invoke-virtual {p0, v0, v4, v2}, Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 386
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;

    iget-object v0, v0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->value:Lcom/avos/avoscloud/okio/ByteString;

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lcom/avos/avoscloud/okio/ByteString;)V

    .line 380
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;->out:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 389
    invoke-virtual {p0, v4}, Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lcom/avos/avoscloud/okio/ByteString;)V

    .line 390
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;

    iget-object v0, v0, Lcom/avos/avoscloud/okhttp/internal/framed/Header;->value:Lcom/avos/avoscloud/okio/ByteString;

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lcom/avos/avoscloud/okio/ByteString;)V

    goto :goto_1

    .line 393
    :cond_1
    return-void
.end method

.method writeInt(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 398
    if-ge p1, p2, :cond_0

    .line 399
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;->out:Lcom/avos/avoscloud/okio/Buffer;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 414
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;->out:Lcom/avos/avoscloud/okio/Buffer;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 405
    sub-int v0, p1, p2

    .line 408
    :goto_1
    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    .line 409
    and-int/lit8 v1, v0, 0x7f

    .line 410
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;->out:Lcom/avos/avoscloud/okio/Buffer;

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 411
    ushr-int/lit8 v0, v0, 0x7

    .line 412
    goto :goto_1

    .line 413
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;->out:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    goto :goto_0
.end method
