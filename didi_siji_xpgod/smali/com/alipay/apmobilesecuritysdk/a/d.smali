.class public final Lcom/alipay/apmobilesecuritysdk/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/apmobilesecuritysdk/a/e;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/a/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/a/e;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/a/e;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/a/d;->d:Ljava/lang/String;

    return-object v0
.end method
