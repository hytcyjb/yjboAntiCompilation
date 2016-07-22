.class final Lcom/didi/beatles/common/BtsCommonListeners$1;
.super Ljava/lang/Object;
.source "BtsCommonListeners.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/common/BtsCommonListeners;->getComplainListener(Landroid/app/Activity;Ljava/lang/String;II)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$oid:Ljava/lang/String;

.field final synthetic val$role:I


# direct methods
.method constructor <init>(ILandroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/didi/beatles/common/BtsCommonListeners$1;->val$role:I

    iput-object p2, p0, Lcom/didi/beatles/common/BtsCommonListeners$1;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/didi/beatles/common/BtsCommonListeners$1;->val$oid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 49
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget v0, p0, Lcom/didi/beatles/common/BtsCommonListeners$1;->val$role:I

    if-nez v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/didi/beatles/common/BtsCommonListeners$1;->val$context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/didi/beatles/common/BtsCommonListeners$1;->val$oid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/beatles/ui/activity/h5/BtsH5Utils;->startH5PassangerComplain(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_2
    iget v0, p0, Lcom/didi/beatles/common/BtsCommonListeners$1;->val$role:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/didi/beatles/common/BtsCommonListeners$1;->val$context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/didi/beatles/common/BtsCommonListeners$1;->val$oid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/beatles/ui/activity/h5/BtsH5Utils;->startH5DriverComplain(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
