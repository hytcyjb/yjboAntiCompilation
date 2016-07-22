.class final Lcom/tencent/bugly/proguard/p$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/p;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method
