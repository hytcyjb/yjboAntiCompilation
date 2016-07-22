.class Lcom/avos/avoscloud/okhttp/internal/Platform$JdkWithJettyBootPlatform;
.super Lcom/avos/avoscloud/okhttp/internal/Platform;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JdkWithJettyBootPlatform"
.end annotation


# instance fields
.field private final clientProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final getMethod:Ljava/lang/reflect/Method;

.field private final putMethod:Ljava/lang/reflect/Method;

.field private final removeMethod:Ljava/lang/reflect/Method;

.field private final serverProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/Platform;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$JdkWithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    .line 282
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$JdkWithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    .line 283
    iput-object p3, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$JdkWithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;

    .line 284
    iput-object p4, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$JdkWithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    .line 285
    iput-object p5, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$JdkWithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    .line 286
    return-void
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .locals 4
    .parameter

    .prologue
    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$JdkWithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 311
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 308
    :catch_1
    move-exception v0

    goto :goto_0
.end method

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
    const/4 v0, 0x0

    .line 290
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 291
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 292
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/Protocol;

    .line 293
    sget-object v4, Lcom/avos/avoscloud/okhttp/Protocol;->HTTP_1_0:Lcom/avos/avoscloud/okhttp/Protocol;

    if-ne v0, v4, :cond_0

    .line 291
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 297
    :cond_1
    :try_start_0
    const-class v0, Lcom/avos/avoscloud/okhttp/internal/Platform;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$JdkWithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$JdkWithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    aput-object v4, v1, v3

    new-instance v3, Lcom/avos/avoscloud/okhttp/internal/Platform$JettyNegoProvider;

    invoke-direct {v3, v2}, Lcom/avos/avoscloud/okhttp/internal/Platform$JettyNegoProvider;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$JdkWithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    :goto_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 300
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/Platform$JdkWithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/Platform$JettyNegoProvider;

    .line 317
    #getter for: Lcom/avos/avoscloud/okhttp/internal/Platform$JettyNegoProvider;->unsupported:Z
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Platform$JettyNegoProvider;->access$000(Lcom/avos/avoscloud/okhttp/internal/Platform$JettyNegoProvider;)Z

    move-result v2

    if-nez v2, :cond_0

    #getter for: Lcom/avos/avoscloud/okhttp/internal/Platform$JettyNegoProvider;->selected:Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Platform$JettyNegoProvider;->access$100(Lcom/avos/avoscloud/okhttp/internal/Platform$JettyNegoProvider;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 318
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?"

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 322
    :goto_0
    return-object v1

    :cond_0
    #getter for: Lcom/avos/avoscloud/okhttp/internal/Platform$JettyNegoProvider;->unsupported:Z
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Platform$JettyNegoProvider;->access$000(Lcom/avos/avoscloud/okhttp/internal/Platform$JettyNegoProvider;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    #getter for: Lcom/avos/avoscloud/okhttp/internal/Platform$JettyNegoProvider;->selected:Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Platform$JettyNegoProvider;->access$100(Lcom/avos/avoscloud/okhttp/internal/Platform$JettyNegoProvider;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    :goto_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 323
    :catch_1
    move-exception v0

    goto :goto_2
.end method
