.class Lcom/didi/common/ui/fragment/MenuFragment$20;
.super Lcom/didi/common/net/ResponseListener;
.source "MenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/MenuFragment;->getActivityData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/ActivityData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/MenuFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/didi/common/ui/fragment/MenuFragment$20;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/didi/common/model/ActivityData;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 1013
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 1014
    sget-object v0, Lcom/didi/common/util/Constant;->actyData:Lcom/didi/common/model/ActivityData;

    iget-object v1, p1, Lcom/didi/common/model/ActivityData;->activityTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/ActivityData;->activityTitle:Ljava/lang/String;

    .line 1015
    sget-object v0, Lcom/didi/common/util/Constant;->actyData:Lcom/didi/common/model/ActivityData;

    iget v1, p1, Lcom/didi/common/model/ActivityData;->code:I

    iput v1, v0, Lcom/didi/common/model/ActivityData;->code:I

    .line 1016
    sget-object v0, Lcom/didi/common/util/Constant;->actyData:Lcom/didi/common/model/ActivityData;

    iget-object v1, p1, Lcom/didi/common/model/ActivityData;->picUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/ActivityData;->picUrl:Ljava/lang/String;

    .line 1017
    sget-object v0, Lcom/didi/common/util/Constant;->actyData:Lcom/didi/common/model/ActivityData;

    iget-object v1, p1, Lcom/didi/common/model/ActivityData;->redirect:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/ActivityData;->redirect:Ljava/lang/String;

    .line 1019
    sget-object v0, Lcom/didi/common/util/Constant;->actyData:Lcom/didi/common/model/ActivityData;

    iget-object v0, v0, Lcom/didi/common/model/ActivityData;->picUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$20;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->loadActivityImg()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$1700(Lcom/didi/common/ui/fragment/MenuFragment;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1010
    check-cast p1, Lcom/didi/common/model/ActivityData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/MenuFragment$20;->onSuccess(Lcom/didi/common/model/ActivityData;)V

    return-void
.end method
