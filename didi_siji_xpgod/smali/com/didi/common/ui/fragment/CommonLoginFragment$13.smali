.class Lcom/didi/common/ui/fragment/CommonLoginFragment$13;
.super Ljava/lang/Object;
.source "CommonLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 661
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$13;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$13;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/TextView;->setEnabled(Z)V

    .line 666
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$13;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->login()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    .line 667
    return-void
.end method
