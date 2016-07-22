.class Lcom/didi/common/ui/userinfo/UserInfoFragment$1;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/userinfo/UserInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$1;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$1;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #calls: Lcom/didi/common/ui/userinfo/UserInfoFragment;->back()V
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$000(Lcom/didi/common/ui/userinfo/UserInfoFragment;)V

    .line 263
    return-void
.end method
