.class Lcom/didi/activity/ui/fragment/SendOrderHelper$5;
.super Ljava/lang/Object;
.source "SendOrderHelper.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


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
    .line 341
    iput-object p1, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$5;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$5;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    #getter for: Lcom/didi/activity/ui/fragment/SendOrderHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->access$100(Lcom/didi/activity/ui/fragment/SendOrderHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->weixinPayCheck(Landroid/content/Context;)V

    .line 352
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method
