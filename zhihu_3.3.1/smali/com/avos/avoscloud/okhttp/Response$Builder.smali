.class public Lcom/avos/avoscloud/okhttp/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lcom/avos/avoscloud/okhttp/ResponseBody;

.field private cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

.field private code:I

.field private handshake:Lcom/avos/avoscloud/okhttp/Handshake;

.field private headers:Lcom/avos/avoscloud/okhttp/Headers$Builder;

.field private message:Ljava/lang/String;

.field private networkResponse:Lcom/avos/avoscloud/okhttp/Response;

.field private priorResponse:Lcom/avos/avoscloud/okhttp/Response;

.field private protocol:Lcom/avos/avoscloud/okhttp/Protocol;

.field private request:Lcom/avos/avoscloud/okhttp/Request;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->code:I

    .line 234
    new-instance v0, Lcom/avos/avoscloud/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->headers:Lcom/avos/avoscloud/okhttp/Headers$Builder;

    .line 235
    return-void
.end method

.method private constructor <init>(Lcom/avos/avoscloud/okhttp/Response;)V
    .locals 1
    .parameter

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->code:I

    .line 238
    #getter for: Lcom/avos/avoscloud/okhttp/Response;->request:Lcom/avos/avoscloud/okhttp/Request;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Response;->access$1100(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->request:Lcom/avos/avoscloud/okhttp/Request;

    .line 239
    #getter for: Lcom/avos/avoscloud/okhttp/Response;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Response;->access$1200(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    .line 240
    #getter for: Lcom/avos/avoscloud/okhttp/Response;->code:I
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Response;->access$1300(Lcom/avos/avoscloud/okhttp/Response;)I

    move-result v0

    iput v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->code:I

    .line 241
    #getter for: Lcom/avos/avoscloud/okhttp/Response;->message:Ljava/lang/String;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Response;->access$1400(Lcom/avos/avoscloud/okhttp/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->message:Ljava/lang/String;

    .line 242
    #getter for: Lcom/avos/avoscloud/okhttp/Response;->handshake:Lcom/avos/avoscloud/okhttp/Handshake;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Response;->access$1500(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->handshake:Lcom/avos/avoscloud/okhttp/Handshake;

    .line 243
    #getter for: Lcom/avos/avoscloud/okhttp/Response;->headers:Lcom/avos/avoscloud/okhttp/Headers;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Response;->access$1600(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Headers;->newBuilder()Lcom/avos/avoscloud/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->headers:Lcom/avos/avoscloud/okhttp/Headers$Builder;

    .line 244
    #getter for: Lcom/avos/avoscloud/okhttp/Response;->body:Lcom/avos/avoscloud/okhttp/ResponseBody;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Response;->access$1700(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->body:Lcom/avos/avoscloud/okhttp/ResponseBody;

    .line 245
    #getter for: Lcom/avos/avoscloud/okhttp/Response;->networkResponse:Lcom/avos/avoscloud/okhttp/Response;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Response;->access$1800(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->networkResponse:Lcom/avos/avoscloud/okhttp/Response;

    .line 246
    #getter for: Lcom/avos/avoscloud/okhttp/Response;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Response;->access$1900(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    .line 247
    #getter for: Lcom/avos/avoscloud/okhttp/Response;->priorResponse:Lcom/avos/avoscloud/okhttp/Response;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Response;->access$2000(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->priorResponse:Lcom/avos/avoscloud/okhttp/Response;

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/Response$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/Response$Builder;-><init>(Lcom/avos/avoscloud/okhttp/Response;)V

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/okhttp/Response$Builder;)Lcom/avos/avoscloud/okhttp/Request;
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->request:Lcom/avos/avoscloud/okhttp/Request;

    return-object v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/okhttp/Response$Builder;)Lcom/avos/avoscloud/okhttp/Protocol;
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/okhttp/Response$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 221
    iget v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->code:I

    return v0
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/okhttp/Response$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/okhttp/Response$Builder;)Lcom/avos/avoscloud/okhttp/Handshake;
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->handshake:Lcom/avos/avoscloud/okhttp/Handshake;

    return-object v0
.end method

.method static synthetic access$500(Lcom/avos/avoscloud/okhttp/Response$Builder;)Lcom/avos/avoscloud/okhttp/Headers$Builder;
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->headers:Lcom/avos/avoscloud/okhttp/Headers$Builder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/avos/avoscloud/okhttp/Response$Builder;)Lcom/avos/avoscloud/okhttp/ResponseBody;
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->body:Lcom/avos/avoscloud/okhttp/ResponseBody;

    return-object v0
.end method

.method static synthetic access$700(Lcom/avos/avoscloud/okhttp/Response$Builder;)Lcom/avos/avoscloud/okhttp/Response;
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->networkResponse:Lcom/avos/avoscloud/okhttp/Response;

    return-object v0
.end method

.method static synthetic access$800(Lcom/avos/avoscloud/okhttp/Response$Builder;)Lcom/avos/avoscloud/okhttp/Response;
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    return-object v0
.end method

.method static synthetic access$900(Lcom/avos/avoscloud/okhttp/Response$Builder;)Lcom/avos/avoscloud/okhttp/Response;
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->priorResponse:Lcom/avos/avoscloud/okhttp/Response;

    return-object v0
.end method

.method private checkPriorResponse(Lcom/avos/avoscloud/okhttp/Response;)V
    .locals 2
    .parameter

    .prologue
    .line 340
    #getter for: Lcom/avos/avoscloud/okhttp/Response;->body:Lcom/avos/avoscloud/okhttp/ResponseBody;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/Response;->access$1700(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    return-void
.end method

.method private checkSupportResponse(Ljava/lang/String;Lcom/avos/avoscloud/okhttp/Response;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 322
    #getter for: Lcom/avos/avoscloud/okhttp/Response;->body:Lcom/avos/avoscloud/okhttp/ResponseBody;
    invoke-static {p2}, Lcom/avos/avoscloud/okhttp/Response;->access$1700(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    #getter for: Lcom/avos/avoscloud/okhttp/Response;->networkResponse:Lcom/avos/avoscloud/okhttp/Response;
    invoke-static {p2}, Lcom/avos/avoscloud/okhttp/Response;->access$1800(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1
    #getter for: Lcom/avos/avoscloud/okhttp/Response;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;
    invoke-static {p2}, Lcom/avos/avoscloud/okhttp/Response;->access$1900(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_2
    #getter for: Lcom/avos/avoscloud/okhttp/Response;->priorResponse:Lcom/avos/avoscloud/okhttp/Response;
    invoke-static {p2}, Lcom/avos/avoscloud/okhttp/Response;->access$2000(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_3
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Response$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->headers:Lcom/avos/avoscloud/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Headers$Builder;

    .line 290
    return-object p0
.end method

.method public body(Lcom/avos/avoscloud/okhttp/ResponseBody;)Lcom/avos/avoscloud/okhttp/Response$Builder;
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->body:Lcom/avos/avoscloud/okhttp/ResponseBody;

    .line 306
    return-object p0
.end method

.method public build()Lcom/avos/avoscloud/okhttp/Response;
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->request:Lcom/avos/avoscloud/okhttp/Request;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->code:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_2
    new-instance v0, Lcom/avos/avoscloud/okhttp/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/okhttp/Response;-><init>(Lcom/avos/avoscloud/okhttp/Response$Builder;Lcom/avos/avoscloud/okhttp/Response$1;)V

    return-object v0
.end method

.method public cacheResponse(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response$Builder;
    .locals 1
    .parameter

    .prologue
    .line 316
    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/avos/avoscloud/okhttp/Response;)V

    .line 317
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    .line 318
    return-object p0
.end method

.method public code(I)Lcom/avos/avoscloud/okhttp/Response$Builder;
    .locals 0
    .parameter

    .prologue
    .line 261
    iput p1, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->code:I

    .line 262
    return-object p0
.end method

.method public handshake(Lcom/avos/avoscloud/okhttp/Handshake;)Lcom/avos/avoscloud/okhttp/Response$Builder;
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->handshake:Lcom/avos/avoscloud/okhttp/Handshake;

    .line 272
    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Response$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->headers:Lcom/avos/avoscloud/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Headers$Builder;

    .line 281
    return-object p0
.end method

.method public headers(Lcom/avos/avoscloud/okhttp/Headers;)Lcom/avos/avoscloud/okhttp/Response$Builder;
    .locals 1
    .parameter

    .prologue
    .line 300
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Headers;->newBuilder()Lcom/avos/avoscloud/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->headers:Lcom/avos/avoscloud/okhttp/Headers$Builder;

    .line 301
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Response$Builder;
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->message:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public networkResponse(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response$Builder;
    .locals 1
    .parameter

    .prologue
    .line 310
    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/avos/avoscloud/okhttp/Response;)V

    .line 311
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->networkResponse:Lcom/avos/avoscloud/okhttp/Response;

    .line 312
    return-object p0
.end method

.method public priorResponse(Lcom/avos/avoscloud/okhttp/Response;)Lcom/avos/avoscloud/okhttp/Response$Builder;
    .locals 0
    .parameter

    .prologue
    .line 334
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->checkPriorResponse(Lcom/avos/avoscloud/okhttp/Response;)V

    .line 335
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->priorResponse:Lcom/avos/avoscloud/okhttp/Response;

    .line 336
    return-object p0
.end method

.method public protocol(Lcom/avos/avoscloud/okhttp/Protocol;)Lcom/avos/avoscloud/okhttp/Response$Builder;
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->protocol:Lcom/avos/avoscloud/okhttp/Protocol;

    .line 257
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Response$Builder;
    .locals 1
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->headers:Lcom/avos/avoscloud/okhttp/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Headers$Builder;

    .line 295
    return-object p0
.end method

.method public request(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Response$Builder;
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Response$Builder;->request:Lcom/avos/avoscloud/okhttp/Request;

    .line 252
    return-object p0
.end method
