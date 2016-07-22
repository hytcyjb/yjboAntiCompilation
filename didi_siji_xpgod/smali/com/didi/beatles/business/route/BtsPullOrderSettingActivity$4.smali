.class Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$4;
.super Ljava/lang/Object;
.source "BtsPullOrderSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 182
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$4;->this$0:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 186
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$4;->this$0:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$4;->this$0:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;
    invoke-static {v1}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->access$300(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)Lcom/didi/beatles/model/role/BtsRoleSetting;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->startActivity(Landroid/app/Activity;Lcom/didi/beatles/model/role/BtsRoleSetting;)V

    .line 190
    :cond_0
    return-void
.end method
