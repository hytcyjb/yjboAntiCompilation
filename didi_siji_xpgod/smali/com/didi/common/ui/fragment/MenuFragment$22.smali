.class Lcom/didi/common/ui/fragment/MenuFragment$22;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/MenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/MenuFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/didi/common/ui/fragment/MenuFragment$22;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1075
    sget-object v2, Lcom/didi/common/util/Constant;->actyData:Lcom/didi/common/model/ActivityData;

    iget-object v2, v2, Lcom/didi/common/model/ActivityData;->picUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1088
    :goto_0
    return-void

    .line 1078
    :cond_0
    const-string v2, "menu_banner_click"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1079
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/didi/common/ui/webview/WebViewModel;-><init>(Z)V

    .line 1080
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    sget-object v2, Lcom/didi/common/util/Constant;->actyData:Lcom/didi/common/model/ActivityData;

    iget-object v2, v2, Lcom/didi/common/model/ActivityData;->activityTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 1081
    sget-object v2, Lcom/didi/common/util/Constant;->actyData:Lcom/didi/common/model/ActivityData;

    iget-object v2, v2, Lcom/didi/common/model/ActivityData;->redirect:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1083
    const-string v2, "menu_banner"

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    .line 1084
    const v2, 0x7f0b0594

    iput v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->rightTextResId:I

    .line 1085
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/common/ui/fragment/MenuFragment$22;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v2}, Lcom/didi/common/ui/fragment/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1086
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1087
    iget-object v2, p0, Lcom/didi/common/ui/fragment/MenuFragment$22;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v2, v0}, Lcom/didi/common/ui/fragment/MenuFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
