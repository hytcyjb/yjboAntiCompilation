.class Lcom/zhihu/android/app/ui/activity/a$1;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/android/app/ui/activity/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zhihu/android/app/ui/activity/a;


# direct methods
.method constructor <init>(Lcom/zhihu/android/app/ui/activity/a;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/zhihu/android/app/ui/activity/a$1;->a:Lcom/zhihu/android/app/ui/activity/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 291
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 293
    :pswitch_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/a$1;->a:Lcom/zhihu/android/app/ui/activity/a;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/a;->m()V

    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x11111
        :pswitch_0
    .end packed-switch
.end method
