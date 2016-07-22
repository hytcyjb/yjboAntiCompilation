.class Lcom/didi/common/ui/fragment/SplashFragment$2;
.super Landroid/os/Handler;
.source "SplashFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/SplashFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/SplashFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/SplashFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/didi/common/ui/fragment/SplashFragment$2;->this$0:Lcom/didi/common/ui/fragment/SplashFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/SplashFragment$2;->this$0:Lcom/didi/common/ui/fragment/SplashFragment;

    #calls: Lcom/didi/common/ui/fragment/SplashFragment;->enterApp()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/SplashFragment;->access$200(Lcom/didi/common/ui/fragment/SplashFragment;)V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
