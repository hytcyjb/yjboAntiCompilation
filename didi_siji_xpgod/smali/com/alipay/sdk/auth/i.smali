.class final Lcom/alipay/sdk/auth/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/net/d;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alipay/sdk/data/e;

.field final synthetic d:Lcom/alipay/sdk/auth/APAuthInfo;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/net/d;Landroid/app/Activity;Lcom/alipay/sdk/data/e;Lcom/alipay/sdk/auth/APAuthInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/auth/i;->a:Lcom/alipay/sdk/net/d;

    iput-object p2, p0, Lcom/alipay/sdk/auth/i;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/sdk/auth/i;->c:Lcom/alipay/sdk/data/e;

    iput-object p4, p0, Lcom/alipay/sdk/auth/i;->d:Lcom/alipay/sdk/auth/APAuthInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/auth/i;->a:Lcom/alipay/sdk/net/d;

    iget-object v3, p0, Lcom/alipay/sdk/auth/i;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/alipay/sdk/auth/i;->c:Lcom/alipay/sdk/data/e;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/alipay/sdk/net/d;->a(Landroid/content/Context;Lcom/alipay/sdk/data/e;Z)Lcom/alipay/sdk/protocol/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/widget/a;->c()V

    invoke-static {}, Lcom/alipay/sdk/auth/h;->b()Lcom/alipay/sdk/widget/a;

    :cond_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/sdk/auth/i;->d:Lcom/alipay/sdk/auth/APAuthInfo;

    invoke-virtual {v1}, Lcom/alipay/sdk/auth/APAuthInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?resultCode=202"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/auth/h;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/sdk/auth/i;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/auth/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/auth/h;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lcom/alipay/sdk/exception/NetErrorException;->printStackTrace()V

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/alipay/sdk/protocol/c;->c:Lorg/json/JSONObject;

    const-string v2, "form"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "onload"

    invoke-static {v0, v2}, Lcom/alipay/sdk/protocol/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/sdk/protocol/b;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/protocol/a;->a(Lcom/alipay/sdk/protocol/b;)[Lcom/alipay/sdk/protocol/a;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_3

    aget-object v1, v2, v0

    sget-object v4, Lcom/alipay/sdk/protocol/a;->a:Lcom/alipay/sdk/protocol/a;

    if-ne v1, v4, :cond_4

    invoke-virtual {v1}, Lcom/alipay/sdk/protocol/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/util/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/alipay/sdk/auth/h;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    invoke-static {}, Lcom/alipay/sdk/auth/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/sdk/auth/i;->d:Lcom/alipay/sdk/auth/APAuthInfo;

    invoke-virtual {v1}, Lcom/alipay/sdk/auth/APAuthInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?resultCode=202"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/auth/h;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/sdk/auth/i;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/auth/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/auth/h;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/sdk/auth/i;->b:Landroid/app/Activity;

    const-class v2, Lcom/alipay/sdk/auth/AuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "params"

    invoke-static {}, Lcom/alipay/sdk/auth/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "redirectUri"

    iget-object v2, p0, Lcom/alipay/sdk/auth/i;->d:Lcom/alipay/sdk/auth/APAuthInfo;

    invoke-virtual {v2}, Lcom/alipay/sdk/auth/APAuthInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/sdk/auth/i;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/widget/a;->c()V

    :cond_6
    throw v0
.end method
