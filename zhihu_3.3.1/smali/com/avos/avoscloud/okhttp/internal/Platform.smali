.class public Lcom/avos/avoscloud/okhttp/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/okhttp/internal/Platform$JettyNegoProvider;,
        Lcom/avos/avoscloud/okhttp/internal/Platform$JdkWithJettyBootPlatform;,
        Lcom/avos/avoscloud/okhttp/internal/Platform$Android;
    }
.end annotation


# static fields
.field private static final PLATFORM:Lcom/avos/avoscloud/okhttp/internal/Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/Platform;->findPlatform()Lcom/avos/avoscloud/okhttp/internal/Platform;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/Platform;->PLATFORM:Lcom/avos/avoscloud/okhttp/internal/Platform;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    return-void
.end method

.method static concatLengthPrefixed(Ljava/util/List;)[B
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/Protocol;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 383
    new-instance v2, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v2}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    .line 384
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 385
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/Protocol;

    .line 386
    sget-object v4, Lcom/avos/avoscloud/okhttp/Protocol;->HTTP_1_0:Lcom/avos/avoscloud/okhttp/Protocol;

    if-ne v0, v4, :cond_0

    .line 384
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 388
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/Buffer;

    goto :goto_1

    .line 390
    :cond_1
    invoke-virtual {v2}, Lcom/avos/avoscloud/okio/Buffer;->readByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static findPlatform()Lcom/avos/avoscloud/okhttp/internal/Platform;
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 111
    :try_start_0
    const-string v0, "com.android.org.conscrypt.OpenSSLSocketImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    :try_start_1
    new-instance v1, Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;

    const/4 v0, 0x0

    const-string v2, "setUseSessionTickets"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-direct {v1, v0, v2, v4}, Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 119
    new-instance v2, Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;

    const/4 v0, 0x0

    const-string v4, "setHostname"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-direct {v2, v0, v4, v5}, Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    :try_start_2
    const-string v0, "android.net.TrafficStats"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 129
    const-string v4, "tagSocket"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/net/Socket;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v6

    .line 130
    :try_start_3
    const-string v4, "untagSocket"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/net/Socket;

    aput-object v8, v5, v7

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object v5

    .line 134
    :try_start_4
    const-string v0, "android.net.Network"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 135
    new-instance v4, Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;

    const-class v0, [B

    const-string v7, "getAlpnSelectedProtocol"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-direct {v4, v0, v7, v8}, Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_9

    .line 136
    :try_start_5
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;

    const/4 v7, 0x0

    const-string v8, "setAlpnProtocols"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, [B

    aput-object v11, v9, v10

    invoke-direct {v0, v7, v8, v9}, Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_a

    move-object v3, v4

    :goto_1
    move-object v4, v5

    move-object v5, v3

    move-object v3, v6

    move-object v6, v0

    .line 142
    :goto_2
    :try_start_6
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;

    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/okhttp/internal/Platform$Android;-><init>(Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;Lcom/avos/avoscloud/okhttp/internal/OptionalMethod;)V

    .line 163
    :goto_3
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 114
    const-string v0, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 144
    :catch_1
    move-exception v0

    .line 150
    :try_start_7
    const-string v0, "org.eclipse.jetty.alpn.ALPN"

    .line 151
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$Provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "$ClientProvider"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$ServerProvider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 155
    const-string v0, "put"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v2, v6

    const/4 v6, 0x1

    aput-object v1, v2, v6

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 156
    const-string v0, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v2, v6

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 157
    const-string v0, "remove"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljavax/net/ssl/SSLSocket;

    aput-object v8, v6, v7

    invoke-virtual {v3, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 158
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/Platform$JdkWithJettyBootPlatform;

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/okhttp/internal/Platform$JdkWithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_3

    .line 160
    :catch_2
    move-exception v0

    .line 163
    :goto_4
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/Platform;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/internal/Platform;-><init>()V

    goto/16 :goto_3

    .line 137
    :catch_3
    move-exception v0

    move-object v0, v3

    :goto_5
    move-object v12, v3

    move-object v3, v0

    move-object v0, v12

    goto/16 :goto_1

    .line 139
    :catch_4
    move-exception v0

    move-object v0, v3

    :goto_6
    move-object v4, v3

    move-object v5, v0

    move-object v0, v3

    :goto_7
    move-object v6, v3

    move-object v3, v5

    move-object v5, v0

    goto/16 :goto_2

    .line 160
    :catch_5
    move-exception v0

    goto :goto_4

    .line 139
    :catch_6
    move-exception v0

    move-object v0, v6

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v0, v3

    move-object v4, v3

    move-object v5, v3

    goto :goto_7

    :catch_8
    move-exception v0

    move-object v0, v3

    move-object v4, v3

    move-object v5, v6

    goto :goto_7

    :catch_9
    move-exception v0

    move-object v0, v3

    move-object v4, v5

    move-object v5, v6

    goto :goto_7

    :catch_a
    move-exception v0

    move-object v0, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_7

    .line 137
    :catch_b
    move-exception v0

    move-object v0, v4

    goto :goto_5
.end method

.method public static get()Lcom/avos/avoscloud/okhttp/internal/Platform;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/Platform;->PLATFORM:Lcom/avos/avoscloud/okhttp/internal/Platform;

    return-object v0
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    return-void
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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
    .line 83
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 100
    return-void
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "OkHttp"

    return-object v0
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public logW(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public tagSocket(Ljava/net/Socket;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    return-void
.end method

.method public untagSocket(Ljava/net/Socket;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    return-void
.end method
