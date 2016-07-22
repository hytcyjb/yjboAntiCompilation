.class final Lcom/alipay/apmobilesecuritysdk/http/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/rpc/Config;


# instance fields
.field final synthetic a:Lcom/alipay/apmobilesecuritysdk/http/d;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/http/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/http/e;->a:Lcom/alipay/apmobilesecuritysdk/http/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTransport()Lcom/alipay/mobile/common/transport/Transport;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string v1, "com.alipay.mobile.framework.service.common.HttpTransportSevice"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/Transport;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/b/a;->a:Ljava/lang/String;

    return-object v0
.end method
