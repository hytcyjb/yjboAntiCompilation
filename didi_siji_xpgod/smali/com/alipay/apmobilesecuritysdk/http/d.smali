.class public Lcom/alipay/apmobilesecuritysdk/http/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/apmobilesecuritysdk/http/a;


# static fields
.field private static final c:Ljava/lang/String;

.field private static e:Lcom/alipay/apmobilesecuritysdk/http/d;

.field private static g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;


# instance fields
.field a:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

.field b:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

.field private d:Landroid/content/Context;

.field private f:Lcom/alipay/mobile/common/rpc/RpcFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/apmobilesecuritysdk/http/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/http/d;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/http/d;->e:Lcom/alipay/apmobilesecuritysdk/http/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/d;->a:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/d;->b:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/http/d;->d:Landroid/content/Context;

    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcFactory;

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/http/e;

    invoke-direct {v1, p0}, Lcom/alipay/apmobilesecuritysdk/http/e;-><init>(Lcom/alipay/apmobilesecuritysdk/http/d;)V

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;-><init>(Lcom/alipay/mobile/common/rpc/Config;)V

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/d;->f:Lcom/alipay/mobile/common/rpc/RpcFactory;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/d;->f:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->setContext(Landroid/content/Context;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/d;->f:Lcom/alipay/mobile/common/rpc/RpcFactory;

    const-class v1, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/d;->a:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/d;->f:Lcom/alipay/mobile/common/rpc/RpcFactory;

    const-class v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/d;->b:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p1, v0}, Lcom/alipay/apmobilesecuritysdk/c/a;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/http/d;
    .locals 2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/http/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/http/d;->e:Lcom/alipay/apmobilesecuritysdk/http/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/http/d;

    invoke-direct {v0, p0}, Lcom/alipay/apmobilesecuritysdk/http/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/http/d;->e:Lcom/alipay/apmobilesecuritysdk/http/d;

    :cond_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/http/d;->e:Lcom/alipay/apmobilesecuritysdk/http/d;
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

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/http/d;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .locals 0

    sput-object p0, Lcom/alipay/apmobilesecuritysdk/http/d;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .locals 3

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/d;->b:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/alipay/apmobilesecuritysdk/http/d;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/http/f;

    invoke-direct {v1, p0, p1}, Lcom/alipay/apmobilesecuritysdk/http/f;-><init>(Lcom/alipay/apmobilesecuritysdk/http/d;Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const v0, 0x493e0

    :goto_0
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/http/d;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

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

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/http/d;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/c/a;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/http/d;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

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
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/d;->a:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/http/d;->c:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/http/d;->a:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

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
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/http/d;->c:Ljava/lang/String;

    :goto_3
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/http/d;->d:Landroid/content/Context;

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
