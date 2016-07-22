.class Lcom/didi/common/ui/fragment/CommonLoginFragment$16$1;
.super Ljava/lang/Object;
.source "CommonLoginFragment.java"

# interfaces
.implements Lcom/didi/common/listener/ThirdTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonLoginFragment$16;->onSuccess(Lcom/didi/common/model/CommonToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/fragment/CommonLoginFragment$16;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonLoginFragment$16;)V
    .locals 0
    .parameter

    .prologue
    .line 805
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$16$1;->this$1:Lcom/didi/common/ui/fragment/CommonLoginFragment$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewThirdTokenFail()V
    .locals 0

    .prologue
    .line 813
    return-void
.end method

.method public getNewThirdTokenSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "newToken"

    .prologue
    .line 809
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$16$1;->this$1:Lcom/didi/common/ui/fragment/CommonLoginFragment$16;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/CommonLoginFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1000(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/DriveAccountManager;->login(Ljava/lang/String;)V

    .line 810
    return-void
.end method
