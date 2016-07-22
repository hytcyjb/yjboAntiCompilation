.class Lcom/didi/frame/remark/RemarkTriggerView$2;
.super Ljava/lang/Object;
.source "RemarkTriggerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/remark/RemarkTriggerView;->getDefaultListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/remark/RemarkTriggerView;


# direct methods
.method constructor <init>(Lcom/didi/frame/remark/RemarkTriggerView;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/didi/frame/remark/RemarkTriggerView$2;->this$0:Lcom/didi/frame/remark/RemarkTriggerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 60
    const-string v1, "f_remark_click"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->removePoupView()V

    .line 62
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/didi/frame/remark/RemarkTriggerView$2;->this$0:Lcom/didi/frame/remark/RemarkTriggerView;

    invoke-virtual {v1}, Lcom/didi/frame/remark/RemarkTriggerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/didi/common/ui/remark/RemarkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/frame/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method
