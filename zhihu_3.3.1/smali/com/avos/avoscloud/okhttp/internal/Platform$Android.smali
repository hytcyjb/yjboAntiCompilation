.class Lcom/avos/avoscloud/okhttp/internal/Platform$Android;
.super Lcom/avos/avoscloud/okhttp/internal/Platform;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Android"
.end annotation


# static fields
.field private static final MAX_LOG_LENGTH:I = 0xfa0


# instance fields
.field private final getAlpnSelectedProtocol:Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setAlpnProtocols:Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setHostname:Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setUseSessionTickets:Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final trafficStatsTagSocket:Ljava/lang/reflect/Method;

.field private final trafficStatsUntagSocket:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/avos/avoscloud/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/avos/avoscloud/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/avos/avoscloud/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/Platform;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->setUseSessionTickets:Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;

    .line 185
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->setHostname:Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;

    .line 186
    iput-object p3, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->trafficStatsTagSocket:Ljava/lang/reflect/Method;

    .line 187
    iput-object p4, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->trafficStatsUntagSocket:Ljava/lang/reflect/Method;

    .line 188
    iput-object p5, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->getAlpnSelectedProtocol:Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;

    .line 189
    iput-object p6, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->setAlpnProtocols:Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;

    .line 190
    return-void
.end method


# virtual methods
.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 211
    if-eqz p2, :cond_0

    .line 212
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->setUseSessionTickets:Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->setHostname:Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->setAlpnProtocols:Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->setAlpnProtocols:Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3}, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->concatLengthPrefixed(Ljava/util/List;)[B

    move-result-object v1

    aput-object v1, v0, v4

    .line 219
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->setAlpnProtocols:Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;

    invoke-virtual {v1, p1, v0}, Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_1
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 198
    :cond_0
    throw v0

    .line 199
    :catch_1
    move-exception v0

    .line 202
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 204
    throw v1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->getAlpnSelectedProtocol:Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;

    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-object v1

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->getAlpnSelectedProtocol:Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->getAlpnSelectedProtocol:Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 228
    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public log(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 257
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    .line 258
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 259
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 261
    :goto_1
    add-int/lit16 v3, v2, 0xfa0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 262
    const-string v4, "OkHttp"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-lt v3, v0, :cond_2

    .line 257
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 259
    goto :goto_1

    .line 266
    :cond_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public tagSocket(Ljava/net/Socket;)V
    .locals 4
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->trafficStatsTagSocket:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 235
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->trafficStatsTagSocket:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 238
    :catch_1
    move-exception v0

    .line 239
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public untagSocket(Ljava/net/Socket;)V
    .locals 4
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->trafficStatsUntagSocket:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 247
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;->trafficStatsUntagSocket:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 250
    :catch_1
    move-exception v0

    .line 251
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
