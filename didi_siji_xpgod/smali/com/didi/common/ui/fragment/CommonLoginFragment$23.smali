.class Lcom/didi/common/ui/fragment/CommonLoginFragment$23;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "CommonLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$23;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$23;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    const/4 v1, 0x0

    #setter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->readSms:Z
    invoke-static {v0, v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$3802(Lcom/didi/common/ui/fragment/CommonLoginFragment;Z)Z

    .line 1143
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$23;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->getSms()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2400(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    .line 1144
    return-void
.end method

.method public submit()V
    .locals 2

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$23;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    const/4 v1, 0x1

    #setter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->readSms:Z
    invoke-static {v0, v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$3802(Lcom/didi/common/ui/fragment/CommonLoginFragment;Z)Z

    .line 1137
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$23;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->getSms()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2400(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    .line 1138
    return-void
.end method
