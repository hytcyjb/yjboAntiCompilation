.class Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2;
.super Ljava/lang/Object;
.source "BtsPullOrderSettingActivity.java"

# interfaces
.implements Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2;->this$0:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnChanged(Lcom/didi/common/ui/component/SwitchBar;Z)V
    .locals 2
    .parameter "wiperSwitch"
    .parameter "checkState"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2;->this$0:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;
    invoke-static {v0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->access$300(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)Lcom/didi/beatles/model/role/BtsRoleSetting;

    move-result-object v0

    iput-boolean p2, v0, Lcom/didi/beatles/model/role/BtsRoleSetting;->new_order_alert:Z

    .line 145
    if-nez p2, :cond_0

    .line 146
    const-string v0, "pbdxpushset02_ck"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2;->this$0:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;
    invoke-static {v0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->access$300(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)Lcom/didi/beatles/model/role/BtsRoleSetting;

    move-result-object v0

    new-instance v1, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2$1;-><init>(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2;Lcom/didi/common/ui/component/SwitchBar;)V

    invoke-static {v0, v1}, Lcom/didi/beatles/net/BtsRequest;->saveRoleSetting(Lcom/didi/beatles/model/role/BtsRoleSetting;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 157
    return-void
.end method
