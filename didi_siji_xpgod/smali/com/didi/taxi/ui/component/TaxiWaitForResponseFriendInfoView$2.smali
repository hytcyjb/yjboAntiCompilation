.class Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView$2;
.super Ljava/lang/Object;
.source "TaxiWaitForResponseFriendInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->showDrawerDelay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->drawerView:Lcom/didi/common/ui/component/DrawerView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->drawerView:Lcom/didi/common/ui/component/DrawerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->drawerView:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->open()V

    .line 137
    :cond_0
    return-void
.end method
