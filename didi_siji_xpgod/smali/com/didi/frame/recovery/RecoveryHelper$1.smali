.class Lcom/didi/frame/recovery/RecoveryHelper$1;
.super Landroid/os/Handler;
.source "RecoveryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/recovery/RecoveryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/recovery/RecoveryHelper;


# direct methods
.method constructor <init>(Lcom/didi/frame/recovery/RecoveryHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryHelper$1;->this$0:Lcom/didi/frame/recovery/RecoveryHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    .line 61
    .local v0, what:I
    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 63
    :pswitch_0
    invoke-static {}, Lcom/didi/frame/recovery/RecoveryHelper;->access$000()Lcom/didi/frame/recovery/RecoveryHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/recovery/RecoveryHelper;->doRecovery()V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
