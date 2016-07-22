.class Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$1;
.super Ljava/lang/Object;
.source "DDriverInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$1;->this$0:Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 72
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 73
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$1;->this$0:Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->finish()V

    .line 74
    return-void
.end method
