.class Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$6;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsPullOrderSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->getResponseListener()Lcom/didi/beatles/net/BtsResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/role/BtsRoleSetting;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$6;->this$0:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 251
    check-cast p1, Lcom/didi/beatles/model/role/BtsRoleSetting;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$6;->onFinish(Lcom/didi/beatles/model/role/BtsRoleSetting;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/role/BtsRoleSetting;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$6;->this$0:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;

    #calls: Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->resultSetProcess(Lcom/didi/beatles/model/role/BtsRoleSetting;)V
    invoke-static {v0, p1}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->access$400(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;Lcom/didi/beatles/model/role/BtsRoleSetting;)V

    .line 256
    return-void
.end method
