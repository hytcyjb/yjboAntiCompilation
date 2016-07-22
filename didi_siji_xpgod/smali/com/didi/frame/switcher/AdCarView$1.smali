.class Lcom/didi/frame/switcher/AdCarView$1;
.super Ljava/lang/Object;
.source "AdCarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/switcher/AdCarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/switcher/AdCarView;


# direct methods
.method constructor <init>(Lcom/didi/frame/switcher/AdCarView;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/didi/frame/switcher/AdCarView$1;->this$0:Lcom/didi/frame/switcher/AdCarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/frame/switcher/AdCarView$1;->this$0:Lcom/didi/frame/switcher/AdCarView;

    #getter for: Lcom/didi/frame/switcher/AdCarView;->logtxt:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/frame/switcher/AdCarView;->access$000(Lcom/didi/frame/switcher/AdCarView;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->switchToByBusiness(Lcom/didi/frame/business/Business;)V

    .line 71
    invoke-static {}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->removePoupView()V

    .line 72
    return-void
.end method
