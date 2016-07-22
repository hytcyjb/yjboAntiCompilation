.class public final Lcom/alipay/sdk/widget/a;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    return-void
.end method

.method private static synthetic a(Lcom/alipay/sdk/widget/a;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static synthetic a(Lcom/alipay/sdk/widget/a;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/sdk/widget/a;->c()V

    new-instance v0, Lcom/alipay/sdk/widget/b;

    invoke-direct {v0, p0, p1}, Lcom/alipay/sdk/widget/b;-><init>(Lcom/alipay/sdk/widget/a;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static synthetic b(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    const-string v0, "\u6b63\u5728\u52a0\u8f7d"

    invoke-virtual {p0}, Lcom/alipay/sdk/widget/a;->c()V

    new-instance v1, Lcom/alipay/sdk/widget/b;

    invoke-direct {v1, p0, v0}, Lcom/alipay/sdk/widget/b;-><init>(Lcom/alipay/sdk/widget/a;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    new-instance v0, Lcom/alipay/sdk/widget/c;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/widget/c;-><init>(Lcom/alipay/sdk/widget/a;)V

    iget-object v1, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
