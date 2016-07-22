.class final Lcom/alipay/apmobilesecuritysdk/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/apmobilesecuritysdk/a/a;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/a/b;->a:Lcom/alipay/apmobilesecuritysdk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/c/a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/a/b;->a:Lcom/alipay/apmobilesecuritysdk/a/a;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Lcom/alipay/apmobilesecuritysdk/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/c/a;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
