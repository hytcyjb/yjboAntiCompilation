.class Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$8;
.super Ljava/lang/Object;
.source "ActivityRealtimeFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->recoveryCheck(Lcom/didi/common/model/RecoveryConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;

.field final synthetic val$helper:Lcom/didi/common/helper/DialogHelper;


# direct methods
.method constructor <init>(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;Lcom/didi/common/helper/DialogHelper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$8;->this$0:Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;

    iput-object p2, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$8;->val$helper:Lcom/didi/common/helper/DialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public submit()V
    .locals 0

    .prologue
    .line 345
    return-void
.end method

.method public submitOnly()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$8;->val$helper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 340
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method
