.class Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$3;
.super Ljava/lang/Object;
.source "BtsRemarkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 102
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 103
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    #calls: Landroid/app/Activity;->finish()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->access$301(Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;)V

    .line 104
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$3;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    const v1, 0x7f040019

    const v2, 0x7f04001a

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->overridePendingTransition(II)V

    .line 105
    return-void
.end method
