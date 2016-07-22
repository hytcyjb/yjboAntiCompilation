.class final Lcom/didi/beatles/common/BtsCommonListeners$3;
.super Ljava/lang/Object;
.source "BtsCommonListeners.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/common/BtsCommonListeners;->getPriceDetailListener(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$requestCode:I

.field final synthetic val$role:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(ILandroid/app/Activity;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    iput p1, p0, Lcom/didi/beatles/common/BtsCommonListeners$3;->val$role:I

    iput-object p2, p0, Lcom/didi/beatles/common/BtsCommonListeners$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/didi/beatles/common/BtsCommonListeners$3;->val$url:Ljava/lang/String;

    iput p4, p0, Lcom/didi/beatles/common/BtsCommonListeners$3;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 176
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget v0, p0, Lcom/didi/beatles/common/BtsCommonListeners$3;->val$role:I

    if-nez v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/didi/beatles/common/BtsCommonListeners$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/didi/beatles/common/BtsCommonListeners$3;->val$url:Ljava/lang/String;

    iget v2, p0, Lcom/didi/beatles/common/BtsCommonListeners$3;->val$requestCode:I

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/ui/activity/h5/BtsH5Utils;->startSimpleWeb(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 180
    :cond_2
    iget v0, p0, Lcom/didi/beatles/common/BtsCommonListeners$3;->val$role:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/didi/beatles/common/BtsCommonListeners$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/didi/beatles/common/BtsCommonListeners$3;->val$url:Ljava/lang/String;

    iget v2, p0, Lcom/didi/beatles/common/BtsCommonListeners$3;->val$requestCode:I

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/ui/activity/h5/BtsH5Utils;->startSimpleWeb(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method
