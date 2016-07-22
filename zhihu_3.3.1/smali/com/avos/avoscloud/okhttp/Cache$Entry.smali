.class final Lcom/avos/avoscloud/okhttp/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field private final code:I

.field private final handshake:Lcom/avos/avoscloud/okhttp/Handshake;

.field private final message:Ljava/lang/String;

.field private final protocol:Lcom/avos/avoscloud/okhttp/Protocol;

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lcom/avos/avoscloud/okhttp/Headers;

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lcom/avos/avoscloud/okhttp/Headers;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/okhttp/Response;)V
    .locals 1
    .parameter

    .prologue
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->request()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->url:Ljava/lang/String;

    .line 569
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->varyHeaders(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->varyHeaders:Lcom/avos/avoscloud/okhttp/Headers;

    .line 570
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->request()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 571
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->protocol()Lcom/avos/avoscloud/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    .line 572
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->code()I

    move-result v0

    iput v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->code:I

    .line 573
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->message:Ljava/lang/String;

    .line 574
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->responseHeaders:Lcom/avos/avoscloud/okhttp/Headers;

    .line 575
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Response;->handshake()Lcom/avos/avoscloud/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->handshake:Lcom/avos/avoscloud/okhttp/Handshake;

    .line 576
    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/okio/Source;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    :try_start_0
    invoke-static {p1}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Source;)Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v2

    .line 530
    invoke-interface {v2}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->url:Ljava/lang/String;

    .line 531
    invoke-interface {v2}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 532
    new-instance v3, Lcom/avos/avoscloud/okhttp/Headers$Builder;

    invoke-direct {v3}, Lcom/avos/avoscloud/okhttp/Headers$Builder;-><init>()V

    .line 533
    #calls: Lcom/avos/avoscloud/okhttp/Cache;->readInt(Lcom/avos/avoscloud/okio/BufferedSource;)I
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/Cache;->access$1000(Lcom/avos/avoscloud/okio/BufferedSource;)I

    move-result v4

    move v1, v0

    .line 534
    :goto_0
    if-ge v1, v4, :cond_0

    .line 535
    invoke-interface {v2}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Headers$Builder;

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    :cond_0
    invoke-virtual {v3}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->build()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->varyHeaders:Lcom/avos/avoscloud/okhttp/Headers;

    .line 539
    invoke-interface {v2}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/internal/http/StatusLine;

    move-result-object v1

    .line 540
    iget-object v3, v1, Lcom/avos/avoscloud/okhttp/internal/http/StatusLine;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    iput-object v3, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    .line 541
    iget v3, v1, Lcom/avos/avoscloud/okhttp/internal/http/StatusLine;->code:I

    iput v3, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->code:I

    .line 542
    iget-object v1, v1, Lcom/avos/avoscloud/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v1, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->message:Ljava/lang/String;

    .line 543
    new-instance v1, Lcom/avos/avoscloud/okhttp/Headers$Builder;

    invoke-direct {v1}, Lcom/avos/avoscloud/okhttp/Headers$Builder;-><init>()V

    .line 544
    #calls: Lcom/avos/avoscloud/okhttp/Cache;->readInt(Lcom/avos/avoscloud/okio/BufferedSource;)I
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/Cache;->access$1000(Lcom/avos/avoscloud/okio/BufferedSource;)I

    move-result v3

    .line 545
    :goto_1
    if-ge v0, v3, :cond_1

    .line 546
    invoke-interface {v2}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Headers$Builder;

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 548
    :cond_1
    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->build()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->responseHeaders:Lcom/avos/avoscloud/okhttp/Headers;

    .line 550
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/Cache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 551
    invoke-interface {v2}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 553
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/avos/avoscloud/okio/Source;->close()V

    throw v0

    .line 555
    :cond_2
    :try_start_1
    invoke-interface {v2}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    .line 556
    invoke-direct {p0, v2}, Lcom/avos/avoscloud/okhttp/Cache$Entry;->readCertificateList(Lcom/avos/avoscloud/okio/BufferedSource;)Ljava/util/List;

    move-result-object v1

    .line 557
    invoke-direct {p0, v2}, Lcom/avos/avoscloud/okhttp/Cache$Entry;->readCertificateList(Lcom/avos/avoscloud/okio/BufferedSource;)Ljava/util/List;

    move-result-object v2

    .line 558
    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/avos/avoscloud/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->handshake:Lcom/avos/avoscloud/okhttp/Handshake;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    :goto_2
    invoke-interface {p1}, Lcom/avos/avoscloud/okio/Source;->close()V

    .line 565
    return-void

    .line 560
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->handshake:Lcom/avos/avoscloud/okhttp/Handshake;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private isHttps()Z
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificateList(Lcom/avos/avoscloud/okio/BufferedSource;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/okio/BufferedSource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 620
    #calls: Lcom/avos/avoscloud/okhttp/Cache;->readInt(Lcom/avos/avoscloud/okio/BufferedSource;)I
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Cache;->access$1000(Lcom/avos/avoscloud/okio/BufferedSource;)I

    move-result v2

    .line 621
    const/4 v0, -0x1

    if-ne v2, v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 632
    :cond_0
    return-object v0

    .line 624
    :cond_1
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 626
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 627
    invoke-interface {p1}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 628
    new-instance v5, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v5}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    .line 629
    invoke-static {v4}, Lcom/avos/avoscloud/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/avos/avoscloud/okio/Buffer;->write(Lcom/avos/avoscloud/okio/ByteString;)Lcom/avos/avoscloud/okio/Buffer;

    .line 630
    invoke-virtual {v5}, Lcom/avos/avoscloud/okio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 633
    :catch_0
    move-exception v0

    .line 634
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeCertList(Lcom/avos/avoscloud/okio/BufferedSink;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/okio/BufferedSink;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 641
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeDecimalLong(J)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 642
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 643
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 644
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 645
    invoke-static {v0}, Lcom/avos/avoscloud/okio/ByteString;->of([B)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    .line 646
    invoke-interface {p1, v0}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 647
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    :cond_0
    return-void
.end method


# virtual methods
.method public matches(Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/Response;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 655
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->varyHeaders:Lcom/avos/avoscloud/okhttp/Headers;

    invoke-static {p2, v0, p1}, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->varyMatches(Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/Headers;Lcom/avos/avoscloud/okhttp/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public response(Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;)Lcom/avos/avoscloud/okhttp/Response;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 661
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->responseHeaders:Lcom/avos/avoscloud/okhttp/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->responseHeaders:Lcom/avos/avoscloud/okhttp/Headers;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 663
    new-instance v2, Lcom/avos/avoscloud/okhttp/Request$Builder;

    invoke-direct {v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;-><init>()V

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/avos/avoscloud/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/avos/avoscloud/okhttp/RequestBody;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->varyHeaders:Lcom/avos/avoscloud/okhttp/Headers;

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/okhttp/Request$Builder;->headers(Lcom/avos/avoscloud/okhttp/Headers;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v2

    .line 668
    new-instance v3, Lcom/avos/avoscloud/okhttp/Response$Builder;

    invoke-direct {v3}, Lcom/avos/avoscloud/okhttp/Response$Builder;-><init>()V

    invoke-virtual {v3, v2}, Lcom/avos/avoscloud/okhttp/Response$Builder;->request(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/okhttp/Response$Builder;->protocol(Lcom/avos/avoscloud/okhttp/Protocol;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v2

    iget v3, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->code:I

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/okhttp/Response$Builder;->code(I)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->responseHeaders:Lcom/avos/avoscloud/okhttp/Headers;

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/okhttp/Response$Builder;->headers(Lcom/avos/avoscloud/okhttp/Headers;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v2

    new-instance v3, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;

    invoke-direct {v3, p2, v0, v1}, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;-><init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/okhttp/Response$Builder;->body(Lcom/avos/avoscloud/okhttp/ResponseBody;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->handshake:Lcom/avos/avoscloud/okhttp/Handshake;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->handshake(Lcom/avos/avoscloud/okhttp/Handshake;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response$Builder;->build()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0xa

    .line 579
    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->newSink(I)Lcom/avos/avoscloud/okio/Sink;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Sink;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v2

    .line 581
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 582
    invoke-interface {v2, v6}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 583
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 584
    invoke-interface {v2, v6}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 585
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->varyHeaders:Lcom/avos/avoscloud/okhttp/Headers;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v1

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lcom/avos/avoscloud/okio/BufferedSink;->writeDecimalLong(J)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 586
    invoke-interface {v2, v6}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 587
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->varyHeaders:Lcom/avos/avoscloud/okhttp/Headers;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 588
    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->varyHeaders:Lcom/avos/avoscloud/okhttp/Headers;

    invoke-virtual {v4, v1}, Lcom/avos/avoscloud/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 589
    const-string v4, ": "

    invoke-interface {v2, v4}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 590
    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->varyHeaders:Lcom/avos/avoscloud/okhttp/Headers;

    invoke-virtual {v4, v1}, Lcom/avos/avoscloud/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 591
    invoke-interface {v2, v6}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/okhttp/internal/http/StatusLine;

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    iget v4, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->code:I

    iget-object v5, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lcom/avos/avoscloud/okhttp/internal/http/StatusLine;-><init>(Lcom/avos/avoscloud/okhttp/Protocol;ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 595
    invoke-interface {v2, v6}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 596
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->responseHeaders:Lcom/avos/avoscloud/okhttp/Headers;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v1

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lcom/avos/avoscloud/okio/BufferedSink;->writeDecimalLong(J)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 597
    invoke-interface {v2, v6}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 598
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->responseHeaders:Lcom/avos/avoscloud/okhttp/Headers;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 599
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->responseHeaders:Lcom/avos/avoscloud/okhttp/Headers;

    invoke-virtual {v3, v0}, Lcom/avos/avoscloud/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 600
    const-string v3, ": "

    invoke-interface {v2, v3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 601
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->responseHeaders:Lcom/avos/avoscloud/okhttp/Headers;

    invoke-virtual {v3, v0}, Lcom/avos/avoscloud/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 602
    invoke-interface {v2, v6}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 605
    :cond_1
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/Cache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    invoke-interface {v2, v6}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 607
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->handshake:Lcom/avos/avoscloud/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 608
    invoke-interface {v2, v6}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 609
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->handshake:Lcom/avos/avoscloud/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/avos/avoscloud/okhttp/Cache$Entry;->writeCertList(Lcom/avos/avoscloud/okio/BufferedSink;Ljava/util/List;)V

    .line 610
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$Entry;->handshake:Lcom/avos/avoscloud/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/avos/avoscloud/okhttp/Cache$Entry;->writeCertList(Lcom/avos/avoscloud/okio/BufferedSink;Ljava/util/List;)V

    .line 612
    :cond_2
    invoke-interface {v2}, Lcom/avos/avoscloud/okio/BufferedSink;->close()V

    .line 613
    return-void
.end method
