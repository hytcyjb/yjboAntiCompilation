.class final Lcom/alipay/sdk/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic c:Ljava/lang/CharSequence;

.field final synthetic d:Lcom/alipay/sdk/widget/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/a;Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/sdk/widget/b;->d:Lcom/alipay/sdk/widget/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/widget/b;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/widget/b;->b:Landroid/content/DialogInterface$OnCancelListener;

    iput-object p2, p0, Lcom/alipay/sdk/widget/b;->c:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->d:Lcom/alipay/sdk/widget/a;

    iget-object v0, v0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->d:Lcom/alipay/sdk/widget/a;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/alipay/sdk/widget/b;->d:Lcom/alipay/sdk/widget/a;

    iget-object v2, v2, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->d:Lcom/alipay/sdk/widget/a;

    iget-object v0, v0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    iget-boolean v1, p0, Lcom/alipay/sdk/widget/b;->a:Z

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->d:Lcom/alipay/sdk/widget/a;

    iget-object v0, v0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/alipay/sdk/widget/b;->b:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->d:Lcom/alipay/sdk/widget/a;

    iget-object v0, v0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/alipay/sdk/widget/b;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->d:Lcom/alipay/sdk/widget/a;

    iget-object v0, v0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->d:Lcom/alipay/sdk/widget/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    goto :goto_0
.end method
