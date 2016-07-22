.class Lcom/didi/common/ui/userinfo/ModifyUserDesFragment$2;
.super Ljava/lang/Object;
.source "ModifyUserDesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;

    #calls: Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->cancel()V
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->access$100(Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;)V

    .line 111
    return-void
.end method
