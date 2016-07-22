.class final Lcom/alipay/sdk/authjs/e;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/authjs/a;

.field final synthetic b:Lcom/alipay/sdk/authjs/c;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/authjs/c;Lcom/alipay/sdk/authjs/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/authjs/e;->b:Lcom/alipay/sdk/authjs/c;

    iput-object p2, p0, Lcom/alipay/sdk/authjs/e;->a:Lcom/alipay/sdk/authjs/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "toastCallBack"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/alipay/sdk/authjs/a;

    const-string v2, "callback"

    invoke-direct {v1, v2}, Lcom/alipay/sdk/authjs/a;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/sdk/authjs/e;->a:Lcom/alipay/sdk/authjs/a;

    iget-object v2, v2, Lcom/alipay/sdk/authjs/a;->i:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/sdk/authjs/a;->i:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/sdk/authjs/a;->m:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/alipay/sdk/authjs/e;->b:Lcom/alipay/sdk/authjs/c;

    iget-object v0, v0, Lcom/alipay/sdk/authjs/c;->a:Lcom/alipay/sdk/authjs/b;

    invoke-interface {v0, v1}, Lcom/alipay/sdk/authjs/b;->a(Lcom/alipay/sdk/authjs/a;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
