.class Lcom/didi/common/ui/userinfo/ModifyNickNameFragment$1;
.super Ljava/lang/Object;
.source "ModifyNickNameFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment$1;->this$0:Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment$1;->this$0:Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;

    #calls: Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->cancel()V
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->access$000(Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;)V

    .line 80
    return-void
.end method
