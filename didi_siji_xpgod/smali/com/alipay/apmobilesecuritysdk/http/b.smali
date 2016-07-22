.class public Lcom/alipay/apmobilesecuritysdk/http/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/apmobilesecuritysdk/http/a;


# static fields
.field private static final c:Ljava/lang/String;

.field private static f:Lcom/alipay/apmobilesecuritysdk/http/b;

.field private static g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;


# instance fields
.field a:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

.field b:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

.field private d:Landroid/content/Context;

.field private e:Lcom/alipay/android/phone/mrpc/core/RpcClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/apmobilesecuritysdk/http/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/http/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/http/b;->f:Lcom/alipay/apmobilesecuritysdk/http/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/b;->e:Lcom/alipay/android/phone/mrpc/core/RpcClient;

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/b;->a:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/b;->b:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/http/b;->d:Landroid/content/Context;

    :try_start_0
    new-instance v1, Lcom/alipay/android/phone/mrpc/core/RpcParams;

    invoke-direct {v1}, Lcom/alipay/android/phone/mrpc/core/RpcParams;-><init>()V

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/b/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mrpc/core/RpcParams;->setGwUrl(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/b;->e:Lcom/alipay/android/phone/mrpc/core/RpcClient;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/b;->e:Lcom/alipay/android/phone/mrpc/core/RpcClient;

    const-class v2, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mrpc/core/RpcClient;->getRpcProxy(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/RpcParams;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/b;->a:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/b;->e:Lcom/alipay/android/phone/mrpc/core/RpcClient;

    const-class v2, Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mrpc/core/RpcClient;->getRpcProxy(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/RpcParams;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/b;->b:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p1, v0}, Lcom/alipay/apmobilesecuritysdk/c/a;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/http/b;
    .locals 2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/http/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/http/b;->f:Lcom/alipay/apmobilesecuritysdk/http/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/http/b;

    invoke-direct {v0, p0}, Lcom/alipay/apmobilesecuritysdk/http/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/http/b;->f:Lcom/alipay/apmobilesecuritysdk/http/b;

    :cond_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/http/b;->f:Lcom/alipay/apmobilesecuritysdk/http/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a()Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .locals 1

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/http/b;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .locals 0

    sput-object p0, Lcom/alipay/apmobilesecuritysdk/http/b;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .locals 3

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/b;->b:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/alipay/apmobilesecuritysdk/http/b;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/http/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/apmobilesecuritysdk/http/c;-><init>(Lcom/alipay/apmobilesecuritysdk/http/b;Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const v0, 0x493e0

    :goto_0
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/http/b;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    if-nez v1, :cond_0

    if-ltz v0, :cond_0

    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x32

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/http/b;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/c/a;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/http/b;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/e/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/b;->a:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/http/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/http/b;->a:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;->logCollect(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/e/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "success"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_2
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/http/b;->c:Ljava/lang/String;

    :goto_3
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/http/b;->d:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/alipay/apmobilesecuritysdk/c/a;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_1
    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_3
.end method
