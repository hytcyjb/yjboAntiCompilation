.class Lcom/didi/common/ui/remark/RemarkActivity$3;
.super Ljava/lang/Object;
.source "RemarkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/remark/RemarkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/remark/RemarkActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/remark/RemarkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/didi/common/ui/remark/RemarkActivity$3;->this$0:Lcom/didi/common/ui/remark/RemarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 112
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 113
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity$3;->this$0:Lcom/didi/common/ui/remark/RemarkActivity;

    #calls: Landroid/app/Activity;->finish()V
    invoke-static {v0}, Lcom/didi/common/ui/remark/RemarkActivity;->access$301(Lcom/didi/common/ui/remark/RemarkActivity;)V

    .line 114
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkActivity$3;->this$0:Lcom/didi/common/ui/remark/RemarkActivity;

    const v1, 0x7f040019

    const v2, 0x7f04001a

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/remark/RemarkActivity;->overridePendingTransition(II)V

    .line 116
    return-void
.end method
