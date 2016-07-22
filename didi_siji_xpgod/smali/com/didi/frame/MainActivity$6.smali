.class Lcom/didi/frame/MainActivity$6;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/MainActivity;


# direct methods
.method constructor <init>(Lcom/didi/frame/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/didi/frame/MainActivity$6;->this$0:Lcom/didi/frame/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 522
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 523
    iget-object v1, p0, Lcom/didi/frame/MainActivity$6;->this$0:Lcom/didi/frame/MainActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/didi/common/model/ExternalData;

    #calls: Lcom/didi/frame/MainActivity;->redirectToConfirmFragment(Lcom/didi/common/model/ExternalData;)V
    invoke-static {v1, v0}, Lcom/didi/frame/MainActivity;->access$100(Lcom/didi/frame/MainActivity;Lcom/didi/common/model/ExternalData;)V

    .line 524
    return-void
.end method
