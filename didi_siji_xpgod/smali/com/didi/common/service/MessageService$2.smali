.class Lcom/didi/common/service/MessageService$2;
.super Lcom/didi/common/net/ResponseListener;
.source "MessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/service/MessageService;->loadServerMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/ServerMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/service/MessageService;


# direct methods
.method constructor <init>(Lcom/didi/common/service/MessageService;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/didi/common/service/MessageService$2;->this$0:Lcom/didi/common/service/MessageService;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    check-cast p1, Lcom/didi/common/model/ServerMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/service/MessageService$2;->onFinish(Lcom/didi/common/model/ServerMessage;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/ServerMessage;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/common/service/MessageService$2;->this$0:Lcom/didi/common/service/MessageService;

    #calls: Lcom/didi/common/service/MessageService;->unlocate()V
    invoke-static {v0}, Lcom/didi/common/service/MessageService;->access$200(Lcom/didi/common/service/MessageService;)V

    .line 89
    iget-object v0, p0, Lcom/didi/common/service/MessageService$2;->this$0:Lcom/didi/common/service/MessageService;

    invoke-virtual {v0}, Lcom/didi/common/service/MessageService;->stopSelf()V

    .line 90
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    check-cast p1, Lcom/didi/common/model/ServerMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/service/MessageService$2;->onSuccess(Lcom/didi/common/model/ServerMessage;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/ServerMessage;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/common/service/MessageService$2;->this$0:Lcom/didi/common/service/MessageService;

    #calls: Lcom/didi/common/service/MessageService;->sendNotification(Lcom/didi/common/model/ServerMessage;)V
    invoke-static {v0, p1}, Lcom/didi/common/service/MessageService;->access$100(Lcom/didi/common/service/MessageService;Lcom/didi/common/model/ServerMessage;)V

    .line 84
    return-void
.end method
