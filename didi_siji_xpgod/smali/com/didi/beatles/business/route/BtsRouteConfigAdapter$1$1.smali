.class Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1$1;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsRouteConfigAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;->OnChanged(Lcom/didi/common/ui/component/SwitchBar;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/BtsBaseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1$1;->this$1:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "test"

    const-string v1, "\u4fdd\u5b58\u7ebf\u8def\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1$1;->this$1:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;

    iget-object v1, v0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;->val$route:Lcom/didi/beatles/model/route/BtsRoute;

    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1$1;->this$1:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;

    iget-object v0, v0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;->val$route:Lcom/didi/beatles/model/route/BtsRoute;

    iget-boolean v0, v0, Lcom/didi/beatles/model/route/BtsRoute;->recv_push_status:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/didi/beatles/model/route/BtsRoute;->recv_push_status:Z

    .line 140
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1$1;->this$1:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;

    iget-object v0, v0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;->val$holder:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;

    #getter for: Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->switchBar:Lcom/didi/common/ui/component/SwitchBar;
    invoke-static {v0}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->access$200(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)Lcom/didi/common/ui/component/SwitchBar;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1$1;->this$1:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;

    iget-object v1, v1, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;->val$route:Lcom/didi/beatles/model/route/BtsRoute;

    iget-boolean v1, v1, Lcom/didi/beatles/model/route/BtsRoute;->recv_push_status:Z

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SwitchBar;->setChecked(Z)V

    .line 141
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 142
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4fdd\u5b58\u7ebf\u8def\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/beatles/model/BtsBaseObject;->errmsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
