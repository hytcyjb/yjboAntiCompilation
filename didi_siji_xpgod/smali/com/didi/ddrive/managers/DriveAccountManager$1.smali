.class Lcom/didi/ddrive/managers/DriveAccountManager$1;
.super Ljava/lang/Object;
.source "DriveAccountManager.java"

# interfaces
.implements Lcom/didi/common/listener/ThirdTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/DriveAccountManager;->userLogin(DDLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/DriveAccountManager;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/DriveAccountManager;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/didi/ddrive/managers/DriveAccountManager$1;->this$0:Lcom/didi/ddrive/managers/DriveAccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewThirdTokenFail()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public getNewThirdTokenSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "newToken"

    .prologue
    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/didi/ddrive/managers/DriveAccountManager$1;->this$0:Lcom/didi/ddrive/managers/DriveAccountManager;

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/DriveAccountManager;->reLogin()V

    .line 79
    :cond_0
    return-void
.end method
