.class Lcom/didi/frame/recovery/RecoveryDDrive$2;
.super Ljava/lang/Object;
.source "RecoveryDDrive.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/recovery/RecoveryDDrive;->rediectToResendFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/recovery/RecoveryDDrive;


# direct methods
.method constructor <init>(Lcom/didi/frame/recovery/RecoveryDDrive;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryDDrive$2;->this$0:Lcom/didi/frame/recovery/RecoveryDDrive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public submit()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public submitOnly()V
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 168
    const-string v0, "morning"

    const-string v1, "submit is called"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method
