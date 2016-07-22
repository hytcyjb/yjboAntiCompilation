.class Lcom/didi/frame/SplashActivity$3;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/SplashActivity;


# direct methods
.method constructor <init>(Lcom/didi/frame/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/didi/frame/SplashActivity$3;->this$0:Lcom/didi/frame/SplashActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/didi/frame/SplashActivity$3;->this$0:Lcom/didi/frame/SplashActivity;

    #calls: Lcom/didi/frame/SplashActivity;->enterApp()V
    invoke-static {v0}, Lcom/didi/frame/SplashActivity;->access$300(Lcom/didi/frame/SplashActivity;)V

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
