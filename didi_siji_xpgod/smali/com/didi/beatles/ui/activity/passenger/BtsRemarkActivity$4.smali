.class Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$4;
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
    .line 107
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 111
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 112
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->setResult(I)V

    .line 113
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsRemarkActivity;->finish()V

    .line 114
    return-void
.end method
