.class Landroid/support/design/widget/Snackbar$4;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/support/design/widget/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$4;->a:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 430
    invoke-static {}, Landroid/support/design/widget/Snackbar;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/support/design/widget/Snackbar;->f()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/Snackbar$4;->a:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 431
    return-void
.end method

.method public a(I)V
    .locals 5
    .parameter

    .prologue
    .line 435
    invoke-static {}, Landroid/support/design/widget/Snackbar;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/support/design/widget/Snackbar;->f()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/design/widget/Snackbar$4;->a:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 436
    return-void
.end method
