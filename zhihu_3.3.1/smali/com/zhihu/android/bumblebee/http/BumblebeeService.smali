.class public Lcom/zhihu/android/bumblebee/http/BumblebeeService;
.super Lcom/octo/android/robospice/b;
.source "BumblebeeService.java"

# interfaces
.implements Lcom/google/api/client/http/HttpRequestInitializer;


# static fields
.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/http/HttpRequestInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/google/api/client/json/JsonFactory;


# instance fields
.field protected final a:Lcom/google/api/client/http/HttpRequestFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zhihu/android/bumblebee/http/BumblebeeService;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/octo/android/robospice/b;-><init>()V

    .line 55
    invoke-static {}, Lcom/google/api/client/extensions/android/http/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/bumblebee/http/BumblebeeService;->a:Lcom/google/api/client/http/HttpRequestFactory;

    return-void
.end method

.method public static varargs a(Lcom/google/api/client/json/JsonFactory;[Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    sput-object p0, Lcom/zhihu/android/bumblebee/http/BumblebeeService;->c:Lcom/google/api/client/json/JsonFactory;

    .line 61
    sget-object v0, Lcom/zhihu/android/bumblebee/http/BumblebeeService;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    sget-object v0, Lcom/zhihu/android/bumblebee/http/BumblebeeService;->b:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 64
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;)Lcom/octo/android/robospice/persistence/b;
    .locals 5
    .parameter

    .prologue
    .line 80
    new-instance v0, Lcom/octo/android/robospice/persistence/b;

    invoke-direct {v0}, Lcom/octo/android/robospice/persistence/b;-><init>()V

    .line 82
    new-instance v1, Lcom/octo/android/robospice/persistence/b/a/a;

    invoke-direct {v1, p1}, Lcom/octo/android/robospice/persistence/b/a/a;-><init>(Landroid/app/Application;)V

    .line 83
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "bumblebee"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/octo/android/robospice/persistence/b/a/a;->a(Ljava/io/File;)V

    .line 85
    invoke-virtual {v0, v1}, Lcom/octo/android/robospice/persistence/b;->a(Lcom/octo/android/robospice/persistence/e;)V

    .line 87
    return-object v0
.end method

.method public a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octo/android/robospice/request/a",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->j()Lcom/octo/android/robospice/request/g;

    move-result-object v0

    instance-of v0, v0, Lcom/octo/android/robospice/request/a/a;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->j()Lcom/octo/android/robospice/request/g;

    move-result-object v0

    check-cast v0, Lcom/octo/android/robospice/request/a/a;

    iget-object v1, p0, Lcom/zhihu/android/bumblebee/http/BumblebeeService;->a:Lcom/google/api/client/http/HttpRequestFactory;

    invoke-virtual {v0, v1}, Lcom/octo/android/robospice/request/a/a;->a(Lcom/google/api/client/http/HttpRequestFactory;)V

    .line 98
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/octo/android/robospice/b;->a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V

    .line 99
    return-void
.end method

.method public f()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x5

    return v0
.end method

.method public initialize(Lcom/google/api/client/http/HttpRequest;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    new-instance v0, Lcom/google/api/client/json/JsonObjectParser;

    sget-object v1, Lcom/zhihu/android/bumblebee/http/BumblebeeService;->c:Lcom/google/api/client/json/JsonFactory;

    invoke-direct {v0, v1}, Lcom/google/api/client/json/JsonObjectParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setParser(Lcom/google/api/client/util/ObjectParser;)Lcom/google/api/client/http/HttpRequest;

    .line 71
    sget-object v0, Lcom/zhihu/android/bumblebee/http/BumblebeeService;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpRequestInitializer;

    .line 73
    invoke-interface {v0, p1}, Lcom/google/api/client/http/HttpRequestInitializer;->initialize(Lcom/google/api/client/http/HttpRequest;)V

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method
