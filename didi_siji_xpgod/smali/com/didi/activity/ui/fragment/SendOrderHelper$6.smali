.class Lcom/didi/activity/ui/fragment/SendOrderHelper$6;
.super Ljava/lang/Object;
.source "SendOrderHelper.java"

# interfaces
.implements Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/activity/ui/fragment/SendOrderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;


# direct methods
.method constructor <init>(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$6;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWXAppLowVersionInstalled()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$6;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    #calls: Lcom/didi/activity/ui/fragment/SendOrderHelper;->showWXLowVersionDialog()V
    invoke-static {v0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->access$700(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V

    .line 377
    return-void
.end method

.method public onWXAppSupported(Lcom/didi/car/model/CarPayParams;)V
    .locals 0
    .parameter "payParams"

    .prologue
    .line 381
    return-void
.end method

.method public onWXAppUnInstalled()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$6;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    #calls: Lcom/didi/activity/ui/fragment/SendOrderHelper;->showWXUnstalledDialog()V
    invoke-static {v0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->access$600(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V

    .line 372
    return-void
.end method
