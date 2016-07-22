.class Lcom/didi/sdk/module/PlatformLoginModule$1;
.super Lcom/didi/sdk/component/DHandler;
.source "PlatformLoginModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/sdk/module/PlatformLoginModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/sdk/module/PlatformLoginModule;


# direct methods
.method constructor <init>(Lcom/didi/sdk/module/PlatformLoginModule;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/didi/sdk/module/PlatformLoginModule$1;->this$0:Lcom/didi/sdk/module/PlatformLoginModule;

    invoke-direct {p0}, Lcom/didi/sdk/component/DHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleClientMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------->PlatformLoginModule handleClientMessage what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/didi/sdk/module/PlatformLoginModule$1;->this$0:Lcom/didi/sdk/module/PlatformLoginModule;

    iget v1, p1, Landroid/os/Message;->what:I

    #setter for: Lcom/didi/sdk/module/PlatformLoginModule;->mSdkMsgWhat:I
    invoke-static {v0, v1}, Lcom/didi/sdk/module/PlatformLoginModule;->access$002(Lcom/didi/sdk/module/PlatformLoginModule;I)I

    .line 44
    iget-object v0, p0, Lcom/didi/sdk/module/PlatformLoginModule$1;->this$0:Lcom/didi/sdk/module/PlatformLoginModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/sdk/module/PlatformLoginModule;->setLoginState(I)V

    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_0
    :pswitch_0
    return-void

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/didi/sdk/module/PlatformLoginModule$1;->this$0:Lcom/didi/sdk/module/PlatformLoginModule;

    #calls: Lcom/didi/sdk/module/PlatformLoginModule;->awakeDidiLoginPage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/didi/sdk/module/PlatformLoginModule;->access$100(Lcom/didi/sdk/module/PlatformLoginModule;Landroid/os/Message;)V

    goto :goto_0

    .line 52
    :pswitch_2
    iget-object v0, p0, Lcom/didi/sdk/module/PlatformLoginModule$1;->this$0:Lcom/didi/sdk/module/PlatformLoginModule;

    #calls: Lcom/didi/sdk/module/PlatformLoginModule;->getUserHistroy(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/didi/sdk/module/PlatformLoginModule;->access$200(Lcom/didi/sdk/module/PlatformLoginModule;Landroid/os/Message;)V

    goto :goto_0

    .line 56
    :pswitch_3
    iget-object v0, p0, Lcom/didi/sdk/module/PlatformLoginModule$1;->this$0:Lcom/didi/sdk/module/PlatformLoginModule;

    #calls: Lcom/didi/sdk/module/PlatformLoginModule;->userTicketCheck(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/didi/sdk/module/PlatformLoginModule;->access$300(Lcom/didi/sdk/module/PlatformLoginModule;Landroid/os/Message;)V

    goto :goto_0

    .line 60
    :pswitch_4
    iget-object v0, p0, Lcom/didi/sdk/module/PlatformLoginModule$1;->this$0:Lcom/didi/sdk/module/PlatformLoginModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/sdk/module/PlatformLoginModule;->setLoginState(I)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
